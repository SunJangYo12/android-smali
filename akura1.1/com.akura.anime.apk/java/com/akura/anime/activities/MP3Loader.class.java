/*
 * Decompiled with CFR 0_131.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.CountDownTimer
 *  android.view.View
 *  android.widget.ImageView
 *  com.akura.anime.MP3PlayerApp
 *  com.akura.anime.MP3PlayerService
 *  com.akura.anime.objects.MP3Genre
 *  com.akura.utils.Utils
 */
package com.akura.anime.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.ImageView;
import com.akura.anime.MP3PlayerApp;
import com.akura.anime.MP3PlayerService;
import com.akura.anime.activities.MP3Main;
import com.akura.anime.objects.MP3Genre;
import com.akura.utils.Utils;
import java.util.HashMap;
import java.util.List;

public class MP3Loader
extends Activity {
    private static final long SPLASH_DELAY = 0L;
    public static final String TAG = "MP3Loader";
    private MP3Genre mGenre;
    private ImageView mImageGenre;

    public void close() {
        this.stopService(new Intent((Context)this, MP3PlayerService.class));
        this.finish();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.overridePendingTransition(17432576, 17432577);
        this.setContentView(2130903048);
        this.mImageGenre = (ImageView)this.findViewById(2131361815);
        this.mGenre = MP3PlayerApp.getCurrentGenre((Context)this);
        if (this.mGenre == null) {
            Utils.toast((Context)this, (String)"Invalid genre!");
            this.close();
            return;
        }
        this.mImageGenre.setImageResource(this.mGenre.image);
        this.stopService(new Intent((Context)this, MP3PlayerService.class));
        this.startCount();
    }

    protected void onDestroy() {
        super.onDestroy();
    }

    protected void onResume() {
        super.onResume();
    }

    public void reset() {
        if (MP3PlayerApp.alltracks != null) {
            MP3PlayerApp.alltracks.clear();
        }
        if (MP3PlayerApp.homes != null) {
            MP3PlayerApp.homes.clear();
        }
        if (MP3PlayerApp.playlist != null) {
            MP3PlayerApp.playlist.clear();
        }
    }

    public void startApp() {
        this.startActivity(new Intent((Context)this, MP3Main.class));
        this.finish();
        this.overridePendingTransition(17432576, 17432577);
    }

    public void startCount() {
        new CountDownTimer(0L, 100L){

            public void onFinish() {
                MP3Loader.this.reset();
                MP3Loader.this.startApp();
            }

            public void onTick(long l) {
            }
        }.start();
    }

}
