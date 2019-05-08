/*
 * Decompiled with CFR 0_131.
 * 
 * Could not load the following classes:
 *  android.os.CountDownTimer
 */
package com.akura.anime.activities;

import android.os.CountDownTimer;

class MP3Intro
extends CountDownTimer {
    MP3Intro(long l, long l2) {
        super(l, l2);
    }

    public void onFinish() {
        MP3Intro.this.startValidator();
    }

    public void onTick(long l) {
    }
}
