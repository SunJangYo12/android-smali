/*
 * Decompiled with CFR 0_131.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ActivityNotFoundException
 *  android.content.Context
 *  android.content.Intent
 *  android.net.Uri
 *  android.os.AsyncTask
 *  android.os.Bundle
 *  android.os.CountDownTimer
 *  android.util.Log
 *  com.akura.anime.MP3Prefs
 *  com.akura.utils.Utils
 *  org.json.JSONArray
 *  org.json.JSONObject
 *  org.json.JSONTokener
 */
package com.akura.anime.activities;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import com.akura.anime.MP3Prefs;
import com.akura.anime.activities.MP3Loader;
import com.akura.utils.Utils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

public class MP3Intro
extends Activity {
    private static final long SPLASH_DELAY = 3000L;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.overridePendingTransition(17432576, 17432577);
        this.setContentView(2130903047);
        this.startIntro();
    }

    protected void onDestroy() {
        super.onDestroy();
    }

    protected void onResume() {
        super.onResume();
    }

    public void openBrowser(String string) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse((String)string));
        intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
        this.startActivity(intent);
    }

    public void openGooglePlay(String string) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse((String)("market://details?id=" + string)));
        this.startActivity(intent);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void startAd(String string) {
        String string2 = Uri.parse((String)string).getQueryParameter("id");
        if (string2 == null || string2.length() == 0) {
            this.openBrowser(string);
        } else {
            try {
                this.openGooglePlay(string2);
            }
            catch (ActivityNotFoundException activityNotFoundException) {
                this.openBrowser(string);
            }
        }
        this.finish();
        this.overridePendingTransition(17432576, 17432577);
    }

    public void startApp() {
        this.startActivity(new Intent((Context)this, MP3Loader.class));
        this.finish();
        this.overridePendingTransition(17432576, 17432577);
    }

    public void startIntro() {
        new CountDownTimer(3000L, 100L){

            public void onFinish() {
                MP3Intro.this.startValidator();
            }

            public void onTick(long l) {
            }
        }.start();
    }

    public void startMain() {
        if (MP3Prefs.getGenre((Context)this) == 0) {
            this.startValidator();
            return;
        }
        this.startApp();
    }

    public void startValidator() {
        new AdLoader((Context)this).execute((Object[])new Void[0]);
    }

    private class AdLoader
    extends AsyncTask<Void, String, Boolean> {
        private Context mContext;
        String mLink = "";
        int mValidator = 0;

        public AdLoader(Context context) {
            this.mContext = context;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        protected /* varargs */ Boolean doInBackground(Void ... object) {
            block8 : {
                object = Utils.getUrl((String)"http://www.musicagratis.co/scripts/resources/app/validates/validate-am4.php");
                if (object == null) {
                    return false;
                }
                if ((object = new String((byte[])object).trim()).length() == 0) {
                    return false;
                }
                try {
                    object = new JSONObject(new JSONTokener((String)object));
                    if (object == null) break block8;
                }
                catch (Exception exception) {
                    Log.i((String)"err", (String)exception.toString());
                    return false;
                }
                if (!object.has("result") || !object.has("data") || !object.getString("result").equalsIgnoreCase("success") || (object = object.getJSONArray("data")) == null) break block8;
                object = object.getJSONObject(0);
                if (object == null) break block8;
                this.mValidator = object.getInt("validator");
                this.mLink = object.getString("url");
            }
            do {
                return false;
                break;
            } while (true);
        }

        protected void onPostExecute(Boolean bl) {
            if (this.mValidator == 0) {
                MP3Intro.this.startApp();
                return;
            }
            MP3Intro.this.startAd(this.mLink);
        }

        protected void onPreExecute() {
            super.onPreExecute();
        }
    }

}
