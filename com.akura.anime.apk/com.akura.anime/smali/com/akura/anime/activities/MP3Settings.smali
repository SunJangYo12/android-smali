.class public Lcom/akura/anime/activities/MP3Settings;
.super Landroid/app/Activity;
.source "MP3Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_ITEM_CLOSE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MP3Settings"


# instance fields
.field private mAd:Lcom/google/android/gms/ads/AdView;

.field private mQuality:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Settings;->mAd:Lcom/google/android/gms/ads/AdView;

    return-void
.end method

.method private settingsChanged()V
    .locals 5

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "index":I
    sget v3, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    .line 99
    .local v3, "mode":I
    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    .line 101
    .local v0, "auto":Z
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 102
    sget v1, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    .line 108
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.rock.mp3player.intent.settings.changed"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "KEY_PLAY_INDEX"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v4, "KEY_MODE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v4, "KEY_PLAYING"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Settings;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void

    .line 103
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    if-nez v3, :cond_2

    .line 104
    sget v1, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    goto :goto_0

    .line 105
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 106
    sget v1, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Settings;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/akura/anime/activities/MP3Settings;->overridePendingTransition(II)V

    .line 36
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Settings;->setContentView(I)V

    .line 38
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Settings;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 39
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Settings;->mAd:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 45
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Settings;->updateState()V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 120
    const/4 v0, 0x2

    const v1, 0x7f060024

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Settings;->mAd:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Settings;->mAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 69
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 131
    :pswitch_0
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->close(Landroid/content/Context;)V

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    return-void
.end method
