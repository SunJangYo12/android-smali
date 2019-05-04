.class public Lcom/akura/anime/activities/MP3Songs;
.super Landroid/app/Activity;
.source "MP3Songs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;,
        Lcom/akura/anime/activities/MP3Songs$PlaylistItemListener;,
        Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;,
        Lcom/akura/anime/activities/MP3Songs$TrackItemListener;,
        Lcom/akura/anime/activities/MP3Songs$SongsReceiver;,
        Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;,
        Lcom/akura/anime/activities/MP3Songs$SongsLoader;,
        Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;
    }
.end annotation


# static fields
.field private static final MENU_ITEM_CLOSE:I = 0x2

.field private static final MENU_ITEM_RELOAD:I = 0x1

.field public static final MODE_HOME:I = 0x2

.field public static final MODE_PLAYLIST:I = 0x1

.field public static final MODE_TRACK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MP3Songs"


# instance fields
.field private adapter:Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;

.field private artistId:J

.field private artistName:Ljava/lang/String;

.field public lastUpdate:J

.field private localTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Track;",
            ">;"
        }
    .end annotation
.end field

.field private mAd:Lcom/google/android/gms/ads/AdView;

.field private mBroadcast:Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

.field private mContext:Landroid/content/Context;

.field private mList:Landroid/widget/ListView;

.field private mPlay:Landroid/widget/ImageButton;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRepeat:Landroid/widget/ImageButton;

.field private mScroller:Lcom/akura/utils/Scroller;

.field private mSeek:Landroid/widget/SeekBar;

.field private mShuffle:Landroid/widget/ImageButton;

.field private mTask:Lcom/akura/anime/activities/MP3Songs$SongsLoader;

.field private mode:I

.field private playlistListener:Lcom/akura/anime/activities/MP3Songs$PlaylistItemListener;

.field private playlistPlayListener:Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;

.field protected seeking:Z

.field private trackAddListener:Lcom/akura/anime/activities/MP3Songs$TrackItemListener;

.field private trackPlayListener:Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    iput-object v2, p0, Lcom/akura/anime/activities/MP3Songs;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 92
    iput v3, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akura/anime/activities/MP3Songs;->artistId:J

    .line 94
    iput-object v2, p0, Lcom/akura/anime/activities/MP3Songs;->artistName:Ljava/lang/String;

    .line 96
    iput-boolean v3, p0, Lcom/akura/anime/activities/MP3Songs;->seeking:Z

    .line 109
    iput-object v2, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/akura/anime/activities/MP3Songs;->lastUpdate:J

    return-void
.end method

.method static synthetic access$000(Lcom/akura/anime/activities/MP3Songs;)I
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget v0, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/akura/anime/activities/MP3Songs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs;->artistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/akura/anime/activities/MP3Songs;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->localTracks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->trackPlayListener:Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$TrackItemListener;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->trackAddListener:Lcom/akura/anime/activities/MP3Songs$TrackItemListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->playlistPlayListener:Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$PlaylistItemListener;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->playlistListener:Lcom/akura/anime/activities/MP3Songs$PlaylistItemListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->adapter:Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/akura/anime/activities/MP3Songs;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/akura/anime/activities/MP3Songs;I)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/akura/anime/activities/MP3Songs;->showIndex(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mPlay:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/akura/anime/activities/MP3Songs;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->stop()V

    return-void
.end method

.method static synthetic access$2100(Lcom/akura/anime/activities/MP3Songs;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/akura/anime/activities/MP3Songs;->showPopup(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/utils/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akura/anime/activities/MP3Songs;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->closePopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akura/anime/activities/MP3Songs;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/akura/anime/activities/MP3Songs;->localizeTracks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/akura/anime/activities/MP3Songs;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/akura/anime/activities/MP3Songs;->globalizeTracks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/akura/anime/activities/MP3Songs;II)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/akura/anime/activities/MP3Songs;->autoPlay(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/akura/anime/activities/MP3Songs;)J
    .locals 2
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/akura/anime/activities/MP3Songs;->artistId:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/akura/anime/activities/MP3Songs;J)J
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/akura/anime/activities/MP3Songs;->artistId:J

    return-wide p1
.end method

.method private autoPlay(II)V
    .locals 4
    .param p1, "mMode"    # I
    .param p2, "mIndex"    # I

    .prologue
    .line 453
    if-nez p1, :cond_1

    .line 455
    sget-boolean v2, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-nez v2, :cond_0

    .line 457
    invoke-virtual {p0, p2}, Lcom/akura/anime/activities/MP3Songs;->play(I)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 462
    sget-boolean v2, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-nez v2, :cond_0

    .line 464
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 465
    .local v1, "rnd":Ljava/util/Random;
    sget-object v2, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 467
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->play(I)V

    goto :goto_0

    .line 470
    .end local v0    # "i":I
    .end local v1    # "rnd":Ljava/util/Random;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 472
    sget-boolean v2, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-nez v2, :cond_0

    .line 474
    invoke-virtual {p0, p2}, Lcom/akura/anime/activities/MP3Songs;->play(I)V

    goto :goto_0
.end method

.method private closePopup()V
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 808
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    .line 810
    :cond_1
    return-void
.end method

.method private globalizeTracks(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v0, "newTracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akura/anime/database/MP3Track;

    .line 493
    .local v1, "track":Lcom/akura/anime/database/MP3Track;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    .end local v1    # "track":Lcom/akura/anime/database/MP3Track;
    :cond_0
    sget-object v2, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 497
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    .line 498
    :cond_1
    sget-object v2, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/akura/anime/activities/MP3Songs;->artistId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    return-void
.end method

.method private localizeTracks(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->localTracks:Ljava/util/List;

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/database/MP3Track;

    .line 484
    .local v0, "track":Lcom/akura/anime/database/MP3Track;
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs;->localTracks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    .end local v0    # "track":Lcom/akura/anime/database/MP3Track;
    :cond_0
    return-void
.end method

.method private onProgressUpdate(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "progress"    # I

    .prologue
    .line 772
    return-void
.end method

.method private pause()V
    .locals 4

    .prologue
    .line 695
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akura/utils/Scroller;->stop(Ljava/lang/String;)V

    .line 697
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 698
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v1, "mode"

    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 702
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V

    .line 703
    return-void
.end method

.method private resume()V
    .locals 3

    .prologue
    .line 707
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 708
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "resume"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v1, "mode"

    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 712
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V

    .line 713
    return-void
.end method

.method private showIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 730
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 734
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 736
    :cond_0
    return-void
.end method

.method private showPopup(Landroid/view/View;Ljava/lang/Object;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->closePopup()V

    .line 816
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 817
    .local v5, "popupView":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 818
    .local v3, "para":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    const v7, 0x7f0a000e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 821
    .local v2, "listView":Landroid/widget/ListView;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 823
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 827
    instance-of v7, p2, Lcom/akura/anime/database/MP3Playlist;

    if-eqz v7, :cond_0

    move-object v0, p2

    .line 829
    check-cast v0, Lcom/akura/anime/database/MP3Playlist;

    .line 830
    .local v0, "item":Lcom/akura/anime/database/MP3Playlist;
    iget-object v4, v0, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    .line 839
    .end local v0    # "item":Lcom/akura/anime/database/MP3Playlist;
    .local v4, "path":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/objects/SongsPopupItem;>;"
    instance-of v7, p2, Lcom/akura/anime/database/MP3Playlist;

    if-eqz v7, :cond_3

    .line 842
    invoke-static {p0, v4}, Lcom/akura/anime/MP3PlayerApp;->downloadActive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 844
    new-instance v7, Lcom/akura/anime/objects/SongsPopupItem;

    const/4 v8, 0x5

    const v9, 0x7f060023

    invoke-virtual {p0, v9}, Lcom/akura/anime/activities/MP3Songs;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/akura/anime/objects/SongsPopupItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    :goto_1
    new-instance v7, Lcom/akura/anime/objects/SongsPopupItem;

    const/4 v8, 0x6

    const v9, 0x7f060022

    invoke-virtual {p0, v9}, Lcom/akura/anime/activities/MP3Songs;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/akura/anime/objects/SongsPopupItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v7, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;

    invoke-direct {v7, p0, p0, v1}, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;-><init>(Lcom/akura/anime/activities/MP3Songs;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 868
    new-instance v7, Lcom/akura/anime/activities/MP3Songs$5;

    invoke-direct {v7, p0, p2}, Lcom/akura/anime/activities/MP3Songs$5;-><init>(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 926
    const/high16 v7, 0x437a0000    # 250.0f

    invoke-static {p0, v7}, Lcom/akura/utils/Utils;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v7

    float-to-int v6, v7

    .line 928
    .local v6, "width":I
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    .line 929
    iget-object v7, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 930
    iget-object v7, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    new-instance v8, Lcom/akura/anime/activities/MP3Songs$6;

    invoke-direct {v8, p0}, Lcom/akura/anime/activities/MP3Songs$6;-><init>(Lcom/akura/anime/activities/MP3Songs;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 938
    iget-object v7, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 939
    iget-object v7, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v6, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 940
    iget-object v7, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 941
    iget-object v7, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 943
    iget-object v7, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    const/16 v9, -0xa

    invoke-virtual {v7, p1, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 944
    iget-object v7, p0, Lcom/akura/anime/activities/MP3Songs;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->update()V

    .line 945
    return-void

    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/objects/SongsPopupItem;>;"
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "width":I
    :cond_0
    move-object v0, p2

    .line 834
    check-cast v0, Lcom/akura/anime/database/MP3Track;

    .line 835
    .local v0, "item":Lcom/akura/anime/database/MP3Track;
    iget-object v4, v0, Lcom/akura/anime/database/MP3Track;->path:Ljava/lang/String;

    .restart local v4    # "path":Ljava/lang/String;
    goto/16 :goto_0

    .line 848
    .end local v0    # "item":Lcom/akura/anime/database/MP3Track;
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/objects/SongsPopupItem;>;"
    :cond_1
    invoke-static {p0, v4}, Lcom/akura/anime/MP3PlayerApp;->downloadExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 850
    new-instance v7, Lcom/akura/anime/objects/SongsPopupItem;

    const/4 v8, 0x3

    const v9, 0x7f060035

    invoke-virtual {p0, v9}, Lcom/akura/anime/activities/MP3Songs;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/akura/anime/objects/SongsPopupItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    :goto_2
    new-instance v7, Lcom/akura/anime/objects/SongsPopupItem;

    const/4 v8, 0x2

    const v9, 0x7f060046

    invoke-virtual {p0, v9}, Lcom/akura/anime/activities/MP3Songs;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/akura/anime/objects/SongsPopupItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 854
    :cond_2
    new-instance v7, Lcom/akura/anime/objects/SongsPopupItem;

    const/4 v8, 0x4

    const v9, 0x7f060034

    invoke-virtual {p0, v9}, Lcom/akura/anime/activities/MP3Songs;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/akura/anime/objects/SongsPopupItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 862
    :cond_3
    new-instance v7, Lcom/akura/anime/objects/SongsPopupItem;

    const/4 v8, 0x1

    const v9, 0x7f060043

    invoke-virtual {p0, v9}, Lcom/akura/anime/activities/MP3Songs;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/akura/anime/objects/SongsPopupItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    new-instance v7, Lcom/akura/anime/objects/SongsPopupItem;

    const/4 v8, 0x4

    const v9, 0x7f060034

    invoke-virtual {p0, v9}, Lcom/akura/anime/activities/MP3Songs;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/akura/anime/objects/SongsPopupItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private stop()V
    .locals 4

    .prologue
    .line 717
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akura/utils/Scroller;->stop(Ljava/lang/String;)V

    .line 719
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 720
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v1, "mode"

    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 724
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V

    .line 725
    return-void
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 742
    :cond_0
    new-instance v0, Lcom/akura/anime/activities/MP3Songs$3;

    invoke-direct {v0, p0, p1}, Lcom/akura/anime/activities/MP3Songs$3;-><init>(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public addTrack(Lcom/akura/anime/database/MP3Track;Z)V
    .locals 6
    .param p1, "track"    # Lcom/akura/anime/database/MP3Track;
    .param p2, "toast"    # Z

    .prologue
    .line 530
    new-instance v0, Lcom/akura/anime/database/MP3Playlist;

    invoke-direct {v0}, Lcom/akura/anime/database/MP3Playlist;-><init>()V

    .line 531
    .local v0, "playlist":Lcom/akura/anime/database/MP3Playlist;
    invoke-virtual {v0, p1}, Lcom/akura/anime/database/MP3Playlist;->copy(Lcom/akura/anime/database/MP3Track;)V

    .line 533
    invoke-virtual {v0}, Lcom/akura/anime/database/MP3Playlist;->insert()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 535
    if-eqz p2, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/akura/utils/Utils;->toastCenter(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    :cond_0
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->interstitial(Landroid/content/Context;)V

    .line 544
    :cond_1
    return-void
.end method

.method public clearList()V
    .locals 1

    .prologue
    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->localTracks:Ljava/util/List;

    .line 504
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->updateList()V

    .line 505
    return-void
.end method

.method public closeTask()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mTask:Lcom/akura/anime/activities/MP3Songs$SongsLoader;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mTask:Lcom/akura/anime/activities/MP3Songs$SongsLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->cancel(Z)Z

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mTask:Lcom/akura/anime/activities/MP3Songs$SongsLoader;

    .line 417
    :cond_0
    return-void
.end method

.method public downloadTracks(IIZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "index"    # I
    .param p3, "play"    # Z

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->closeTask()V

    .line 423
    new-instance v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/akura/anime/activities/MP3Songs$SongsLoader;-><init>(Lcom/akura/anime/activities/MP3Songs;Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mTask:Lcom/akura/anime/activities/MP3Songs$SongsLoader;

    .line 424
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mTask:Lcom/akura/anime/activities/MP3Songs$SongsLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 425
    return-void
.end method

.method public loadTracks(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "auto"    # Z

    .prologue
    .line 429
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akura/utils/Scroller;->stop(Ljava/lang/String;)V

    .line 431
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    .line 433
    :cond_0
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/akura/anime/activities/MP3Songs;->artistId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 435
    .local v0, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    if-nez v0, :cond_2

    .line 437
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {p0, v1, p1, p2}, Lcom/akura/anime/activities/MP3Songs;->downloadTracks(IIZ)V

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    invoke-direct {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->localizeTracks(Ljava/util/List;)V

    .line 442
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->updateList()V

    .line 444
    if-eqz p2, :cond_1

    .line 446
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-direct {p0, v1, p1}, Lcom/akura/anime/activities/MP3Songs;->autoPlay(II)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 275
    iget v0, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-nez v0, :cond_0

    .line 277
    const-string v1, "Artists"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/akura/anime/MP3PlayerApp;->switchArtistsTab(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const v3, 0x7f02003b

    const v4, 0x7f020039

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->closePopup()V

    .line 290
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Songs;->mPlay:Landroid/widget/ImageButton;

    if-ne p1, v5, :cond_1

    .line 292
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->interstitial(Landroid/content/Context;)V

    .line 294
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->playToggle()V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Songs;->mShuffle:Landroid/widget/ImageButton;

    if-ne p1, v5, :cond_7

    .line 298
    iget v5, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-ne v5, v6, :cond_4

    .line 300
    sget-boolean v5, Lcom/akura/anime/MP3PlayerApp;->mHomeShuffle:Z

    if-nez v5, :cond_2

    :goto_1
    sput-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mHomeShuffle:Z

    .line 301
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs;->mShuffle:Landroid/widget/ImageButton;

    sget-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mHomeShuffle:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 309
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "shuffle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "mode"

    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v1, v2

    .line 300
    goto :goto_1

    :cond_3
    move v1, v4

    .line 301
    goto :goto_2

    .line 305
    :cond_4
    sget-boolean v5, Lcom/akura/anime/MP3PlayerApp;->mSongsShuffle:Z

    if-nez v5, :cond_5

    :goto_4
    sput-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mSongsShuffle:Z

    .line 306
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mShuffle:Landroid/widget/ImageButton;

    sget-boolean v2, Lcom/akura/anime/MP3PlayerApp;->mSongsShuffle:Z

    if-eqz v2, :cond_6

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    :cond_5
    move v1, v2

    .line 305
    goto :goto_4

    :cond_6
    move v3, v4

    .line 306
    goto :goto_5

    .line 314
    :cond_7
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Songs;->mRepeat:Landroid/widget/ImageButton;

    if-ne p1, v5, :cond_0

    .line 316
    iget v5, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-ne v5, v6, :cond_a

    .line 318
    sget-boolean v5, Lcom/akura/anime/MP3PlayerApp;->mHomeRepeat:Z

    if-nez v5, :cond_8

    :goto_6
    sput-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mHomeRepeat:Z

    .line 319
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mRepeat:Landroid/widget/ImageButton;

    sget-boolean v2, Lcom/akura/anime/MP3PlayerApp;->mHomeRepeat:Z

    if-eqz v2, :cond_9

    :goto_7
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 327
    :goto_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "repeat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "mode"

    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    move v1, v2

    .line 318
    goto :goto_6

    :cond_9
    move v3, v4

    .line 319
    goto :goto_7

    .line 323
    :cond_a
    sget-boolean v5, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    if-nez v5, :cond_b

    :goto_9
    sput-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    .line 324
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mRepeat:Landroid/widget/ImageButton;

    sget-boolean v2, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    if-eqz v2, :cond_c

    :goto_a
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_8

    :cond_b
    move v1, v2

    .line 323
    goto :goto_9

    :cond_c
    move v3, v4

    .line 324
    goto :goto_a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 339
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    invoke-virtual {v0}, Lcom/akura/utils/Scroller;->restart()V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    invoke-virtual {v0}, Lcom/akura/utils/Scroller;->restart()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v3, 0x7f03000f

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->setContentView(I)V

    .line 120
    new-instance v3, Lcom/akura/anime/activities/MP3Songs$TrackItemListener;

    invoke-direct {v3, p0}, Lcom/akura/anime/activities/MP3Songs$TrackItemListener;-><init>(Lcom/akura/anime/activities/MP3Songs;)V

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->trackAddListener:Lcom/akura/anime/activities/MP3Songs$TrackItemListener;

    .line 121
    new-instance v3, Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;

    invoke-direct {v3, p0}, Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;-><init>(Lcom/akura/anime/activities/MP3Songs;)V

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->trackPlayListener:Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;

    .line 123
    new-instance v3, Lcom/akura/anime/activities/MP3Songs$PlaylistItemListener;

    invoke-direct {v3, p0}, Lcom/akura/anime/activities/MP3Songs$PlaylistItemListener;-><init>(Lcom/akura/anime/activities/MP3Songs;)V

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->playlistListener:Lcom/akura/anime/activities/MP3Songs$PlaylistItemListener;

    .line 124
    new-instance v3, Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;

    invoke-direct {v3, p0}, Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;-><init>(Lcom/akura/anime/activities/MP3Songs;)V

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->playlistPlayListener:Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;

    .line 126
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    .line 127
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "id"

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akura/anime/activities/MP3Songs;->artistId:J

    .line 128
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->artistName:Ljava/lang/String;

    .line 130
    const v3, 0x7f0a000a

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mProgress:Landroid/widget/ProgressBar;

    .line 131
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mProgress:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    const v3, 0x7f0a000b

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/AdView;

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 134
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mAd:Lcom/google/android/gms/ads/AdView;

    new-instance v4, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 136
    const v3, 0x7f0a0019

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    .line 137
    .local v2, "view":Landroid/widget/HorizontalScrollView;
    const v3, 0x7f0a000c

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    .local v1, "title":Landroid/widget/TextView;
    new-instance v3, Lcom/akura/utils/Scroller;

    invoke-direct {v3, p0, v2, v1}, Lcom/akura/utils/Scroller;-><init>(Landroid/app/Activity;Landroid/widget/HorizontalScrollView;Landroid/widget/TextView;)V

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    .line 141
    const v3, 0x7f0a000e

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mList:Landroid/widget/ListView;

    .line 142
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 144
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 146
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    new-instance v3, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;

    invoke-direct {v3, p0, p0}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;-><init>(Lcom/akura/anime/activities/MP3Songs;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->adapter:Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;

    .line 149
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/akura/anime/activities/MP3Songs;->adapter:Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    const v3, 0x7f0a0026

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;

    .line 152
    const v3, 0x7f0a0025

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mPlay:Landroid/widget/ImageButton;

    .line 153
    const v3, 0x7f0a0027

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mShuffle:Landroid/widget/ImageButton;

    .line 154
    const v3, 0x7f0a0028

    invoke-virtual {p0, v3}, Lcom/akura/anime/activities/MP3Songs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mRepeat:Landroid/widget/ImageButton;

    .line 156
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;

    new-instance v4, Lcom/akura/anime/activities/MP3Songs$1;

    invoke-direct {v4, p0}, Lcom/akura/anime/activities/MP3Songs$1;-><init>(Lcom/akura/anime/activities/MP3Songs;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 185
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mPlay:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget v3, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-nez v3, :cond_1

    .line 191
    invoke-virtual {p0, v8, v9}, Lcom/akura/anime/activities/MP3Songs;->loadTracks(IZ)V

    .line 209
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->register()V

    .line 210
    iput-object p0, p0, Lcom/akura/anime/activities/MP3Songs;->mContext:Landroid/content/Context;

    .line 211
    return-void

    .line 193
    :cond_1
    iget v3, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-ne v3, v9, :cond_2

    .line 195
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akura/utils/Scroller;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    iget v3, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 199
    sput-boolean v9, Lcom/akura/anime/MP3PlayerApp;->mHomeShuffle:Z

    .line 200
    sput-boolean v8, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    .line 202
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akura/utils/Scroller;->stop(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "auto"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 206
    .local v0, "auto":Z
    iget v3, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {p0, v3, v8, v0}, Lcom/akura/anime/activities/MP3Songs;->downloadTracks(IIZ)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 354
    const v0, 0x7f060048

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020032

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    const/4 v0, 0x2

    const v1, 0x7f060024

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 358
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mAd:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/akura/utils/Scroller;->stop(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->closeTask()V

    .line 269
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->unregister()V

    .line 270
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "adp":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    long-to-int v0, p4

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->play(I)V

    .line 380
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 364
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 373
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 367
    :pswitch_0
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {p0, v1, v2, v2}, Lcom/akura/anime/activities/MP3Songs;->downloadTracks(IIZ)V

    goto :goto_0

    .line 370
    :pswitch_1
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->close(Landroid/content/Context;)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const v3, 0x7f02003b

    const v4, 0x7f020039

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    sget-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mSongsShuffle:Z

    .line 219
    .local v1, "shuffle":Z
    sget-boolean v0, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    .line 221
    .local v0, "repeat":Z
    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-ne v2, v7, :cond_1

    .line 223
    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {p0, v2, v6, v6}, Lcom/akura/anime/activities/MP3Songs;->downloadTracks(IIZ)V

    .line 237
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Songs;->mShuffle:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 238
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs;->mRepeat:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 240
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->updateDuration()V

    .line 243
    sget-boolean v2, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-eqz v2, :cond_6

    .line 245
    sget-boolean v2, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    if-eqz v2, :cond_5

    .line 246
    invoke-virtual {p0, v6}, Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V

    .line 253
    :goto_3
    return-void

    .line 225
    :cond_1
    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-nez v2, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->updateList()V

    goto :goto_0

    .line 229
    :cond_2
    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 231
    sget-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mHomeShuffle:Z

    .line 232
    sget-boolean v0, Lcom/akura/anime/MP3PlayerApp;->mHomeRepeat:Z

    .line 234
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->updateList()V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 237
    goto :goto_1

    :cond_4
    move v3, v4

    .line 238
    goto :goto_2

    .line 248
    :cond_5
    invoke-virtual {p0, v7}, Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V

    goto :goto_3

    .line 251
    :cond_6
    invoke-virtual {p0, v6}, Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V

    goto :goto_3
.end method

.method public toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 19
    return-void
.end method

.method public play(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1


    .line 641
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akura/utils/Scroller;->stop(Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 644
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 645
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 647
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    sput v1, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    .line 648
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-nez v1, :cond_1

    .line 650
    sput p1, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    .line 651
    iget-wide v2, p0, Lcom/akura/anime/activities/MP3Songs;->artistId:J

    sput-wide v2, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    .line 662
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->adapter:Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;

    invoke-virtual {v1}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->notifyDataSetChanged()V

    .line 664
    invoke-direct {p0, p1}, Lcom/akura/anime/activities/MP3Songs;->showIndex(I)V

    .line 666
    invoke-virtual {p0, v4}, Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V

    .line 668
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 669
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    const-string v1, "aid"

    iget-wide v2, p0, Lcom/akura/anime/activities/MP3Songs;->artistId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 673
    const-string v1, "aname"

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string v1, "mode"

    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 677
    return-void

    .line 653
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-ne v1, v4, :cond_2

    .line 655
    sput p1, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    goto :goto_0

    .line 657
    :cond_2
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 659
    sput p1, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    goto :goto_0
.end method

.method public playButton(Z)V
    .locals 1
    .param p1, "play"    # Z

    .prologue
    .line 681
    new-instance v0, Lcom/akura/anime/activities/MP3Songs$2;

    invoke-direct {v0, p0, p1}, Lcom/akura/anime/activities/MP3Songs$2;-><init>(Lcom/akura/anime/activities/MP3Songs;Z)V

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 691
    return-void
.end method

.method public playToggle()V
    .locals 2

    .prologue
    .line 595
    iget v0, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-nez v0, :cond_3

    .line 597
    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    if-nez v0, :cond_1

    .line 599
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->pause()V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    if-eqz v0, :cond_2

    .line 604
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->resume()V

    goto :goto_0

    .line 606
    :cond_2
    sget v0, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->play(I)V

    goto :goto_0

    .line 609
    :cond_3
    iget v0, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 611
    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    if-nez v0, :cond_4

    .line 613
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->pause()V

    goto :goto_0

    .line 617
    :cond_4
    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    if-eqz v0, :cond_5

    .line 618
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->resume()V

    goto :goto_0

    .line 619
    :cond_5
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 620
    sget v0, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->play(I)V

    goto :goto_0

    .line 623
    :cond_6
    iget v0, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 625
    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    if-nez v0, :cond_7

    .line 627
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->pause()V

    goto :goto_0

    .line 631
    :cond_7
    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    if-eqz v0, :cond_8

    .line 632
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Songs;->resume()V

    goto :goto_0

    .line 633
    :cond_8
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 634
    sget v0, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->play(I)V

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 384
    new-instance v1, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;-><init>(Lcom/akura/anime/activities/MP3Songs;Lcom/akura/anime/activities/MP3Songs$1;)V

    iput-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mBroadcast:Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

    .line 386
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.rock.mp3player.intent.songs.tab"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string v1, "com.rock.mp3player.intent.downloading"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string v1, "com.rock.mp3player.intent.downloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "com.rock.mp3player.intent.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v1, "com.rock.mp3player.intent.exception"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v1, "com.rock.mp3player.intent.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "com.rock.mp3player.intent.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v1, "com.rock.mp3player.intent.index"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v1, "com.rock.mp3player.intent.seek"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v1, "com.rock.mp3player.intent.duration"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v1, "com.rock.mp3player.intent.settings.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mBroadcast:Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/akura/anime/activities/MP3Songs;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    return-void
.end method

.method public removePlaylist(Lcom/akura/anime/database/MP3Playlist;)V
    .locals 3
    .param p1, "playlist"    # Lcom/akura/anime/database/MP3Playlist;

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-virtual {p1}, Lcom/akura/anime/database/MP3Playlist;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/akura/anime/database/MP3Playlist;->delete(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p1, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/akura/anime/database/MP3Playlist;->countByPath(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p1, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/akura/anime/MP3PlayerApp;->downloadRemove(Landroid/content/Context;Ljava/lang/String;)V

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/akura/utils/Utils;->toastCenter(Landroid/content/Context;Ljava/lang/String;)V

    .line 558
    iget v0, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {p0, v0, v2, v2}, Lcom/akura/anime/activities/MP3Songs;->downloadTracks(IIZ)V

    .line 560
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->interstitial(Landroid/content/Context;)V

    .line 562
    :cond_1
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 777
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 800
    :goto_0
    return-void

    .line 781
    :cond_0
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-nez v1, :cond_1

    .line 783
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->artistsTab:Lcom/akura/anime/activities/MP3MainArtists;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 790
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 791
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 792
    const v1, 0x7f06003f

    new-instance v2, Lcom/akura/anime/activities/MP3Songs$4;

    invoke-direct {v2, p0}, Lcom/akura/anime/activities/MP3Songs$4;-><init>(Lcom/akura/anime/activities/MP3Songs;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 799
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 787
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    goto :goto_1
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mBroadcast:Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mBroadcast:Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->mBroadcast:Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

    .line 408
    :cond_0
    return-void
.end method

.method public updateDuration()V
    .locals 3

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v1, "mode"

    iget v2, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 571
    return-void
.end method

.method public updateList()V
    .locals 4

    .prologue
    .line 509
    iget v0, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    if-nez v0, :cond_2

    .line 511
    sget-wide v0, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    iget-wide v2, p0, Lcom/akura/anime/activities/MP3Songs;->artistId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 512
    sget v0, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    invoke-direct {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->showIndex(I)V

    .line 525
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs;->adapter:Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->notifyDataSetChanged()V

    .line 526
    return-void

    .line 514
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->showIndex(I)V

    goto :goto_0

    .line 516
    :cond_2
    iget v0, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 518
    sget v0, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    invoke-direct {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->showIndex(I)V

    goto :goto_0

    .line 520
    :cond_3
    iget v0, p0, Lcom/akura/anime/activities/MP3Songs;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 522
    sget v0, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    invoke-direct {p0, v0}, Lcom/akura/anime/activities/MP3Songs;->showIndex(I)V

    goto :goto_0
.end method
