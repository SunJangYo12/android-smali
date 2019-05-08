/*
 * Decompiled with CFR 0_131.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Application
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.database.sqlite.SQLiteDatabase
 *  android.os.AsyncTask
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 *  com.akura.utils.Utils
 */
package com.akura.anime;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import com.akura.anime.MP3Downloader;
import com.akura.anime.MP3PlayerService;
import com.akura.anime.MP3Prefs;
import com.akura.anime.activities.MP3Main;
import com.akura.anime.activities.MP3MainArtists;
import com.akura.anime.database.DatabaseHelper;
import com.akura.anime.database.MP3Artist;
import com.akura.anime.database.MP3Playlist;
import com.akura.anime.database.MP3Track;
import com.akura.anime.objects.DownloadItem;
import com.akura.anime.objects.MP3Genre;
import com.akura.utils.Utils;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;

public class MP3PlayerApp
extends Application {
    public static final String APP_EMAIL = "radiolamolina@gmail.com";
    public static final int ARITSTS_PER_PAGE = 100;
    public static final String FACEBOOK = "Facebook";
    public static final String INTENT_AD = "com.rock.mp3player.intent.ad";
    public static final String INTENT_ARTISTS_SWITCH = "com.rock.mp3player.intent.artists.switch";
    public static final String INTENT_BUFFERING = "com.rock.mp3player.intent.buffering";
    public static final String INTENT_CLOSE = "com.rock.mp3player.intent.close";
    public static final String INTENT_COMPLETE = "com.rock.mp3player.intent.complete";
    public static final String INTENT_DOWNLOADED = "com.rock.mp3player.intent.downloaded";
    public static final String INTENT_DOWNLOADING = "com.rock.mp3player.intent.downloading";
    public static final String INTENT_DURATION = "com.rock.mp3player.intent.duration";
    public static final String INTENT_EXCEPTION = "com.rock.mp3player.intent.exception";
    public static final String INTENT_INDEX = "com.rock.mp3player.intent.index";
    public static final String INTENT_MAIN_SWITCH = "com.rock.mp3player.intent.main.switch";
    public static final String INTENT_PLAY = "com.rock.mp3player.intent.play";
    public static final String INTENT_REPEAT = "com.rock.mp3player.intent.repeat";
    public static final String INTENT_SEEKED = "com.rock.mp3player.intent.seek";
    public static final String INTENT_SETTINGS_CHANGED = "com.rock.mp3player.intent.settings.changed";
    public static final String INTENT_SHUFFLE = "com.rock.mp3player.intent.shuffle";
    public static final String INTENT_SONGS_TAB = "com.rock.mp3player.intent.songs.tab";
    public static final String INTENT_STOP = "com.rock.mp3player.intent.stop";
    public static final String INTENT_UPDATE = "com.rock.mp3player.intent.update";
    public static final int INTERACTION_COUNT = 20;
    public static final String KEY_BUFFER_CAPACITY = "KEY_BUFFER_CAPACITY";
    public static final String KEY_BUFFER_SIZE = "KEY_BUFFER_SIZE";
    public static final String KEY_DATA = "KEY_DATA";
    public static final String KEY_MESSAGE = "KEY_MESSAGE";
    public static final String KEY_PLAY_AUTO = "KEY_PLAYING";
    public static final String KEY_PLAY_INDEX = "KEY_PLAY_INDEX";
    public static final String KEY_PLAY_MODE = "KEY_MODE";
    public static final String KEY_TITLE = "KEY_TITLE";
    public static final String MAILER_ADDRESS = "radiolamolina@gmail.com";
    public static final String MAILER_PASSWORD = "";
    public static final long MAX_DOWNLOAD_ITEMS = 3L;
    public static final long MIN_FILE_SIZE = 65536L;
    public static final int NOTIFICATION_ID = 1214;
    public static final String TAG = "MP3PlayerApp";
    public static final String TWITTER = "Twitter";
    public static final String URL_FACEBOOK = "https://www.facebook.com/FreeAnimeMusic/";
    public static final String URL_TWITTER = "https://m.twitter.com/radiolamolina";
    public static HashMap<Long, List<MP3Track>> alltracks;
    public static String appName;
    public static MP3MainArtists artistsTab;
    public static long currentArtistId;
    public static String currentArtistName;
    public static SQLiteDatabase db;
    public static HashMap<String, DownloadItem> downloadList;
    public static int homeIndex;
    public static List<MP3Track> homes;
    public static List<MP3Artist> mGenreList;
    public static List<MP3Genre> mGenres;
    public static boolean mHomeRepeat;
    public static boolean mHomeShuffle;
    public static int mInteractions;
    public static MP3Main mMain;
    public static boolean mSongsRepeat;
    public static boolean mSongsShuffle;
    public static File mStorage;
    public static List<MP3Playlist> playlist;
    public static long playlistId;
    public static int playlistIndex;
    public static int trackIndex;

    static {
        playlistId = -1L;
        playlistIndex = 0;
        trackIndex = 0;
        homeIndex = 0;
        currentArtistName = null;
        currentArtistId = -1L;
        mHomeShuffle = true;
        mSongsShuffle = false;
        mHomeRepeat = false;
        mSongsRepeat = false;
        mInteractions = 1;
        mMain = null;
        downloadList = new HashMap();
    }

    public static void close(Context context) {
        context.sendBroadcast(new Intent(INTENT_CLOSE));
    }

    private void createFolder() {
        try {
            mStorage = this.getFilesDir();
            mStorage.mkdirs();
            mStorage.mkdir();
            return;
        }
        catch (Exception exception) {
            return;
        }
    }

    public static boolean downloadActive(Context context, String string) {
        if (downloadList.containsKey(string)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @TargetApi(value=11)
    public static boolean downloadAdd(Context context, String object) {
        int n = downloadList.size();
        if ((long)n >= 3L) {
            Utils.toastCenter((Context)context, (String)String.format(context.getString(2131099688), n));
            return false;
        }
        MP3PlayerApp.downloadStop(context, (String)object);
        object = new DownloadItem((String)object);
        object.task = new MP3Downloader(context, (DownloadItem)object);
        if (Build.VERSION.SDK_INT >= 11) {
            object.task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
            do {
                return true;
                break;
            } while (true);
        }
        object.task.execute((Object[])new Void[0]);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void downloadBroadcast(Context context, String string, boolean bl) {
        String string2 = bl ? INTENT_DOWNLOADED : INTENT_DOWNLOADING;
        string2 = new Intent(string2);
        string2.putExtra("path", string);
        context.sendBroadcast((Intent)string2);
    }

    public static void downloadCancel(Context context, String string) {
        MP3PlayerApp.downloadStop(context, string);
        File file = MP3PlayerApp.downloadPath(context, string);
        if (file.exists()) {
            file.delete();
        }
        MP3PlayerApp.downloadBroadcast(context, string, true);
    }

    public static boolean downloadExists(Context object, String string) {
        if ((object = MP3PlayerApp.downloadPath((Context)object, string)).exists() && object.length() > 65536L) {
            return true;
        }
        return false;
    }

    public static File downloadPath(Context context, String string) {
        return new File(mStorage, Utils.getSHA1((String)string));
    }

    public static void downloadRemove(Context context, String string) {
        MP3PlayerApp.downloadStop(context, string);
        File file = MP3PlayerApp.downloadPath(context, string);
        if (file.exists() && file.delete()) {
            file.length();
        }
        MP3PlayerApp.downloadBroadcast(context, string, true);
    }

    public static void downloadStop(Context object, String string) {
        object = downloadList.get(string);
        if (object != null && object.task != null) {
            object.task.cancel(true);
            object.task = null;
        }
        downloadList.remove(string);
    }

    public static void finishAsk(Context context, Runnable runnable) {
        Utils.confirm((Context)context, (String)MP3PlayerApp.getAppName(), (String)"Do you want to close the app?", (Runnable)runnable, null);
    }

    public static String getAppName() {
        return appName;
    }

    public static MP3Genre getCurrentGenre(Context context) {
        int n = MP3Prefs.getGenre(context);
        if (n < 0 || n > mGenres.size()) {
            return null;
        }
        return mGenres.get(n);
    }

    public static String getTrackArchiveUrl(String string, String string2) {
        block3 : {
            try {
                if (!string2.startsWith("http")) break block3;
                return string2;
            }
            catch (MalformedURLException malformedURLException) {
                return null;
            }
        }
        string = new URL(new URL(string), string2).toString();
        return string;
    }

    public static String getTrackUrl(long l, int n) {
        String string = "http://www.radiolamolina.com/wwmmzz77/" + String.format("%03d", l);
        string = string + "/imagen";
        string = string + String.format("%03d", n);
        return string + ".png";
    }

    public static void interstitial(Context context) {
        Log.i((String)TAG, (String)("interaction: " + ++mInteractions));
        if (mInteractions >= 20) {
            mInteractions = 1;
            context.sendBroadcast(new Intent(INTENT_AD));
        }
    }

    private void loadGenres() {
        mGenres = new ArrayList<MP3Genre>();
        MP3Genre mP3Genre = new MP3Genre();
        mP3Genre.title = "ANIME";
        mP3Genre.home = "http://www.freeanimemusic.org/image01.png";
        mP3Genre.artists = "http://www.freeanimemusic.org/scripts/resources/app/artists.php";
        mP3Genre.songs = "http://www.freeanimemusic.org/scripts/resources/app/songs.php";
        mP3Genre.archive = "http://www.musicaanime.org/aannmm11";
        mP3Genre.root = "http://www.freeanimemusic.org/anime";
        mP3Genre.image = 2130837557;
        mGenres.add(mP3Genre);
    }

    public static void stop(Context context, int n) {
        Intent intent = new Intent(context, MP3PlayerService.class);
        intent.putExtra("action", "stop");
        intent.putExtra("mode", n);
        context.startService(intent);
    }

    public static void switchArtistsTab(Context context, String string, long l, String string2, int n) {
        Intent intent = new Intent(INTENT_ARTISTS_SWITCH);
        intent.putExtra("tab", string);
        intent.putExtra("id", l);
        intent.putExtra("name", string2);
        intent.putExtra("track", n);
        context.sendBroadcast(intent);
    }

    public static void switchMainTab(Context context, String string) {
        Intent intent = new Intent(INTENT_MAIN_SWITCH);
        intent.putExtra("tab", string);
        context.sendBroadcast(intent);
    }

    public void onCreate() {
        super.onCreate();
        Log.d((String)TAG, (String)"Starting...");
        mMain = null;
        appName = this.getResources().getString(2131099679);
        db = new DatabaseHelper((Context)this).getWritableDatabase();
        alltracks = new HashMap();
        homes = new ArrayList<MP3Track>();
        this.createFolder();
        this.loadGenres();
        mInteractions = 0;
    }

    public void onLowMemory() {
        super.onLowMemory();
    }

    public void onTerminate() {
        super.onTerminate();
        Log.d((String)TAG, (String)"Terminating...");
        mMain = null;
    }
}
