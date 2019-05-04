/*
 * Decompiled with CFR 0_131.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Dialog
 *  android.app.TabActivity
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.os.Bundle
 *  android.os.Handler
 *  android.util.Log
 *  android.view.LayoutInflater
 *  android.view.Menu
 *  android.view.MenuItem
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.HorizontalScrollView
 *  android.widget.ImageView
 *  android.widget.TabHost
 *  android.widget.TabHost$OnTabChangeListener
 *  android.widget.TabHost$TabSpec
 *  android.widget.TextView
 *  com.akura.anime.MP3PlayerApp
 *  com.akura.anime.MP3PlayerService
 *  com.akura.utils.TabScroller
 *  com.akura.utils.Utils
 *  com.google.android.gms.ads.AdListener
 *  com.google.android.gms.ads.AdRequest
 *  com.google.android.gms.ads.AdRequest$Builder
 *  com.google.android.gms.ads.InterstitialAd
 *  com.google.android.gms.common.GoogleApiAvailability
 */
package com.akura.anime.activities;

import android.app.Activity;
import android.app.Dialog;
import android.app.TabActivity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TextView;
import com.akura.anime.MP3PlayerApp;
import com.akura.anime.MP3PlayerService;
import com.akura.anime.activities.MP3Close;
import com.akura.anime.activities.MP3MainArtists;
import com.akura.anime.activities.MP3Search;
import com.akura.anime.activities.MP3Share;
import com.akura.anime.activities.MP3Songs;
import com.akura.anime.activities.MP3Web;
import com.akura.utils.TabScroller;
import com.akura.utils.Utils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.common.GoogleApiAvailability;

public class MP3Main
extends TabActivity
implements TabHost.OnTabChangeListener {
    public static final String ID_ARTISTS = "Anime";
    public static final String ID_CLOSE = "Close";
    public static final String ID_FACEBOOK = "Facebook";
    public static final String ID_GENRE = "Genre";
    public static final String ID_HOME = "Home";
    public static final String ID_PLAYLISTS = "Playlist";
    public static final String ID_SEARCH = "Search";
    public static final String ID_SHARE = "Share";
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 32;
    public static final String TAG = "Main";
    private boolean adInter1Queued = false;
    private boolean adInter2Queued = false;
    private Handler handler = new Handler();
    private HorizontalScrollView hscroll;
    private InterstitialAd mAdInt1;
    private InterstitialAd mAdInt2;
    private MainReceiver mBroadcast;
    private String mLastTab = "Home";
    private TabScroller mScroller;
    private TabHost tab;

    private boolean checkPlayServices() {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        int n = googleApiAvailability.isGooglePlayServicesAvailable((Context)this);
        if (n != 0) {
            if (googleApiAvailability.isUserResolvableError(n)) {
                googleApiAvailability.getErrorDialog((Activity)this, n, 32).show();
            }
            return false;
        }
        return true;
    }

    private TabHost.TabSpec createTab(Intent intent, String string, int n) {
        View view = this.getLayoutInflater().inflate(2130903054, null);
        TextView textView = (TextView)view.findViewById(2131361827);
        ImageView imageView = (ImageView)view.findViewById(2131361826);
        textView.setText((CharSequence)string);
        imageView.setImageResource(n);
        string = this.tab.newTabSpec(string);
        string.setIndicator(view);
        string.setContent(intent);
        return string;
    }

    public void close() {
        this.stopService(new Intent((Context)this, MP3PlayerService.class));
        this.finish();
    }

    public void loadAd1() {
        this.mAdInt1.loadAd(new AdRequest.Builder().build());
    }

    public void loadAd2() {
        this.mAdInt2.loadAd(new AdRequest.Builder().build());
    }

    public void onBackPressed() {
        MP3PlayerApp.finishAsk((Context)this, (Runnable)new Runnable(){

            @Override
            public void run() {
                MP3Main.this.close();
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onCreate(Bundle object) {
        super.onCreate(object);
        if (MP3PlayerApp.mMain != null) {
            MP3PlayerApp.mMain.finish();
        }
        MP3PlayerApp.mMain = this;
        int n = this.getIntent().getIntExtra("mode", 2);
        long l = this.getIntent().getLongExtra("id", -1L);
        String string = this.getIntent().getStringExtra("name");
        this.setContentView(2130903049);
        this.setupAd();
        this.hscroll = (HorizontalScrollView)this.findViewById(2131361817);
        this.mScroller = new TabScroller((Activity)this, this.hscroll);
        this.tab = this.getTabHost();
        Intent intent = new Intent((Context)this, MP3Songs.class);
        intent.putExtra("mode", 2);
        boolean bl = n == 2;
        intent.putExtra("auto", bl);
        this.tab.addTab(this.createTab(intent, ID_HOME, 2130837585));
        intent = new Intent((Context)this, MP3MainArtists.class);
        this.tab.addTab(this.createTab(intent, ID_ARTISTS, 2130837578));
        intent = new Intent((Context)this, MP3Songs.class);
        intent.putExtra("mode", 1);
        this.tab.addTab(this.createTab(intent, ID_PLAYLISTS, 2130837586));
        intent = new Intent((Context)this, MP3Search.class);
        this.tab.addTab(this.createTab(intent, ID_SEARCH, 2130837587));
        intent = new Intent((Context)this, MP3Web.class);
        intent.putExtra("title", ID_FACEBOOK);
        intent.putExtra("url", "https://www.facebook.com/FreeAnimeMusic/");
        this.tab.addTab(this.createTab(intent, ID_FACEBOOK, 2130837583));
        intent = new Intent((Context)this, MP3Share.class);
        this.tab.addTab(this.createTab(intent, ID_SHARE, 2130837589));
        intent = new Intent((Context)this, MP3Close.class);
        this.tab.addTab(this.createTab(intent, ID_CLOSE, 2130837582));
        if (n == 2) {
            this.tab.setCurrentTabByTag(ID_ARTISTS);
            this.tab.setCurrentTabByTag(ID_HOME);
        } else if (n == 0) {
            this.tab.setCurrentTabByTag(ID_ARTISTS);
            if (l != -1L) {
                MP3PlayerApp.switchArtistsTab((Context)this, (String)"Artists", (long)l, (String)string, (int)0);
            }
        } else if (n == 1) {
            this.tab.setCurrentTabByTag(ID_PLAYLISTS);
        }
        this.tab.setOnTabChangedListener((TabHost.OnTabChangeListener)this);
        this.register();
        this.mScroller.start();
        this.loadAd1();
        this.loadAd2();
        this.checkPlayServices();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    protected void onDestroy() {
        super.onDestroy();
        this.mScroller.stop();
        this.unregister();
        if (!MP3PlayerService.isStartedPlay) {
            MP3PlayerService.cancelNotification((Context)this);
            this.stopService(new Intent((Context)this, MP3PlayerService.class));
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getItemId();
        return super.onOptionsItemSelected(menuItem);
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        return super.onPrepareOptionsMenu(menu);
    }

    protected void onResume() {
        block3 : {
            block2 : {
                super.onResume();
                if (!this.tab.getCurrentTabTag().equals(ID_SHARE)) break block2;
                if (!this.mLastTab.equals(ID_SHARE)) break block3;
                this.tab.setCurrentTabByTag(ID_HOME);
            }
            return;
        }
        this.tab.setCurrentTabByTag(this.mLastTab);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onTabChanged(String string) {
        this.mScroller.restart();
        Utils.hideKeyboard((Context)this, (View)this.hscroll);
        if (string.equals(ID_SHARE)) {
            string = new Intent();
            string.setAction("android.intent.action.SEND");
            string.putExtra("android.intent.extra.TEXT", "Anime Music! - Musica Anime!\nhttps://play.google.com/store/apps/details?id=com.akura.anime");
            string.setType("text/plain");
            this.startActivity(Intent.createChooser((Intent)string, (CharSequence)"Share this app via"));
        } else {
            if (string.equals(ID_CLOSE)) {
                this.stopService(new Intent((Context)this, MP3PlayerService.class));
                this.finish();
                return;
            }
            this.mLastTab = string;
        }
        MP3PlayerApp.interstitial((Context)this);
    }

    public void queueAd1() {
        if (this.adInter1Queued) {
            return;
        }
        this.adInter1Queued = true;
        this.handler.postDelayed(new Runnable(){

            @Override
            public void run() {
                MP3Main.this.adInter1Queued = false;
                MP3Main.this.loadAd1();
            }
        }, 3000L);
    }

    public void queueAd2() {
        if (this.adInter2Queued) {
            return;
        }
        this.adInter2Queued = true;
        this.handler.postDelayed(new Runnable(){

            @Override
            public void run() {
                MP3Main.this.adInter2Queued = false;
                MP3Main.this.loadAd2();
            }
        }, 3000L);
    }

    public void register() {
        this.mBroadcast = new MainReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.rock.mp3player.intent.main.switch");
        intentFilter.addAction("com.rock.mp3player.intent.ad");
        intentFilter.addAction("com.rock.mp3player.intent.close");
        this.registerReceiver((BroadcastReceiver)this.mBroadcast, intentFilter);
    }

    public void setupAd() {
        this.mAdInt1 = new InterstitialAd((Context)this);
        this.mAdInt1.setAdUnitId("ca-app-pub-7313160148273812/3567094682");
        this.mAdInt2 = new InterstitialAd((Context)this);
        this.mAdInt2.setAdUnitId("ca-app-pub-7313160148273812/3567094682");
        this.mAdInt1.setAdListener(new AdListener(){

            public void onAdClosed() {
                MP3Main.this.loadAd1();
            }

            public void onAdFailedToLoad(int n) {
                Log.i((String)MP3Main.TAG, (String)"interstitial ad failed");
                MP3Main.this.queueAd1();
            }

            public void onAdLeftApplication() {
            }

            public void onAdLoaded() {
                Log.i((String)MP3Main.TAG, (String)"********* onReceiveAd 1");
            }

            public void onAdOpened() {
            }
        });
        this.mAdInt2.setAdListener(new AdListener(){

            public void onAdClosed() {
                MP3Main.this.loadAd2();
            }

            public void onAdFailedToLoad(int n) {
                Log.i((String)MP3Main.TAG, (String)"interstitial ad failed");
                MP3Main.this.queueAd2();
            }

            public void onAdLeftApplication() {
            }

            public void onAdLoaded() {
                Log.i((String)MP3Main.TAG, (String)"********* onReceiveAd 2");
            }

            public void onAdOpened() {
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    public void showAd() {
        if (this.mAdInt1.isLoaded()) {
            this.mAdInt1.show();
            return;
        } else {
            if (!this.mAdInt2.isLoaded()) return;
            {
                this.mAdInt2.show();
                return;
            }
        }
    }

    public void unregister() {
        if (this.mBroadcast != null) {
            this.unregisterReceiver((BroadcastReceiver)this.mBroadcast);
            this.mBroadcast = null;
        }
    }

    private class MainReceiver
    extends BroadcastReceiver {
        private MainReceiver() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onReceive(Context object, Intent intent) {
            if (intent == null) return;
            {
                object = intent.getAction();
                if (object.equals("com.rock.mp3player.intent.main.switch")) {
                    object = intent.getStringExtra("tab");
                    MP3Main.this.tab.setCurrentTabByTag((String)object);
                    return;
                } else {
                    if (object.equals("com.rock.mp3player.intent.ad")) {
                        MP3Main.this.showAd();
                        return;
                    }
                    if (!object.equals("com.rock.mp3player.intent.close")) return;
                    {
                        MP3Main.this.close();
                        return;
                    }
                }
            }
        }
    }

}
