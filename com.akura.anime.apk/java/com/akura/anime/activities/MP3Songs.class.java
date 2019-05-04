/*
 * Decompiled with CFR 0_131.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.BroadcastReceiver
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.database.Cursor
 *  android.os.AsyncTask
 *  android.os.Bundle
 *  android.util.Log
 *  android.view.LayoutInflater
 *  android.view.Menu
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.BaseAdapter
 *  android.widget.FrameLayout
 *  android.widget.HorizontalScrollView
 *  android.widget.ImageButton
 *  android.widget.ListAdapter
 *  android.widget.ListView
 *  android.widget.PopupWindow
 *  android.widget.PopupWindow$OnDismissListener
 *  android.widget.ProgressBar
 *  android.widget.SeekBar
 *  android.widget.SeekBar$OnSeekBarChangeListener
 *  android.widget.TextView
 *  com.akura.anime.MP3PlayerApp
 *  com.akura.anime.MP3PlayerService
 *  com.akura.anime.database.MP3Playlist
 *  com.akura.anime.database.MP3Track
 *  com.akura.anime.objects.DownloadItem
 *  com.akura.anime.objects.MP3Genre
 *  com.akura.anime.objects.SongsPopupItem
 *  com.akura.utils.Scroller
 *  com.akura.utils.Utils
 *  com.google.android.gms.ads.AdRequest
 *  com.google.android.gms.ads.AdRequest$Builder
 *  com.google.android.gms.ads.AdView
 */
package com.akura.anime.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.akura.anime.MP3PlayerApp;
import com.akura.anime.MP3PlayerService;
import com.akura.anime.activities.MP3MainArtists;
import com.akura.anime.database.MP3Playlist;
import com.akura.anime.database.MP3Track;
import com.akura.anime.objects.DownloadItem;
import com.akura.anime.objects.MP3Genre;
import com.akura.anime.objects.SongsPopupItem;
import com.akura.utils.Scroller;
import com.akura.utils.Utils;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class MP3Songs
extends Activity
implements View.OnClickListener,
AdapterView.OnItemClickListener {
    private static final int MENU_ITEM_CLOSE = 2;
    private static final int MENU_ITEM_RELOAD = 1;
    public static final int MODE_HOME = 2;
    public static final int MODE_PLAYLIST = 1;
    public static final int MODE_TRACK = 0;
    public static final String TAG = "MP3Songs";
    private SongsListAdapter adapter;
    private long artistId = -1L;
    private String artistName = null;
    public long lastUpdate = 0L;
    private List<MP3Track> localTracks;
    private AdView mAd = null;
    private SongsReceiver mBroadcast;
    private Context mContext;
    private ListView mList;
    private ImageButton mPlay;
    private PopupWindow mPopup = null;
    private ProgressBar mProgress;
    private ImageButton mRepeat;
    private Scroller mScroller;
    private SeekBar mSeek;
    private ImageButton mShuffle;
    private SongsLoader mTask;
    private int mode = 0;
    private PlaylistItemListener playlistListener;
    private PlaylistPlayListener playlistPlayListener;
    protected boolean seeking = false;
    private TrackItemListener trackAddListener;
    private TrackPlayListener trackPlayListener;

    static /* synthetic */ String access$1000(MP3Songs mP3Songs) {
        return mP3Songs.artistName;
    }

    static /* synthetic */ String access$1002(MP3Songs mP3Songs, String string) {
        mP3Songs.artistName = string;
        return string;
    }

    static /* synthetic */ SongsListAdapter access$1600(MP3Songs mP3Songs) {
        return mP3Songs.adapter;
    }

    static /* synthetic */ SeekBar access$1700(MP3Songs mP3Songs) {
        return mP3Songs.mSeek;
    }

    static /* synthetic */ void access$1800(MP3Songs mP3Songs, String string) {
        mP3Songs.updateTitle(string);
    }

    static /* synthetic */ void access$2000(MP3Songs mP3Songs) {
        mP3Songs.stop();
    }

    static /* synthetic */ long access$902(MP3Songs mP3Songs, long l) {
        mP3Songs.artistId = l;
        return l;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void autoPlay(int n, int n2) {
        if (n == 0) {
            if (MP3PlayerService.isStartedPlay) return;
            {
                this.play(n2);
                return;
            }
        } else if (n == 2) {
            if (MP3PlayerService.isStartedPlay) return;
            {
                this.play(new Random(System.currentTimeMillis()).nextInt(MP3PlayerApp.homes.size() - 1));
                return;
            }
        } else {
            if (n != 1 || MP3PlayerService.isStartedPlay) return;
            {
                this.play(n2);
                return;
            }
        }
    }

    private void closePopup() {
        if (this.mPopup != null) {
            if (this.mPopup.isShowing()) {
                this.mPopup.dismiss();
            }
            this.mPopup = null;
        }
    }

    private void globalizeTracks(List<MP3Track> object) {
        ArrayList<MP3Track> arrayList = new ArrayList<MP3Track>();
        object = object.iterator();
        while (object.hasNext()) {
            arrayList.add((MP3Track)object.next());
        }
        if (MP3PlayerApp.alltracks == null) {
            MP3PlayerApp.alltracks = new HashMap();
        }
        MP3PlayerApp.alltracks.put(this.artistId, arrayList);
    }

    private void localizeTracks(List<MP3Track> object) {
        this.localTracks = new ArrayList<MP3Track>();
        object = object.iterator();
        while (object.hasNext()) {
            MP3Track mP3Track = (MP3Track)object.next();
            this.localTracks.add(mP3Track);
        }
    }

    private void onProgressUpdate(int n, int n2) {
    }

    private void pause() {
        this.mScroller.stop(this.getResources().getString(2131099712));
        Intent intent = new Intent((Context)this, MP3PlayerService.class);
        intent.putExtra("action", "pause");
        intent.putExtra("mode", this.mode);
        this.startService(intent);
        this.playButton(false);
    }

    private void resume() {
        Intent intent = new Intent((Context)this, MP3PlayerService.class);
        intent.putExtra("action", "resume");
        intent.putExtra("mode", this.mode);
        this.startService(intent);
        this.playButton(true);
    }

    private void showIndex(int n) {
        if (n != -1) {
            this.mList.smoothScrollToPosition(n);
            this.mList.invalidateViews();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void showPopup(View view, final Object object) {
        this.closePopup();
        View view2 = LayoutInflater.from((Context)this).inflate(2130903050, null);
        view2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        ListView listView = (ListView)view2.findViewById(2131361806);
        listView.setCacheColorHint(0);
        listView.setDividerHeight(0);
        String string = object instanceof MP3Playlist ? ((MP3Playlist)object).path : ((MP3Track)object).path;
        ArrayList<SongsPopupItem> arrayList = new ArrayList<SongsPopupItem>();
        if (object instanceof MP3Playlist) {
            if (MP3PlayerApp.downloadActive((Context)this, (String)string)) {
                arrayList.add(new SongsPopupItem(5, this.getString(2131099683)));
            } else {
                if (MP3PlayerApp.downloadExists((Context)this, (String)string)) {
                    arrayList.add(new SongsPopupItem(3, this.getString(2131099701)));
                } else {
                    arrayList.add(new SongsPopupItem(4, this.getString(2131099700)));
                }
                arrayList.add(new SongsPopupItem(2, this.getString(2131099718)));
            }
        } else {
            arrayList.add(new SongsPopupItem(1, this.getString(2131099715)));
            arrayList.add(new SongsPopupItem(4, this.getString(2131099700)));
        }
        arrayList.add(new SongsPopupItem(6, this.getString(2131099682)));
        listView.setAdapter((ListAdapter)new SongsPopupListAdapter((Context)this, arrayList));
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onItemClick(AdapterView<?> mP3Playlist, View view, int n, long l) {
                if (object instanceof MP3Playlist) {
                    mP3Playlist = (MP3Playlist)object;
                    if (l == 2L) {
                        MP3Songs.this.removePlaylist(mP3Playlist);
                    } else if (l == 3L) {
                        MP3PlayerApp.downloadRemove((Context)MP3Songs.this, (String)mP3Playlist.path);
                    } else if (l == 4L) {
                        MP3PlayerApp.downloadAdd((Context)MP3Songs.this, (String)mP3Playlist.path);
                    } else if (l == 5L) {
                        MP3PlayerApp.downloadCancel((Context)MP3Songs.this, (String)mP3Playlist.path);
                    }
                } else {
                    mP3Playlist = (MP3Track)object;
                    if (l == 1L) {
                        MP3Songs.this.addTrack((MP3Track)mP3Playlist, true);
                    } else if (l == 4L) {
                        if (!MP3PlayerApp.downloadExists((Context)MP3Songs.this, (String)mP3Playlist.path) && !MP3PlayerApp.downloadAdd((Context)MP3Songs.this, (String)mP3Playlist.path)) {
                            MP3Songs.this.closePopup();
                            return;
                        }
                        if (!new MP3Playlist().getByPath(mP3Playlist.path)) {
                            MP3Songs.this.addTrack((MP3Track)mP3Playlist, false);
                        }
                        Utils.toastCenter((Context)MP3Songs.this, (String)MP3Songs.this.getString(2131099702));
                    }
                }
                MP3Songs.this.closePopup();
            }
        });
        int n = (int)Utils.convertDpToPixel((Context)this, (float)250.0f);
        this.mPopup = new PopupWindow((Context)this);
        this.mPopup.setOutsideTouchable(true);
        this.mPopup.setOnDismissListener(new PopupWindow.OnDismissListener(){

            public void onDismiss() {
                MP3Songs.this.closePopup();
            }
        });
        this.mPopup.setContentView(view2);
        this.mPopup.setWindowLayoutMode(n, -2);
        this.mPopup.setFocusable(true);
        this.mPopup.setWidth(n);
        this.mPopup.showAsDropDown(view, 0, -10);
        this.mPopup.update();
    }

    private void stop() {
        this.mScroller.stop(this.getResources().getString(2131099741));
        Intent intent = new Intent((Context)this, MP3PlayerService.class);
        intent.putExtra("action", "stop");
        intent.putExtra("mode", this.mode);
        this.startService(intent);
        this.playButton(false);
    }

    private void updateTitle(final String string) {
        if (string == null) {
            return;
        }
        this.runOnUiThread(new Runnable(){

            @Override
            public void run() {
                MP3Songs.this.mScroller.start(string);
            }
        });
    }

    public void addTrack(MP3Track mP3Track, boolean bl) {
        MP3Playlist mP3Playlist = new MP3Playlist();
        mP3Playlist.copy(mP3Track);
        if (mP3Playlist.insert() > 0L) {
            if (bl) {
                Utils.toastCenter((Context)this, (String)this.getResources().getString(2131099716));
            }
            MP3PlayerApp.interstitial((Context)this);
        }
    }

    public void clearList() {
        this.localTracks = new ArrayList<MP3Track>();
        this.updateList();
    }

    public void closeTask() {
        if (this.mTask != null) {
            this.mTask.cancel(true);
            this.mTask = null;
        }
    }

    public void downloadTracks(int n, int n2, boolean bl) {
        this.closeTask();
        this.mTask = new SongsLoader((Context)this, n, n2, bl);
        this.mTask.execute((Object[])new Void[0]);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void loadTracks(int n, boolean bl) {
        List list;
        this.mScroller.stop(this.getResources().getString(2131099742));
        if (MP3PlayerApp.alltracks == null) {
            MP3PlayerApp.alltracks = new HashMap();
        }
        if ((list = (List)MP3PlayerApp.alltracks.get(this.artistId)) == null) {
            this.downloadTracks(this.mode, n, bl);
            return;
        } else {
            this.localizeTracks(list);
            this.updateList();
            if (!bl) return;
            {
                this.autoPlay(this.mode, n);
                return;
            }
        }
    }

    public void onBackPressed() {
        if (this.mode == 0) {
            MP3PlayerApp.switchArtistsTab((Context)this, (String)"Artists", (long)0L, null, (int)0);
            return;
        }
        this.getParent().onBackPressed();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onClick(View view) {
        block10 : {
            int n;
            boolean bl;
            boolean bl2;
            block9 : {
                n = 2130837563;
                boolean bl3 = true;
                boolean bl4 = true;
                bl = true;
                bl2 = true;
                this.closePopup();
                if (view == this.mPlay) {
                    MP3PlayerApp.interstitial((Context)this);
                    this.playToggle();
                    return;
                }
                if (view == this.mShuffle) {
                    if (this.mode == 2) {
                        if (MP3PlayerApp.mHomeShuffle) {
                            bl2 = false;
                        }
                        MP3PlayerApp.mHomeShuffle = bl2;
                        view = this.mShuffle;
                        n = MP3PlayerApp.mHomeShuffle ? 2130837563 : 2130837561;
                        view.setImageResource(n);
                    } else {
                        bl2 = !MP3PlayerApp.mSongsShuffle ? bl3 : false;
                        MP3PlayerApp.mSongsShuffle = bl2;
                        view = this.mShuffle;
                        if (!MP3PlayerApp.mSongsShuffle) {
                            n = 2130837561;
                        }
                        view.setImageResource(n);
                    }
                    view = new Intent((Context)this, MP3PlayerService.class);
                    view.putExtra("action", "shuffle");
                    view.putExtra("mode", this.mode);
                    this.startService((Intent)view);
                    return;
                }
                if (view != this.mRepeat) return;
                if (this.mode == 2) {
                    bl2 = !MP3PlayerApp.mHomeRepeat ? bl4 : false;
                }
                break block9;
                MP3PlayerApp.mHomeRepeat = bl2;
                view = this.mRepeat;
                if (!MP3PlayerApp.mHomeRepeat) {
                    n = 2130837561;
                }
                view.setImageResource(n);
                break block10;
            }
            bl2 = !MP3PlayerApp.mSongsRepeat ? bl : false;
            MP3PlayerApp.mSongsRepeat = bl2;
            view = this.mRepeat;
            if (!MP3PlayerApp.mSongsRepeat) {
                n = 2130837561;
            }
            view.setImageResource(n);
        }
        view = new Intent((Context)this, MP3PlayerService.class);
        view.putExtra("action", "repeat");
        view.putExtra("mode", this.mode);
        this.startService((Intent)view);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            this.mScroller.restart();
            return;
        } else {
            if (configuration.orientation != 1) return;
            {
                this.mScroller.restart();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903055);
        this.trackAddListener = new TrackItemListener();
        this.trackPlayListener = new TrackPlayListener();
        this.playlistListener = new PlaylistItemListener();
        this.playlistPlayListener = new PlaylistPlayListener();
        this.mode = this.getIntent().getIntExtra("mode", 0);
        this.artistId = this.getIntent().getLongExtra("id", -1L);
        this.artistName = this.getIntent().getStringExtra("name");
        this.mProgress = (ProgressBar)this.findViewById(2131361802);
        this.mProgress.setVisibility(4);
        this.mAd = (AdView)this.findViewById(2131361803);
        this.mAd.loadAd(new AdRequest.Builder().build());
        this.mScroller = new Scroller((Activity)this, (HorizontalScrollView)this.findViewById(2131361817), (TextView)this.findViewById(2131361804));
        this.mList = (ListView)this.findViewById(2131361806);
        this.mList.setCacheColorHint(0);
        this.mList.setDividerHeight(0);
        this.mList.setOnItemClickListener((AdapterView.OnItemClickListener)this);
        this.adapter = new SongsListAdapter((Context)this);
        this.mList.setAdapter((ListAdapter)this.adapter);
        this.mSeek = (SeekBar)this.findViewById(2131361830);
        this.mPlay = (ImageButton)this.findViewById(2131361829);
        this.mShuffle = (ImageButton)this.findViewById(2131361831);
        this.mRepeat = (ImageButton)this.findViewById(2131361832);
        this.mSeek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){

            public void onProgressChanged(SeekBar seekBar, int n, boolean bl) {
                if (bl && MP3PlayerService.isStartedPlay) {
                    MP3Songs.this.seeking = true;
                    seekBar = new Intent((Context)MP3Songs.this, MP3PlayerService.class);
                    seekBar.putExtra("action", "seek");
                    seekBar.putExtra("index", n);
                    seekBar.putExtra("mode", MP3Songs.this.mode);
                    MP3Songs.this.startService((Intent)seekBar);
                }
            }

            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
        this.mPlay.setOnClickListener((View.OnClickListener)this);
        this.mShuffle.setOnClickListener((View.OnClickListener)this);
        this.mRepeat.setOnClickListener((View.OnClickListener)this);
        if (this.mode == 0) {
            this.loadTracks(0, true);
        } else if (this.mode == 1) {
            this.mScroller.stop(this.getResources().getString(2131099714));
        } else if (this.mode == 2) {
            MP3PlayerApp.mHomeShuffle = true;
            MP3PlayerApp.mSongsRepeat = false;
            this.mScroller.stop(this.getResources().getString(2131099698));
            boolean bl = this.getIntent().getBooleanExtra("auto", true);
            this.downloadTracks(this.mode, 0, bl);
        }
        this.register();
        this.mContext = this;
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.add(0, 1, 0, 2131099720).setIcon(2130837554);
        menu.add(0, 2, 0, 2131099684).setIcon(2130837553);
        return true;
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.mAd != null) {
            this.mAd.destroy();
        }
        this.mScroller.stop("");
        this.closeTask();
        this.unregister();
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        this.play((int)l);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return super.onOptionsItemSelected(menuItem);
            }
            case 1: {
                this.downloadTracks(this.mode, 0, false);
                return true;
            }
            case 2: 
        }
        MP3PlayerApp.close((Context)this);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onResume() {
        int n = 2130837563;
        super.onResume();
        boolean bl = MP3PlayerApp.mSongsShuffle;
        boolean bl2 = MP3PlayerApp.mSongsRepeat;
        if (this.mode == 1) {
            this.downloadTracks(this.mode, 0, false);
        } else if (this.mode == 0) {
            this.updateList();
        } else if (this.mode == 2) {
            bl = MP3PlayerApp.mHomeShuffle;
            bl2 = MP3PlayerApp.mHomeRepeat;
            this.updateList();
        }
        ImageButton imageButton = this.mShuffle;
        int n2 = bl ? 2130837563 : 2130837561;
        imageButton.setImageResource(n2);
        imageButton = this.mRepeat;
        n2 = bl2 ? n : 2130837561;
        imageButton.setImageResource(n2);
        this.updateDuration();
        if (!MP3PlayerService.isStartedPlay) {
            this.playButton(false);
            return;
        }
        if (MP3PlayerService.isPaused) {
            this.playButton(false);
            return;
        }
        this.playButton(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void play(int n) {
        this.mScroller.stop(this.getResources().getString(2131099739));
        this.mSeek.setProgress(0);
        this.mSeek.setMax(1);
        this.mSeek.setSecondaryProgress(1);
        MP3PlayerService.streamMode = this.mode;
        if (this.mode == 0) {
            MP3PlayerApp.trackIndex = n;
            MP3PlayerApp.currentArtistId = this.artistId;
        } else if (this.mode == 1) {
            MP3PlayerApp.playlistIndex = n;
        } else if (this.mode == 2) {
            MP3PlayerApp.homeIndex = n;
        }
        this.adapter.notifyDataSetChanged();
        this.showIndex(n);
        this.playButton(true);
        Intent intent = new Intent((Context)this, MP3PlayerService.class);
        intent.putExtra("action", "play");
        intent.putExtra("index", n);
        intent.putExtra("aid", this.artistId);
        intent.putExtra("aname", this.artistName);
        intent.putExtra("mode", this.mode);
        this.startService(intent);
    }

    public void playButton(final boolean bl) {
        this.runOnUiThread(new Runnable(){

            @Override
            public void run() {
                if (bl) {
                    MP3Songs.this.mPlay.setImageResource(2130837565);
                    return;
                }
                MP3Songs.this.mPlay.setImageResource(2130837566);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void playToggle() {
        if (this.mode == 0) {
            if (MP3PlayerService.isStartedPlay && !MP3PlayerService.isPaused) {
                this.pause();
                return;
            }
            if (MP3PlayerService.isPaused) {
                this.resume();
                return;
            }
            this.play(MP3PlayerApp.trackIndex);
            return;
        }
        if (this.mode == 1) {
            if (MP3PlayerService.isStartedPlay && !MP3PlayerService.isPaused) {
                this.pause();
                return;
            }
            if (MP3PlayerService.isPaused) {
                this.resume();
                return;
            }
            if (MP3PlayerApp.playlist == null) return;
            if (MP3PlayerApp.playlist.size() <= 0) return;
            this.play(MP3PlayerApp.trackIndex);
            return;
        }
        if (this.mode != 2) return;
        if (MP3PlayerService.isStartedPlay && !MP3PlayerService.isPaused) {
            this.pause();
            return;
        }
        if (MP3PlayerService.isPaused) {
            this.resume();
            return;
        }
        if (MP3PlayerApp.homes == null) return;
        if (MP3PlayerApp.homes.size() <= 0) return;
        this.play(MP3PlayerApp.homeIndex);
    }

    public void register() {
        this.mBroadcast = new SongsReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.rock.mp3player.intent.songs.tab");
        intentFilter.addAction("com.rock.mp3player.intent.downloading");
        intentFilter.addAction("com.rock.mp3player.intent.downloaded");
        intentFilter.addAction("com.rock.mp3player.intent.play");
        intentFilter.addAction("com.rock.mp3player.intent.exception");
        intentFilter.addAction("com.rock.mp3player.intent.update");
        intentFilter.addAction("com.rock.mp3player.intent.complete");
        intentFilter.addAction("com.rock.mp3player.intent.index");
        intentFilter.addAction("com.rock.mp3player.intent.seek");
        intentFilter.addAction("com.rock.mp3player.intent.duration");
        intentFilter.addAction("com.rock.mp3player.intent.settings.changed");
        this.registerReceiver((BroadcastReceiver)this.mBroadcast, intentFilter);
    }

    public void removePlaylist(MP3Playlist mP3Playlist) {
        if (mP3Playlist.delete(mP3Playlist.getId())) {
            if (MP3Playlist.countByPath((String)mP3Playlist.path) == 0) {
                MP3PlayerApp.downloadRemove((Context)this, (String)mP3Playlist.path);
            }
            Utils.toastCenter((Context)this, (String)this.getResources().getString(2131099719));
            this.downloadTracks(this.mode, 0, false);
            MP3PlayerApp.interstitial((Context)this);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void showDialog(String string, String string2) {
        if (this.mContext == null) {
            return;
        }
        AlertDialog.Builder builder = this.mode == 0 ? new AlertDialog.Builder((Context)MP3PlayerApp.artistsTab) : new AlertDialog.Builder(this.mContext);
        builder.setTitle((CharSequence)string);
        builder.setMessage((CharSequence)string2);
        builder.setPositiveButton(2131099711, new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n) {
                dialogInterface.cancel();
            }
        });
        builder.show();
    }

    public void unregister() {
        if (this.mBroadcast != null) {
            this.unregisterReceiver((BroadcastReceiver)this.mBroadcast);
            this.mBroadcast = null;
        }
    }

    public void updateDuration() {
        Intent intent = new Intent((Context)this, MP3PlayerService.class);
        intent.putExtra("action", "duration");
        intent.putExtra("mode", this.mode);
        this.startService(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateList() {
        if (this.mode == 0) {
            if (MP3PlayerApp.currentArtistId == this.artistId) {
                this.showIndex(MP3PlayerApp.trackIndex);
            } else {
                this.showIndex(0);
            }
        } else if (this.mode == 1) {
            this.showIndex(MP3PlayerApp.playlistIndex);
        } else if (this.mode == 2) {
            this.showIndex(MP3PlayerApp.homeIndex);
        }
        this.adapter.notifyDataSetChanged();
    }

    public class PlaylistItemListener
    implements View.OnClickListener {
        public void onClick(View view) {
            Object object = view.getTag();
            if (object instanceof MP3Playlist) {
                MP3Songs.this.showPopup(view, object);
            }
        }
    }

    public class PlaylistPlayListener
    implements View.OnClickListener {
        public void onClick(View object) {
            if ((object = object.getTag()) instanceof Integer) {
                object = (Integer)object;
                MP3Songs.this.play(object.intValue());
                MP3PlayerApp.interstitial((Context)MP3Songs.this);
            }
        }
    }

    public class SongsListAdapter
    extends BaseAdapter {
        Context mContext;
        HashMap<String, Integer> map = new HashMap();

        public SongsListAdapter(Context context) {
            this.mContext = context;
        }

        public int getCount() {
            if (MP3Songs.this.mode == 0) {
                if (MP3Songs.this.localTracks != null) {
                    return MP3Songs.this.localTracks.size();
                }
            } else if (MP3Songs.this.mode == 1) {
                if (MP3PlayerApp.playlist != null) {
                    return MP3PlayerApp.playlist.size();
                }
            } else if (MP3Songs.this.mode == 2 && MP3PlayerApp.homes != null) {
                return MP3PlayerApp.homes.size();
            }
            return 0;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Object getItem(int n) {
            block6 : {
                block5 : {
                    if (this.getCount() == 0 || n < 0 || n >= this.getCount()) break block5;
                    if (MP3Songs.this.mode == 0) {
                        return MP3Songs.this.localTracks.get(n);
                    }
                    if (MP3Songs.this.mode == 1) {
                        return MP3PlayerApp.playlist.get(n);
                    }
                    if (MP3Songs.this.mode == 2) break block6;
                }
                return null;
            }
            return MP3PlayerApp.homes.get(n);
        }

        /*
         * Enabled aggressive block sorting
         */
        public long getItemId(int n) {
            MP3Track mP3Track;
            if (MP3Songs.this.mode == 0) {
                MP3Track mP3Track2 = (MP3Track)this.getItem(n);
                if (mP3Track2 == null) return -1L;
                return mP3Track2.getId();
            }
            if (MP3Songs.this.mode == 1) {
                MP3Playlist mP3Playlist = (MP3Playlist)this.getItem(n);
                if (mP3Playlist == null) return -1L;
                return mP3Playlist.getId();
            }
            if (MP3Songs.this.mode == 2 && (mP3Track = (MP3Track)this.getItem(n)) != null) return mP3Track.getId();
            return -1L;
        }

        /*
         * Enabled aggressive block sorting
         */
        public View getView(int n, View object, ViewGroup viewGroup) {
            Object object2 = object;
            if (object == null) {
                object2 = MP3Songs.this.getLayoutInflater().inflate(2130903056, null);
            }
            FrameLayout frameLayout = (FrameLayout)object2.findViewById(2131361807);
            TextView textView = (TextView)object2.findViewById(2131361804);
            TextView textView2 = (TextView)object2.findViewById(2131361802);
            ImageButton imageButton = (ImageButton)object2.findViewById(2131361833);
            imageButton.setImageResource(2130837559);
            textView2.setVisibility(4);
            if (MP3Songs.this.mode == 0) {
                MP3Track mP3Track = (MP3Track)this.getItem(n);
                if (mP3Track != null) {
                    textView.setText((CharSequence)mP3Track.getTitle());
                    object2.setTag((Object)n);
                    object2.setOnClickListener((View.OnClickListener)MP3Songs.this.trackPlayListener);
                    imageButton.setTag((Object)mP3Track);
                    imageButton.setOnClickListener((View.OnClickListener)MP3Songs.this.trackAddListener);
                }
                if (MP3PlayerApp.trackIndex == n && MP3PlayerService.streamMode == MP3Songs.this.mode && MP3PlayerApp.currentArtistId == MP3Songs.this.artistId) {
                    textView.setTextColor(-16777216);
                    frameLayout.setBackgroundResource(2130837505);
                    return object2;
                }
                textView.setTextColor(-1);
                frameLayout.setBackgroundResource(2130837506);
                return object2;
            }
            if (MP3Songs.this.mode == 1) {
                MP3Playlist mP3Playlist = (MP3Playlist)this.getItem(n);
                if (mP3Playlist == null) {
                    textView.setTextColor(-1);
                    frameLayout.setBackgroundResource(2130837506);
                    return object2;
                }
                textView.setText((CharSequence)mP3Playlist.getTitle());
                DownloadItem downloadItem = (DownloadItem)MP3PlayerApp.downloadList.get(mP3Playlist.path);
                if (downloadItem != null) {
                    void var2_6;
                    textView2.setVisibility(0);
                    if (downloadItem.read == 0L) {
                        String string = "...";
                    } else if (downloadItem.size == -1L) {
                        String string = Utils.getByteFormat((long)downloadItem.read);
                    } else {
                        String string = String.format("%.01f%%", (double)((float)downloadItem.read / (float)downloadItem.size) * 100.0);
                    }
                    textView2.setText((CharSequence)var2_6);
                } else if (MP3PlayerApp.downloadExists((Context)MP3Songs.this, (String)mP3Playlist.path)) {
                    imageButton.setImageResource(2130837560);
                }
                object2.setTag((Object)n);
                object2.setOnClickListener((View.OnClickListener)MP3Songs.this.playlistPlayListener);
                imageButton.setTag((Object)mP3Playlist);
                imageButton.setOnClickListener((View.OnClickListener)MP3Songs.this.playlistListener);
                if (mP3Playlist.id != -1L && MP3PlayerApp.playlistId == mP3Playlist.id && MP3PlayerService.streamMode == MP3Songs.this.mode) {
                    textView.setTextColor(-16777216);
                    frameLayout.setBackgroundResource(2130837505);
                    return object2;
                }
                textView.setTextColor(-1);
                frameLayout.setBackgroundResource(2130837506);
                return object2;
            }
            if (MP3Songs.this.mode != 2) return object2;
            {
                MP3Track mP3Track = (MP3Track)this.getItem(n);
                if (mP3Track != null) {
                    textView.setText((CharSequence)mP3Track.getTitle());
                    object2.setTag((Object)n);
                    object2.setOnClickListener((View.OnClickListener)MP3Songs.this.trackPlayListener);
                    imageButton.setTag((Object)mP3Track);
                    imageButton.setOnClickListener((View.OnClickListener)MP3Songs.this.trackAddListener);
                }
                if (MP3PlayerApp.homeIndex == n && MP3PlayerService.streamMode == MP3Songs.this.mode) {
                    textView.setTextColor(-16777216);
                    frameLayout.setBackgroundResource(2130837505);
                    return object2;
                }
            }
            textView.setTextColor(-1);
            frameLayout.setBackgroundResource(2130837506);
            return object2;
        }
    }

    private class SongsLoader
    extends AsyncTask<Void, String, Boolean> {
        private List<MP3Track> homes;
        private boolean mAuto = false;
        private Context mContext;
        private int mIndex = 0;
        private int mMode = 0;
        private String mMsg = null;
        private List<MP3Playlist> playlists;
        private List<MP3Track> tracks;

        public SongsLoader(Context context, int n, int n2, boolean bl) {
            this.mContext = context;
            this.mMode = n;
            this.mIndex = n2;
            this.mAuto = bl;
            this.mMsg = context.getResources().getString(2131099693);
        }

        /*
         * Enabled aggressive block sorting
         */
        protected /* varargs */ Boolean doInBackground(Void ... arrvoid) {
            boolean bl = false;
            if (this.mMode == 2) {
                bl = this.loadTrackHome();
                return bl;
            }
            if (this.mMode == 0) {
                bl = this.loadTrackArchive();
                return bl;
            }
            if (this.mMode != 1) return bl;
            bl = this.loadPlaylist();
            return bl;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean loadPlaylist() {
            MP3Playlist mP3Playlist = new MP3Playlist();
            mP3Playlist = mP3Playlist.load();
            if (mP3Playlist == null) return false;
            try {
                this.playlists = new ArrayList<MP3Playlist>();
                while (mP3Playlist.moveToNext()) {
                    MP3Playlist mP3Playlist2 = new MP3Playlist();
                    if (!mP3Playlist2.copy((Cursor)mP3Playlist)) continue;
                    this.playlists.add(mP3Playlist2);
                }
                mP3Playlist.close();
                return true;
            }
            catch (Exception exception) {
                // empty catch block
            }
            return false;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        public boolean loadTrackArchive() {
            var7_1 = false;
            if (MP3Songs.access$1000(MP3Songs.this) == null || MP3Songs.access$1000(MP3Songs.this).length() == 0) {
                this.mMsg = null;
                return false;
            }
            var9_2 = MP3PlayerApp.getCurrentGenre((Context)this.mContext);
            if (var9_2 == null) {
                this.mMsg = "Invalid genre!";
                return false;
            }
            var9_3 = var9_2.root + "/" + MP3Songs.access$1000(MP3Songs.this).toLowerCase(Locale.getDefault()) + "/button.png";
            var10_5 = Utils.getUrl((String)var9_3);
            if (var10_5 == null) {
                return false;
            }
            try {
                var10_5 = new ByteArrayInputStream((byte[])var10_5);
                var11_6 = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse((InputStream)var10_5, null).getDocumentElement();
                var10_5 = var11_6.getChildNodes();
                var5_7 = var10_5.getLength();
                if (!var11_6.getNodeName().equalsIgnoreCase("playlist")) {
                    this.mMsg = this.mMsg + "\n" + MP3Songs.this.getResources().getString(2131099691);
                    return false;
                }
                var1_8 = 1;
                this.tracks = new ArrayList<MP3Track>();
                var2_9 = 0;
            }
            catch (Exception var9_4) {
                Log.i((String)"MP3Songs", (String)("parse Error: " + var9_4.toString()));
                this.mMsg = this.mContext.getResources().getString(2131099691);
                return false;
            }
            block2 : do {
                block8 : {
                    var8_13 = var7_1;
                    if (var2_9 > var5_7) return var8_13;
                    var11_6 = var10_5.item(var2_9);
                    var4_11 = var1_8;
                    var8_13 = var7_1;
                    if (var11_6 == null) ** GOTO lbl73
                    if (var11_6.getNodeType() == 1) break block8;
                    var4_11 = var1_8;
                    var8_13 = var7_1;
                    ** GOTO lbl73
                }
                var4_11 = var1_8;
                var8_13 = var7_1;
                if (!var11_6.getNodeName().equalsIgnoreCase("trackList")) ** GOTO lbl73
                var11_6 = var11_6.getChildNodes();
                var6_12 = var11_6.getLength();
                var3_10 = 0;
                do {
                    block10 : {
                        block9 : {
                            block11 : {
                                var4_11 = var1_8;
                                var8_13 = var7_1;
                                if (var3_10 >= var6_12) break block9;
                                var12_14 = var11_6.item(var3_10);
                                var4_11 = var1_8;
                                var8_13 = var7_1;
                                if (var12_14 == null) break block10;
                                if (var12_14.getNodeType() == 1) break block11;
                                var4_11 = var1_8;
                                var8_13 = var7_1;
                                break block10;
                            }
                            var4_11 = var1_8;
                            var8_13 = var7_1;
                            if (!var12_14.getNodeName().equalsIgnoreCase("track")) break block10;
                            var13_15 = new MP3Track();
                            var4_11 = var1_8;
                            var8_13 = var7_1;
                            if (!var13_15.copyXML(var12_14, var9_3)) break block10;
                            var13_15.setId((long)var1_8);
                            var13_15.setArtist(MP3Songs.access$900(MP3Songs.this));
                            this.tracks.add(var13_15);
                            var4_11 = var1_8 + 1;
                            var8_13 = true;
                            break block10;
                        }
                        ++var2_9;
                        var1_8 = var4_11;
                        var7_1 = var8_13;
                        continue block2;
                    }
                    ++var3_10;
                    var1_8 = var4_11;
                    var7_1 = var8_13;
                } while (true);
                break;
            } while (true);
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        public boolean loadTrackHome() {
            var7_1 = false;
            var9_2 = MP3PlayerApp.getCurrentGenre((Context)this.mContext);
            if (var9_2 == null) {
                this.mMsg = "Invalid genre!";
                return false;
            }
            var9_3 = var9_2.home;
            var10_5 = Utils.getUrl((String)var9_3);
            if (var10_5 == null) {
                return false;
            }
            try {
                var10_5 = new ByteArrayInputStream((byte[])var10_5);
                var11_6 = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse((InputStream)var10_5, null).getDocumentElement();
                var10_5 = var11_6.getChildNodes();
                var5_7 = var10_5.getLength();
                if (!var11_6.getNodeName().equalsIgnoreCase("playlist")) {
                    this.mMsg = this.mMsg + "\n" + MP3Songs.this.getResources().getString(2131099691);
                    Log.d((String)"MP3Songs", (String)this.mMsg);
                    return false;
                }
                var1_8 = 1;
                this.homes = new ArrayList<MP3Track>();
                var2_9 = 0;
            }
            catch (Exception var9_4) {
                Log.i((String)"MP3Songs", (String)("parse Error: " + var9_4.toString()));
                this.mMsg = this.mContext.getResources().getString(2131099691);
                return false;
            }
            block2 : do {
                block7 : {
                    var8_13 = var7_1;
                    if (var2_9 > var5_7) return var8_13;
                    var11_6 = var10_5.item(var2_9);
                    var4_11 = var1_8;
                    var8_13 = var7_1;
                    if (var11_6 == null) ** GOTO lbl71
                    if (var11_6.getNodeType() == 1) break block7;
                    var4_11 = var1_8;
                    var8_13 = var7_1;
                    ** GOTO lbl71
                }
                var4_11 = var1_8;
                var8_13 = var7_1;
                if (!var11_6.getNodeName().equalsIgnoreCase("trackList")) ** GOTO lbl71
                var11_6 = var11_6.getChildNodes();
                var6_12 = var11_6.getLength();
                var3_10 = 0;
                do {
                    block9 : {
                        block8 : {
                            block10 : {
                                var4_11 = var1_8;
                                var8_13 = var7_1;
                                if (var3_10 >= var6_12) break block8;
                                var12_14 = var11_6.item(var3_10);
                                var4_11 = var1_8;
                                var8_13 = var7_1;
                                if (var12_14 == null) break block9;
                                if (var12_14.getNodeType() == 1) break block10;
                                var4_11 = var1_8;
                                var8_13 = var7_1;
                                break block9;
                            }
                            var4_11 = var1_8;
                            var8_13 = var7_1;
                            if (!var12_14.getNodeName().equalsIgnoreCase("track")) break block9;
                            var13_15 = new MP3Track();
                            var4_11 = var1_8;
                            var8_13 = var7_1;
                            if (!var13_15.copyXML(var12_14, var9_3)) break block9;
                            var13_15.setId((long)var1_8);
                            var13_15.setArtist(MP3Songs.access$900(MP3Songs.this));
                            this.homes.add(var13_15);
                            var4_11 = var1_8 + 1;
                            var8_13 = true;
                            break block9;
                        }
                        ++var2_9;
                        var1_8 = var4_11;
                        var7_1 = var8_13;
                        continue block2;
                    }
                    ++var3_10;
                    var1_8 = var4_11;
                    var7_1 = var8_13;
                } while (true);
                break;
            } while (true);
        }

        /*
         * Enabled aggressive block sorting
         */
        protected void onPostExecute(Boolean iterator) {
            MP3Songs.this.mProgress.setVisibility(4);
            if (iterator != null && iterator.booleanValue()) {
                if (this.mMode == 2) {
                    MP3PlayerApp.homes = new ArrayList();
                    for (MP3Track mP3Track : this.homes) {
                        MP3PlayerApp.homes.add(mP3Track);
                    }
                } else if (this.mMode == 0) {
                    MP3Songs.this.localizeTracks(this.tracks);
                    MP3Songs.this.globalizeTracks(this.tracks);
                } else if (this.mMode == 1) {
                    MP3PlayerApp.playlist = new ArrayList();
                    for (MP3Playlist mP3Playlist : this.playlists) {
                        MP3PlayerApp.playlist.add(mP3Playlist);
                    }
                }
                MP3Songs.this.updateList();
                if (!this.mAuto) return;
                {
                    MP3Songs.this.autoPlay(this.mMode, this.mIndex);
                    return;
                }
            }
            if (this.mMsg == null) return;
            {
                Utils.toast((Context)MP3Songs.this, (String)this.mMsg);
                return;
            }
        }

        protected void onPreExecute() {
            super.onPreExecute();
            MP3Songs.this.mProgress.setVisibility(0);
        }
    }

    public class SongsPopupListAdapter
    extends BaseAdapter {
        Context mContext;
        List<SongsPopupItem> mItems;

        public SongsPopupListAdapter(Context context, List<SongsPopupItem> list) {
            this.mContext = context;
            this.mItems = list;
        }

        public int getCount() {
            return this.mItems.size();
        }

        public Object getItem(int n) {
            if (n >= 0 && n < this.getCount()) {
                return this.mItems.get(n);
            }
            return null;
        }

        public long getItemId(int n) {
            SongsPopupItem songsPopupItem = (SongsPopupItem)this.getItem(n);
            if (songsPopupItem != null) {
                return songsPopupItem.id;
            }
            return -1L;
        }

        public View getView(int n, View view, ViewGroup viewGroup) {
            viewGroup = view;
            view = viewGroup;
            if (viewGroup == null) {
                view = MP3Songs.this.getLayoutInflater().inflate(2130903051, null);
            }
            viewGroup = (TextView)view.findViewById(2131361804);
            SongsPopupItem songsPopupItem = (SongsPopupItem)this.getItem(n);
            if (songsPopupItem != null) {
                viewGroup.setText((CharSequence)songsPopupItem.title);
                return view;
            }
            viewGroup.setText((CharSequence)"");
            return view;
        }
    }

    private class SongsReceiver
    extends BroadcastReceiver {
        private SongsReceiver() {
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         * Lifted jumps to return sites
         */
        public void onReceive(Context var1_1, Intent var2_3) {
            block15 : {
                block17 : {
                    block16 : {
                        block18 : {
                            if (var2_3 == null) return;
                            try {
                                var1_1 = var2_3.getAction();
                                var3_4 = var2_3.getIntExtra("mode", -1);
                                if (var1_1.equals("com.rock.mp3player.intent.downloading") && MP3Songs.access$000(MP3Songs.this) == 1) {
                                    var5_5 = System.currentTimeMillis();
                                    if (MP3Songs.this.lastUpdate == 0L || var5_5 - MP3Songs.this.lastUpdate > 1000L) {
                                        MP3Songs.access$1600(MP3Songs.this).notifyDataSetChanged();
                                        MP3Songs.this.lastUpdate = var5_5;
                                    }
                                }
                                if (var1_1.equals("com.rock.mp3player.intent.downloaded")) {
                                    if (MP3Songs.access$000(MP3Songs.this) != 1) return;
                                    MP3Songs.access$1600(MP3Songs.this).notifyDataSetChanged();
                                    return;
                                }
                                if (var1_1.equals("com.rock.mp3player.intent.play")) {
                                    var5_5 = var2_3.getLongExtra("KEY_DATA", 0L);
                                    MP3Songs.access$1700(MP3Songs.this).setMax((int)(var5_5 / 1000L));
                                    MP3Songs.access$1700(MP3Songs.this).setSecondaryProgress(MP3Songs.access$1700(MP3Songs.this).getMax());
                                    return;
                                }
                                if (!var1_1.equals("com.rock.mp3player.intent.duration")) break block15;
                                var1_1 = var2_3.getStringExtra("KEY_MESSAGE");
                                if (MP3Songs.access$000(MP3Songs.this) != var3_4) break block16;
                                if (MP3Songs.access$000(MP3Songs.this) != 0) break block17;
                                if (MP3PlayerApp.currentArtistId != MP3Songs.access$900(MP3Songs.this)) break block18;
                                MP3Songs.access$1800(MP3Songs.this, (String)var1_1);
                                break block16;
                            }
                            catch (Exception var1_2) {
                                var1_2.printStackTrace();
                                return;
                            }
                        }
                        MP3Songs.access$1800(MP3Songs.this, MP3Songs.this.getResources().getString(2131099742));
                    }
lbl32: // 2 sources:
                    do {
                        var5_5 = var2_3.getLongExtra("KEY_DATA", 0L);
                        MP3Songs.access$1700(MP3Songs.this).setMax((int)(var5_5 / 1000L));
                        MP3Songs.access$1700(MP3Songs.this).setSecondaryProgress(MP3Songs.access$1700(MP3Songs.this).getMax());
                        return;
                        break;
                    } while (true);
                }
                MP3Songs.access$1800(MP3Songs.this, (String)var1_1);
                ** while (true)
            }
            if (var1_1.equals("com.rock.mp3player.intent.index")) {
                var1_1 = var2_3.getStringExtra("KEY_MESSAGE");
                var5_5 = var2_3.getLongExtra("KEY_DATA", 0L);
                MP3Songs.this.playButton(true);
                if (MP3Songs.access$000(MP3Songs.this) != var3_4) return;
                MP3Songs.access$1800(MP3Songs.this, (String)var1_1);
                MP3Songs.this.runOnUiThread(new Runnable(){

                    @Override
                    public void run() {
                        MP3Songs.this.showIndex((int)var5_5);
                    }
                });
                return;
            }
            if (var1_1.equals("com.rock.mp3player.intent.seek")) {
                if (MP3Songs.access$000(MP3Songs.this) != var3_4) return;
                MP3Songs.this.seeking = false;
                return;
            }
            if (var1_1.equals("com.rock.mp3player.intent.update")) {
                if (MP3Songs.access$000(MP3Songs.this) != var3_4) return;
                if (MP3Songs.this.seeking != false) return;
                var5_5 = var2_3.getLongExtra("KEY_DATA", 0L);
                if (var5_5 <= 0L) return;
                MP3Songs.access$1700(MP3Songs.this).setProgress((int)(var5_5 / 1000L));
                return;
            }
            if (var1_1.equals("com.rock.mp3player.intent.complete") != false) return;
            if (var1_1.equals("com.rock.mp3player.intent.exception")) {
                MP3Songs.this.playButton(false);
                if (MP3Songs.access$000(MP3Songs.this) != var3_4) return;
                MP3Songs.access$2000(MP3Songs.this);
                MP3Songs.this.showDialog(MP3Songs.this.getResources().getString(2131099690), MP3Songs.this.getResources().getString(2131099694));
                return;
            }
            if (var1_1.equals("com.rock.mp3player.intent.songs.tab")) {
                if (MP3Songs.access$000(MP3Songs.this) != 0) return;
                MP3Songs.access$902(MP3Songs.this, var2_3.getLongExtra("id", 0L));
                MP3Songs.access$1002(MP3Songs.this, var2_3.getStringExtra("name"));
                var3_4 = var2_3.getIntExtra("track", 0);
                MP3Songs.this.clearList();
                MP3Songs.this.loadTracks(var3_4, true);
                return;
            }
            if (var1_1.equals("com.rock.mp3player.intent.settings.changed") == false) return;
            if (MP3Songs.access$000(MP3Songs.this) == 1 || MP3Songs.access$000(MP3Songs.this) == 0 || (var3_4 = MP3Songs.access$000(MP3Songs.this)) == 2) {
                // empty if block
            }
            var3_4 = var2_3.getIntExtra("KEY_MODE", -1);
            var4_6 = var2_3.getIntExtra("KEY_PLAY_INDEX", 0);
            var7_7 = var2_3.getBooleanExtra("KEY_PLAYING", false);
            Log.i((String)"MP3Songs", (String)("mode: " + MP3Songs.access$000(MP3Songs.this) + " playmode: " + var3_4 + " autoplay: " + var7_7));
            if (var3_4 != MP3Songs.access$000(MP3Songs.this)) {
                var7_7 = false;
            }
            MP3Songs.access$2000(MP3Songs.this);
            MP3Songs.this.downloadTracks(MP3Songs.access$000(MP3Songs.this), var4_6, var7_7);
        }

    }

    public class TrackItemListener
    implements View.OnClickListener {
        public void onClick(View view) {
            Object object = view.getTag();
            if (object instanceof MP3Track) {
                MP3Songs.this.showPopup(view, object);
            }
        }
    }

    public class TrackPlayListener
    implements View.OnClickListener {
        public void onClick(View object) {
            if ((object = object.getTag()) instanceof Integer) {
                object = (Integer)object;
                MP3Songs.this.play(object.intValue());
                MP3PlayerApp.interstitial((Context)MP3Songs.this);
            }
        }
    }

}
