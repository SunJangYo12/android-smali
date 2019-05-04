.class public Lcom/akura/anime/activities/MP3Main;
.super Landroid/app/TabActivity;
.source "MP3Main.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akura/anime/activities/MP3Main$MainReceiver;
    }
.end annotation


# static fields
.field public static final ID_ARTISTS:Ljava/lang/String; = "Anime"

.field public static final ID_CLOSE:Ljava/lang/String; = "Close"

.field public static final ID_FACEBOOK:Ljava/lang/String; = "Facebook"

.field public static final ID_GENRE:Ljava/lang/String; = "Genre"

.field public static final ID_HOME:Ljava/lang/String; = "Home"

.field public static final ID_PLAYLISTS:Ljava/lang/String; = "Playlist"

.field public static final ID_SEARCH:Ljava/lang/String; = "Search"

.field public static final ID_SHARE:Ljava/lang/String; = "Share"

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x20

.field public static final TAG:Ljava/lang/String; = "Main"


# instance fields
.field private adInter1Queued:Z

.field private adInter2Queued:Z

.field private handler:Landroid/os/Handler;

.field private hscroll:Landroid/widget/HorizontalScrollView;

.field private mAdInt1:Lcom/google/android/gms/ads/InterstitialAd;

.field private mAdInt2:Lcom/google/android/gms/ads/InterstitialAd;

.field private mBroadcast:Lcom/akura/anime/activities/MP3Main$MainReceiver;

.field private mLastTab:Ljava/lang/String;

.field private mScroller:Lcom/akura/utils/TabScroller;

.field private tab:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 53
    const-string v0, "Home"

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mLastTab:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/akura/anime/activities/MP3Main;->adInter1Queued:Z

    .line 63
    iput-boolean v1, p0, Lcom/akura/anime/activities/MP3Main;->adInter2Queued:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Main;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/akura/anime/activities/MP3Main;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Main;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$202(Lcom/akura/anime/activities/MP3Main;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Main;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/akura/anime/activities/MP3Main;->adInter1Queued:Z

    return p1
.end method

.method static synthetic access$302(Lcom/akura/anime/activities/MP3Main;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Main;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/akura/anime/activities/MP3Main;->adInter2Queued:Z

    return p1
.end method

.method private checkPlayServices()Z
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 285
    .local v0, "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 286
    .local v1, "resultCode":I
    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const/16 v2, 0x20

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 297
    :cond_0
    const/4 v2, 0x0

    .line 299
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createTab(Landroid/content/Intent;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 202
    .local v1, "inflator":Landroid/view/LayoutInflater;
    const v5, 0x7f03000e

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 203
    .local v3, "tabview":Landroid/view/View;
    const v5, 0x7f0a0023

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 204
    .local v4, "text":Landroid/widget/TextView;
    const v5, 0x7f0a0022

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 205
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    invoke-virtual {v5, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 209
    .local v2, "spec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 210
    invoke-virtual {v2, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 211
    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Main;->stopService(Landroid/content/Intent;)Z

    .line 353
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->finish()V

    .line 354
    return-void
.end method

.method public loadAd1()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt1:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 451
    return-void
.end method

.method public loadAd2()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt2:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 474
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/akura/anime/activities/MP3Main$1;

    invoke-direct {v0, p0}, Lcom/akura/anime/activities/MP3Main$1;-><init>(Lcom/akura/anime/activities/MP3Main;)V

    invoke-static {p0, v0}, Lcom/akura/anime/MP3PlayerApp;->finishAsk(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x2

    .line 69
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->mMain:Lcom/akura/anime/activities/MP3Main;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->mMain:Lcom/akura/anime/activities/MP3Main;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Main;->finish()V

    .line 76
    :cond_0
    sput-object p0, Lcom/akura/anime/MP3PlayerApp;->mMain:Lcom/akura/anime/activities/MP3Main;

    .line 78
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "mode"

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 79
    .local v7, "mode":I
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "id"

    invoke-virtual {v0, v8, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 80
    .local v2, "artistId":J
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "name"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "artistName":Ljava/lang/String;
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Main;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->setupAd()V

    .line 86
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Main;->hscroll:Landroid/widget/HorizontalScrollView;

    .line 88
    new-instance v0, Lcom/akura/utils/TabScroller;

    iget-object v8, p0, Lcom/akura/anime/activities/MP3Main;->hscroll:Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0, v8}, Lcom/akura/utils/TabScroller;-><init>(Landroid/app/Activity;Landroid/widget/HorizontalScrollView;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mScroller:Lcom/akura/utils/TabScroller;

    .line 90
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    .line 97
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "mode"

    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v8, "auto"

    if-ne v7, v10, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v8, "Home"

    const v9, 0x7f020051

    invoke-direct {p0, v6, v8, v9}, Lcom/akura/anime/activities/MP3Main;->createTab(Landroid/content/Intent;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 102
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-class v0, Lcom/akura/anime/activities/MP3MainArtists;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .restart local v6    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v8, "Anime"

    const v9, 0x7f02004a

    invoke-direct {p0, v6, v8, v9}, Lcom/akura/anime/activities/MP3Main;->createTab(Landroid/content/Intent;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 105
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-class v0, Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v0, "mode"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v8, "Playlist"

    const v9, 0x7f020052

    invoke-direct {p0, v6, v8, v9}, Lcom/akura/anime/activities/MP3Main;->createTab(Landroid/content/Intent;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 109
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-class v0, Lcom/akura/anime/activities/MP3Search;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .restart local v6    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v8, "Search"

    const v9, 0x7f020053

    invoke-direct {p0, v6, v8, v9}, Lcom/akura/anime/activities/MP3Main;->createTab(Landroid/content/Intent;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 112
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-class v0, Lcom/akura/anime/activities/MP3Web;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v0, "title"

    const-string v8, "Facebook"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v0, "url"

    const-string v8, "https://www.facebook.com/FreeAnimeMusic/"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v8, "Facebook"

    const v9, 0x7f02004f

    invoke-direct {p0, v6, v8, v9}, Lcom/akura/anime/activities/MP3Main;->createTab(Landroid/content/Intent;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 123
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-class v0, Lcom/akura/anime/activities/MP3Share;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .restart local v6    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v8, "Share"

    const v9, 0x7f020055

    invoke-direct {p0, v6, v8, v9}, Lcom/akura/anime/activities/MP3Main;->createTab(Landroid/content/Intent;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 129
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-class v0, Lcom/akura/anime/activities/MP3Close;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .restart local v6    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v8, "Close"

    const v9, 0x7f02004e

    invoke-direct {p0, v6, v8, v9}, Lcom/akura/anime/activities/MP3Main;->createTab(Landroid/content/Intent;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 132
    if-ne v7, v10, :cond_3

    .line 134
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v1, "Anime"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v1, "Home"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 151
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->register()V

    .line 154
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mScroller:Lcom/akura/utils/TabScroller;

    invoke-virtual {v0}, Lcom/akura/utils/TabScroller;->start()V

    .line 156
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->loadAd1()V

    .line 157
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->loadAd2()V

    .line 159
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Main;->checkPlayServices()Z

    .line 162
    return-void

    :cond_2
    move v0, v5

    .line 99
    goto/16 :goto_0

    .line 137
    :cond_3
    if-nez v7, :cond_4

    .line 139
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v1, "Anime"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 141
    cmp-long v0, v2, v12

    if-eqz v0, :cond_1

    .line 143
    const-string v1, "Artists"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/akura/anime/MP3PlayerApp;->switchArtistsTab(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_1

    .line 146
    :cond_4
    if-ne v7, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v1, "Playlist"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 184
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Main;->mScroller:Lcom/akura/utils/TabScroller;

    invoke-virtual {v1}, Lcom/akura/utils/TabScroller;->stop()V

    .line 185
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->unregister()V

    .line 187
    sget-boolean v1, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-nez v1, :cond_0

    .line 189
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerService;->cancelNotification(Landroid/content/Context;)V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Main;->stopService(Landroid/content/Intent;)Z

    .line 197
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 230
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 234
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 169
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "tabId":Ljava/lang/String;
    const-string v1, "Share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Main;->mLastTab:Ljava/lang/String;

    const-string v2, "Share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    const-string v2, "Home"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Main;->mLastTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Main;->mScroller:Lcom/akura/utils/TabScroller;

    invoke-virtual {v1}, Lcom/akura/utils/TabScroller;->restart()V

    .line 242
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Main;->hscroll:Landroid/widget/HorizontalScrollView;

    invoke-static {p0, v1}, Lcom/akura/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 244
    const-string v1, "Share"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "Anime Music! - Musica Anime!\nhttps://play.google.com/store/apps/details?id=com.akura.anime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "Share this app via"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akura/anime/activities/MP3Main;->startActivity(Landroid/content/Intent;)V

    .line 266
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->interstitial(Landroid/content/Context;)V

    .line 267
    :goto_1
    return-void

    .line 252
    :cond_0
    const-string v1, "Close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Main;->stopService(Landroid/content/Intent;)Z

    .line 258
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Main;->finish()V

    goto :goto_1

    .line 263
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Main;->mLastTab:Ljava/lang/String;

    goto :goto_0
.end method

.method public queueAd1()V
    .locals 4

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/akura/anime/activities/MP3Main;->adInter1Queued:Z

    if-eqz v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akura/anime/activities/MP3Main;->adInter1Queued:Z

    .line 435
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/akura/anime/activities/MP3Main$4;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Main$4;-><init>(Lcom/akura/anime/activities/MP3Main;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public queueAd2()V
    .locals 4

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/akura/anime/activities/MP3Main;->adInter2Queued:Z

    if-eqz v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akura/anime/activities/MP3Main;->adInter2Queued:Z

    .line 458
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/akura/anime/activities/MP3Main$5;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Main$5;-><init>(Lcom/akura/anime/activities/MP3Main;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 305
    new-instance v1, Lcom/akura/anime/activities/MP3Main$MainReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/akura/anime/activities/MP3Main$MainReceiver;-><init>(Lcom/akura/anime/activities/MP3Main;Lcom/akura/anime/activities/MP3Main$1;)V

    iput-object v1, p0, Lcom/akura/anime/activities/MP3Main;->mBroadcast:Lcom/akura/anime/activities/MP3Main$MainReceiver;

    .line 307
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.rock.mp3player.intent.main.switch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "com.rock.mp3player.intent.ad"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v1, "com.rock.mp3player.intent.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Main;->mBroadcast:Lcom/akura/anime/activities/MP3Main$MainReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/akura/anime/activities/MP3Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    return-void
.end method

.method public setupAd()V
    .locals 2

    .prologue
    .line 358
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt1:Lcom/google/android/gms/ads/InterstitialAd;

    .line 359
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt1:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v1, "ca-app-pub-7313160148273812/3567094682"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 361
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt2:Lcom/google/android/gms/ads/InterstitialAd;

    .line 362
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt2:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v1, "ca-app-pub-7313160148273812/3567094682"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt1:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/akura/anime/activities/MP3Main$2;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Main$2;-><init>(Lcom/akura/anime/activities/MP3Main;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 392
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt2:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/akura/anime/activities/MP3Main$3;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Main$3;-><init>(Lcom/akura/anime/activities/MP3Main;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 416
    return-void
.end method

.method public showAd()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt1:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt1:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt2:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mAdInt2:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mBroadcast:Lcom/akura/anime/activities/MP3Main$MainReceiver;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mBroadcast:Lcom/akura/anime/activities/MP3Main$MainReceiver;

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Main;->mBroadcast:Lcom/akura/anime/activities/MP3Main$MainReceiver;

    .line 321
    :cond_0
    return-void
.end method
