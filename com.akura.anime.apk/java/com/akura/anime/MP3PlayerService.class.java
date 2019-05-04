/*
 * Decompiled with CFR 0_131.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.NotificationManager
 *  android.app.PendingIntent
 *  android.app.Service
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.IBinder
 *  android.telephony.PhoneStateListener
 *  android.telephony.TelephonyManager
 *  com.akura.stream.MP3Player
 *  com.akura.stream.MP3PlayerCallback
 */
package com.akura.anime;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import com.akura.anime.MP3PlayerApp;
import com.akura.anime.MP3Prefs;
import com.akura.anime.activities.MP3Main;
import com.akura.anime.database.MP3Playlist;
import com.akura.anime.database.MP3Track;
import com.akura.stream.MP3Player;
import com.akura.stream.MP3PlayerCallback;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

public class MP3PlayerService
extends Service {
    public static final String TAG = "MP3PlayerService";
    public static boolean isPaused;
    public static boolean isStartedPlay;
    public static int streamMode;
    private static String streamTitle;
    private static String streamUrl;
    private MP3PlayerCallback callback;
    private Handler mHandler = new Handler();
    private Timer mTimer = null;
    private MP3Player player;
    private Runnable runanable;
    private TelephonyManager telephonyManager;

    static {
        isStartedPlay = false;
        isPaused = false;
        streamUrl = "";
        streamTitle = "";
        streamMode = 0;
    }

    public static void cancelNotification(Context context) {
        ((NotificationManager)context.getSystemService("notification")).cancel(1214);
    }

    private void pause() {
        isPaused = true;
        this.pausePlayer();
        this.createNotificationPlay(this.getResources().getString(2131099712));
        this.stopTimer();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void pausePlayer() {
        try {
            if (this.player != null) {
                this.player.pause();
            }
        }
        catch (Exception exception) {}
        isStartedPlay = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void repeat(int n) {
        if (this.player == null) {
            return;
        }
        if (n == 2) {
            this.player.loop(MP3PlayerApp.mHomeRepeat);
        } else {
            this.player.loop(MP3PlayerApp.mSongsRepeat);
        }
        long l = (n == 2 ? MP3PlayerApp.mSongsRepeat : MP3PlayerApp.mSongsRepeat) ? 1L : 0L;
        this.broadcast("com.rock.mp3player.intent.repeat", "", l);
    }

    private void resume() {
        isPaused = false;
        this.resumePlayer();
        this.createNotificationPlay(this.getResources().getString(2131099721));
        this.startTimer();
        this.duration();
    }

    private void resumePlayer() {
        try {
            if (this.player != null) {
                this.player.resume();
                isStartedPlay = true;
                return;
            }
            this.playAsync();
            return;
        }
        catch (Exception exception) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void shuffle(int n) {
        long l = (n == 2 ? MP3PlayerApp.mHomeShuffle : MP3PlayerApp.mSongsShuffle) ? 1L : 0L;
        this.broadcast("com.rock.mp3player.intent.shuffle", "", l);
    }

    private void start() {
        this.createNotificationPlay(this.getResources().getString(2131099739));
        if (this.player != null) {
            this.player.stop();
            this.player = null;
        }
        new Thread(new Runnable(){

            @Override
            public void run() {
                MP3PlayerService.this.playAsync();
            }
        }).start();
    }

    private void stop() {
        isPaused = false;
        this.stopPlayer();
        this.createNotificationPlay(this.getResources().getString(2131099741));
        streamTitle = "";
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void stopPlayer() {
        try {
            if (this.player != null) {
                this.player.stop();
                this.player = null;
            }
        }
        catch (Exception exception) {}
        isStartedPlay = false;
    }

    public void broadcast(String string, String string2, long l) {
        string = new Intent(string);
        string.putExtra("KEY_MESSAGE", string2);
        string.putExtra("KEY_DATA", l);
        string.putExtra("mode", streamMode);
        this.sendBroadcast((Intent)string);
    }

    public void createNotificationPlay(String string) {
        NotificationManager notificationManager = (NotificationManager)this.getSystemService("notification");
        String string2 = MP3PlayerApp.getAppName();
        Notification notification = new Notification(2130837556, (CharSequence)string, System.currentTimeMillis());
        notification.flags = 34;
        Intent intent = new Intent((Context)this, MP3Main.class);
        intent.putExtra("mode", streamMode);
        if (streamMode == 0) {
            intent.putExtra("id", MP3PlayerApp.currentArtistId);
            intent.putExtra("name", MP3PlayerApp.currentArtistName);
        }
        intent.setFlags(272629760);
        notification.setLatestEventInfo((Context)this, (CharSequence)string2, (CharSequence)string, PendingIntent.getActivity((Context)this, (int)0, (Intent)intent, (int)134217728));
        notificationManager.notify(1214, notification);
    }

    public void duration() {
        if (this.player != null) {
            long l = this.player.getDuration();
            this.broadcast("com.rock.mp3player.intent.duration", streamTitle, l);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void next(int n) {
        Random random = new Random(System.currentTimeMillis());
        if (n == 0) {
            List<MP3Track> list;
            if (MP3PlayerApp.alltracks == null) {
                MP3PlayerApp.alltracks = new HashMap();
            }
            if ((list = MP3PlayerApp.alltracks.get(MP3PlayerApp.currentArtistId)) == null || list.size() <= 0) return;
            {
                MP3PlayerApp.trackIndex = MP3PlayerApp.mSongsShuffle ? random.nextInt(list.size()) : ++MP3PlayerApp.trackIndex;
                if (MP3PlayerApp.trackIndex >= list.size()) {
                    MP3PlayerApp.trackIndex = 0;
                }
                this.playIndex(n, MP3PlayerApp.trackIndex, MP3PlayerApp.currentArtistId, MP3PlayerApp.currentArtistName);
            }
            return;
        }
        if (n == 1) {
            if (MP3PlayerApp.playlist.size() <= 0) return;
            {
                MP3PlayerApp.playlistIndex = MP3PlayerApp.mSongsShuffle ? random.nextInt(MP3PlayerApp.playlist.size()) : ++MP3PlayerApp.playlistIndex;
                if (MP3PlayerApp.playlistIndex > MP3PlayerApp.playlist.size()) {
                    MP3PlayerApp.playlistIndex = 0;
                }
                this.playIndex(n, MP3PlayerApp.playlistIndex, MP3PlayerApp.currentArtistId, MP3PlayerApp.currentArtistName);
                return;
            }
        }
        if (n != 2 || MP3PlayerApp.homes.size() <= 0) return;
        MP3PlayerApp.homeIndex = MP3PlayerApp.mHomeShuffle ? random.nextInt(MP3PlayerApp.homes.size()) : ++MP3PlayerApp.homeIndex;
        if (MP3PlayerApp.homeIndex > MP3PlayerApp.homes.size()) {
            MP3PlayerApp.homeIndex = 0;
        }
        this.playIndex(n, MP3PlayerApp.homeIndex, MP3PlayerApp.currentArtistId, MP3PlayerApp.currentArtistName);
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        this.telephonyManager = (TelephonyManager)this.getSystemService("phone");
        this.telephonyManager.listen(new PhoneStateListener(){
            boolean pausedForRing = false;

            /*
             * Enabled aggressive block sorting
             */
            public void onCallStateChanged(int n, String string) {
                switch (n) {
                    case 0: {
                        if (!this.pausedForRing || MP3PlayerService.isStartedPlay) return;
                        {
                            MP3PlayerService.this.start();
                            this.pausedForRing = false;
                            return;
                        }
                    }
                    default: {
                        return;
                    }
                    case 1: 
                    case 2: {
                        if (!MP3PlayerService.isStartedPlay) return;
                        MP3PlayerService.this.createNotificationPlay(MP3PlayerService.this.getResources().getString(2131099699));
                        MP3PlayerService.this.stopPlayer();
                        if (MP3PlayerService.this.callback != null) {
                            MP3PlayerService.this.callback.playerStopped(0);
                        }
                        this.pausedForRing = true;
                        return;
                    }
                }
            }
        }, 32);
    }

    public void onDestroy() {
        this.stop();
        MP3PlayerService.cancelNotification((Context)this);
        if (this.telephonyManager != null) {
            this.telephonyManager.listen(new PhoneStateListener(), 0);
        }
        if (this.runanable != null) {
            this.mHandler.removeCallbacks(this.runanable);
            this.runanable = null;
        }
        this.stopTimer();
        this.stopSelf();
        super.onDestroy();
    }

    /*
     * Enabled aggressive block sorting
     */
    public int onStartCommand(Intent intent, int n, int n2) {
        if (intent == null) return 1;
        if ((intent = intent.getExtras()) == null) return 1;
        String string = intent.getString("action");
        n = intent.getInt("mode");
        if (string == null) return 1;
        if (string.equalsIgnoreCase("play")) {
            this.playIndex(n, intent.getInt("index"), intent.getLong("aid"), intent.getString("aname"));
            return 1;
        }
        if (string.equalsIgnoreCase("resume")) {
            if (n != streamMode) return 1;
            this.resume();
            return 1;
        }
        if (string.equalsIgnoreCase("pause")) {
            this.pause();
            return 1;
        }
        if (string.equalsIgnoreCase("stop")) {
            this.stop();
            return 1;
        }
        if (string.equalsIgnoreCase("repeat")) {
            this.repeat(n);
            return 1;
        }
        if (string.equalsIgnoreCase("shuffle")) {
            this.shuffle(n);
            return 1;
        }
        if (string.equalsIgnoreCase("next")) {
            this.next(n);
            return 1;
        }
        if (string.equalsIgnoreCase("duration")) {
            this.duration();
            return 1;
        }
        if (!string.equalsIgnoreCase("seek")) return 1;
        if (n != streamMode) return 1;
        if (!isStartedPlay) return 1;
        this.stopTimer();
        long l = intent.getInt("index", 0);
        this.player.seek(1000L * l);
        this.broadcast("com.rock.mp3player.intent.seek", "", 0L);
        this.startTimer();
        return 1;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void playAsync() {
        try {
            isPaused = false;
            this.callback = new MP3ServicePlayerCallback();
            MP3Player mP3Player = this.player = new MP3Player(this.callback);
            boolean bl = streamMode == 2 ? MP3PlayerApp.mHomeRepeat : MP3PlayerApp.mSongsRepeat;
            mP3Player.loop(bl);
            if (MP3PlayerApp.downloadExists((Context)this, streamUrl) && !MP3PlayerApp.downloadActive((Context)this, streamUrl)) {
                String string = MP3PlayerApp.downloadPath((Context)this, streamUrl).getAbsolutePath();
                this.player.playAsync(string);
            } else {
                this.player.playAsync(streamUrl);
            }
            isStartedPlay = true;
            return;
        }
        catch (Exception exception) {
            this.callback.playerException(new Throwable(this.getResources().getString(2131099694)));
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void playIndex(int n, int n2, long l, String object) {
        String string;
        String string2;
        String string3 = null;
        String string4 = null;
        if (n == 0) {
            if (MP3PlayerApp.alltracks == null) {
                MP3PlayerApp.alltracks = new HashMap();
            }
            Object object2 = MP3PlayerApp.alltracks.get(MP3PlayerApp.currentArtistId);
            string2 = string4;
            string = string3;
            if (object2 != null) {
                string2 = string4;
                string = string3;
                if (n2 >= 0) {
                    string2 = string4;
                    string = string3;
                    if (n2 < object2.size()) {
                        object2 = object2.get(n2);
                        string2 = string4;
                        string = string3;
                        if (object2 != null) {
                            MP3PlayerApp.playlistId = -1L;
                            MP3PlayerApp.playlistIndex = -1;
                            MP3PlayerApp.homeIndex = -1;
                            MP3PlayerApp.trackIndex = n2;
                            MP3PlayerApp.currentArtistId = l;
                            MP3PlayerApp.currentArtistName = object;
                            string = object2.getPath();
                            string2 = object2.getTitle();
                        }
                    }
                }
            }
        } else if (n == 1) {
            string2 = string4;
            string = string3;
            if (MP3PlayerApp.playlist != null) {
                string2 = string4;
                string = string3;
                if (n2 >= 0) {
                    string2 = string4;
                    string = string3;
                    if (n2 < MP3PlayerApp.playlist.size()) {
                        object = MP3PlayerApp.playlist.get(n2);
                        string2 = string4;
                        string = string3;
                        if (object != null) {
                            MP3PlayerApp.playlistId = object.id;
                            MP3PlayerApp.playlistIndex = n2;
                            MP3PlayerApp.trackIndex = -1;
                            MP3PlayerApp.homeIndex = -1;
                            string2 = object.getPath();
                            string = MP3Prefs.getQuality((Context)this) ? string2.replace("qqrrll55", "qqrrkk66") : string2.replace("qqrrkk66", "qqrrll55");
                            string2 = object.getTitle();
                        }
                    }
                }
            }
        } else {
            if (n != 2) return;
            string2 = string4;
            string = string3;
            if (MP3PlayerApp.homes != null) {
                string2 = string4;
                string = string3;
                if (n2 >= 0) {
                    string2 = string4;
                    string = string3;
                    if (n2 < MP3PlayerApp.homes.size()) {
                        object = MP3PlayerApp.homes.get(n2);
                        string2 = string4;
                        string = string3;
                        if (object != null) {
                            MP3PlayerApp.playlistId = -1L;
                            MP3PlayerApp.playlistIndex = -1;
                            MP3PlayerApp.trackIndex = -1;
                            MP3PlayerApp.homeIndex = n2;
                            string = object.getPath();
                            string2 = object.getTitle();
                        }
                    }
                }
            }
        }
        if (string2 == null) return;
        if (string2.trim().length() == 0) return;
        if (string == null) return;
        if (string.trim().length() == 0) return;
        streamUrl = string;
        streamTitle = string2;
        streamMode = n;
        this.start();
    }

    public void startTimer() {
        this.mTimer = new Timer();
        this.mTimer.schedule(new TimerTask(){

            @Override
            public void run() {
                if (MP3PlayerService.this.player != null) {
                    long l = MP3PlayerService.this.player.getPosition();
                    MP3PlayerService.this.broadcast("com.rock.mp3player.intent.update", "", l);
                }
            }
        }, 1000L, 1000L);
    }

    public void stopTimer() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer = null;
        }
    }

    public class MP3ServicePlayerCallback
    implements MP3PlayerCallback {
        public void playerComplete() {
            MP3PlayerService.this.broadcast("com.rock.mp3player.intent.complete", "", 0L);
            MP3PlayerService.this.next(MP3PlayerService.streamMode);
        }

        public void playerException(Throwable object) {
            object = object.getMessage();
            MP3PlayerService.this.broadcast("com.rock.mp3player.intent.exception", (String)object, 0L);
        }

        /*
         * Enabled aggressive block sorting
         */
        public void playerStarted(long l) {
            MP3PlayerService.this.createNotificationPlay(streamTitle);
            MP3PlayerService.this.broadcast("com.rock.mp3player.intent.play", "", l);
            if (MP3PlayerService.streamMode == 0) {
                MP3PlayerService.this.broadcast("com.rock.mp3player.intent.index", streamTitle, MP3PlayerApp.trackIndex);
            } else if (MP3PlayerService.streamMode == 1) {
                MP3PlayerService.this.broadcast("com.rock.mp3player.intent.index", streamTitle, MP3PlayerApp.playlistIndex);
            } else if (MP3PlayerService.streamMode == 2) {
                MP3PlayerService.this.broadcast("com.rock.mp3player.intent.index", streamTitle, MP3PlayerApp.homeIndex);
            }
            MP3PlayerService.this.startTimer();
        }

        public void playerStopped(int n) {
            MP3PlayerService.this.broadcast("com.rock.mp3player.intent.stop", "", n);
            MP3PlayerService.this.stopTimer();
        }
    }

}
