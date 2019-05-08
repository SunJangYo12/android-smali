/*
 * Decompiled with CFR 0_131.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.View$OnClickListener
 *  com.akura.anime.database.MP3Playlist
 */
package com.akura.anime.activities;

import android.view.View;
import com.akura.anime.activities.MP3Songs;
import com.akura.anime.database.MP3Playlist;

public class MP3Songs.PlaylistItemListener
implements View.OnClickListener {
    public void onClick(View view) {
        Object object = view.getTag();
        if (object instanceof MP3Playlist) {
            MP3Songs.this.showPopup(view, object);
        }
    }
}
