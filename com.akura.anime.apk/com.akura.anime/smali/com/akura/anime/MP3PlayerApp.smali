.class public Lcom/akura/anime/MP3PlayerApp;
.super Landroid/app/Application;
.source "MP3PlayerApp.java"


# static fields
.field public static final APP_EMAIL:Ljava/lang/String; = "radiolamolina@gmail.com"

.field public static final ARITSTS_PER_PAGE:I = 0x64

.field public static final FACEBOOK:Ljava/lang/String; = "Facebook"

.field public static final INTENT_AD:Ljava/lang/String; = "com.rock.mp3player.intent.ad"

.field public static final INTENT_ARTISTS_SWITCH:Ljava/lang/String; = "com.rock.mp3player.intent.artists.switch"

.field public static final INTENT_BUFFERING:Ljava/lang/String; = "com.rock.mp3player.intent.buffering"

.field public static final INTENT_CLOSE:Ljava/lang/String; = "com.rock.mp3player.intent.close"

.field public static final INTENT_COMPLETE:Ljava/lang/String; = "com.rock.mp3player.intent.complete"

.field public static final INTENT_DOWNLOADED:Ljava/lang/String; = "com.rock.mp3player.intent.downloaded"

.field public static final INTENT_DOWNLOADING:Ljava/lang/String; = "com.rock.mp3player.intent.downloading"

.field public static final INTENT_DURATION:Ljava/lang/String; = "com.rock.mp3player.intent.duration"

.field public static final INTENT_EXCEPTION:Ljava/lang/String; = "com.rock.mp3player.intent.exception"

.field public static final INTENT_INDEX:Ljava/lang/String; = "com.rock.mp3player.intent.index"

.field public static final INTENT_MAIN_SWITCH:Ljava/lang/String; = "com.rock.mp3player.intent.main.switch"

.field public static final INTENT_PLAY:Ljava/lang/String; = "com.rock.mp3player.intent.play"

.field public static final INTENT_REPEAT:Ljava/lang/String; = "com.rock.mp3player.intent.repeat"

.field public static final INTENT_SEEKED:Ljava/lang/String; = "com.rock.mp3player.intent.seek"

.field public static final INTENT_SETTINGS_CHANGED:Ljava/lang/String; = "com.rock.mp3player.intent.settings.changed"

.field public static final INTENT_SHUFFLE:Ljava/lang/String; = "com.rock.mp3player.intent.shuffle"

.field public static final INTENT_SONGS_TAB:Ljava/lang/String; = "com.rock.mp3player.intent.songs.tab"

.field public static final INTENT_STOP:Ljava/lang/String; = "com.rock.mp3player.intent.stop"

.field public static final INTENT_UPDATE:Ljava/lang/String; = "com.rock.mp3player.intent.update"

.field public static final INTERACTION_COUNT:I = 0x14

.field public static final KEY_BUFFER_CAPACITY:Ljava/lang/String; = "KEY_BUFFER_CAPACITY"

.field public static final KEY_BUFFER_SIZE:Ljava/lang/String; = "KEY_BUFFER_SIZE"

.field public static final KEY_DATA:Ljava/lang/String; = "KEY_DATA"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "KEY_MESSAGE"

.field public static final KEY_PLAY_AUTO:Ljava/lang/String; = "KEY_PLAYING"

.field public static final KEY_PLAY_INDEX:Ljava/lang/String; = "KEY_PLAY_INDEX"

.field public static final KEY_PLAY_MODE:Ljava/lang/String; = "KEY_MODE"

.field public static final KEY_TITLE:Ljava/lang/String; = "KEY_TITLE"

.field public static final MAILER_ADDRESS:Ljava/lang/String; = "radiolamolina@gmail.com"

.field public static final MAILER_PASSWORD:Ljava/lang/String; = ""

.field public static final MAX_DOWNLOAD_ITEMS:J = 0x3L

.field public static final MIN_FILE_SIZE:J = 0x10000L

.field public static final NOTIFICATION_ID:I = 0x4be

.field public static final TAG:Ljava/lang/String; = "MP3PlayerApp"

.field public static final TWITTER:Ljava/lang/String; = "Twitter"

.field public static final URL_FACEBOOK:Ljava/lang/String; = "https://www.facebook.com/FreeAnimeMusic/"

.field public static final URL_TWITTER:Ljava/lang/String; = "https://m.twitter.com/radiolamolina"

.field public static alltracks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Track;",
            ">;>;"
        }
    .end annotation
.end field

.field public static appName:Ljava/lang/String;

.field public static artistsTab:Lcom/akura/anime/activities/MP3MainArtists;

.field public static currentArtistId:J

.field public static currentArtistName:Ljava/lang/String;

.field public static db:Landroid/database/sqlite/SQLiteDatabase;

.field public static downloadList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/akura/anime/objects/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field public static homeIndex:I

.field public static homes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Track;",
            ">;"
        }
    .end annotation
.end field

.field public static mGenreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Artist;",
            ">;"
        }
    .end annotation
.end field

.field public static mGenres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/objects/MP3Genre;",
            ">;"
        }
    .end annotation
.end field

.field public static mHomeRepeat:Z

.field public static mHomeShuffle:Z

.field public static mInteractions:I

.field public static mMain:Lcom/akura/anime/activities/MP3Main;

.field public static mSongsRepeat:Z

.field public static mSongsShuffle:Z

.field public static mStorage:Ljava/io/File;

.field public static playlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Playlist;",
            ">;"
        }
    .end annotation
.end field

.field public static playlistId:J

.field public static playlistIndex:I

.field public static trackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    sput-wide v4, Lcom/akura/anime/MP3PlayerApp;->playlistId:J

    .line 94
    sput v0, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    .line 95
    sput v0, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    .line 96
    sput v0, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    .line 99
    sput-object v2, Lcom/akura/anime/MP3PlayerApp;->currentArtistName:Ljava/lang/String;

    .line 100
    sput-wide v4, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    .line 107
    sput-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mHomeShuffle:Z

    .line 108
    sput-boolean v0, Lcom/akura/anime/MP3PlayerApp;->mSongsShuffle:Z

    .line 110
    sput-boolean v0, Lcom/akura/anime/MP3PlayerApp;->mHomeRepeat:Z

    .line 111
    sput-boolean v0, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    .line 118
    sput v1, Lcom/akura/anime/MP3PlayerApp;->mInteractions:I

    .line 120
    sput-object v2, Lcom/akura/anime/MP3PlayerApp;->mMain:Lcom/akura/anime/activities/MP3Main;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/akura/anime/MP3PlayerApp;->downloadList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 128
    return-void
.end method

.method public static close(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.rock.mp3player.intent.close"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    return-void
.end method

.method private createFolder()V
    .locals 1

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerApp;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/akura/anime/MP3PlayerApp;->mStorage:Ljava/io/File;

    .line 172
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->mStorage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 173
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->mStorage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static downloadActive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 490
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->downloadList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static downloadAdd(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    sget-object v4, Lcom/akura/anime/MP3PlayerApp;->downloadList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 408
    .local v1, "size":I
    int-to-long v4, v1

    const-wide/16 v6, 0x3

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 410
    const v4, 0x7f060028

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/akura/utils/Utils;->toastCenter(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    :goto_0
    return v2

    .line 414
    :cond_0
    invoke-static {p0, p1}, Lcom/akura/anime/MP3PlayerApp;->downloadStop(Landroid/content/Context;Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/akura/anime/objects/DownloadItem;

    invoke-direct {v0, p1}, Lcom/akura/anime/objects/DownloadItem;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "item":Lcom/akura/anime/objects/DownloadItem;
    new-instance v4, Lcom/akura/anime/MP3Downloader;

    invoke-direct {v4, p0, v0}, Lcom/akura/anime/MP3Downloader;-><init>(Landroid/content/Context;Lcom/akura/anime/objects/DownloadItem;)V

    iput-object v4, v0, Lcom/akura/anime/objects/DownloadItem;->task:Lcom/akura/anime/MP3Downloader;

    .line 420
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 421
    iget-object v4, v0, Lcom/akura/anime/objects/DownloadItem;->task:Lcom/akura/anime/MP3Downloader;

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v2}, Lcom/akura/anime/MP3Downloader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v2, v3

    .line 425
    goto :goto_0

    .line 423
    :cond_1
    iget-object v4, v0, Lcom/akura/anime/objects/DownloadItem;->task:Lcom/akura/anime/MP3Downloader;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/akura/anime/MP3Downloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public static downloadBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "done"    # Z

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "com.rock.mp3player.intent.downloaded"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    return-void

    .line 498
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "com.rock.mp3player.intent.downloading"

    goto :goto_0
.end method

.method public static downloadCancel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-static {p0, p1}, Lcom/akura/anime/MP3PlayerApp;->downloadStop(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    invoke-static {p0, p1}, Lcom/akura/anime/MP3PlayerApp;->downloadPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 447
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 452
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/akura/anime/MP3PlayerApp;->downloadBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 454
    return-void
.end method

.method public static downloadExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-static {p0, p1}, Lcom/akura/anime/MP3PlayerApp;->downloadPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 482
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 483
    const/4 v1, 0x1

    .line 485
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static downloadPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 475
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->mStorage:Ljava/io/File;

    invoke-static {p1}, Lcom/akura/utils/Utils;->getSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 476
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method public static downloadRemove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-static {p0, p1}, Lcom/akura/anime/MP3PlayerApp;->downloadStop(Landroid/content/Context;Ljava/lang/String;)V

    .line 461
    invoke-static {p0, p1}, Lcom/akura/anime/MP3PlayerApp;->downloadPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 462
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 470
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/akura/anime/MP3PlayerApp;->downloadBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 471
    return-void
.end method

.method public static downloadStop(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 431
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->downloadList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/objects/DownloadItem;

    .line 432
    .local v0, "item":Lcom/akura/anime/objects/DownloadItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/akura/anime/objects/DownloadItem;->task:Lcom/akura/anime/MP3Downloader;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, v0, Lcom/akura/anime/objects/DownloadItem;->task:Lcom/akura/anime/MP3Downloader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/akura/anime/MP3Downloader;->cancel(Z)Z

    .line 435
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/akura/anime/objects/DownloadItem;->task:Lcom/akura/anime/MP3Downloader;

    .line 438
    :cond_0
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->downloadList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-void
.end method

.method public static finishAsk(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 400
    invoke-static {}, Lcom/akura/anime/MP3PlayerApp;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Do you want to close the app?"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/akura/utils/Utils;->confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentGenre(Landroid/content/Context;)Lcom/akura/anime/objects/MP3Genre;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    invoke-static {p0}, Lcom/akura/anime/MP3Prefs;->getGenre(Landroid/content/Context;)I

    move-result v0

    .line 362
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->mGenres:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 364
    :cond_0
    const/4 v1, 0x0

    .line 367
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->mGenres:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akura/anime/objects/MP3Genre;

    goto :goto_0
.end method

.method public static getTrackArchiveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "surl"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 299
    :try_start_0
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 305
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 308
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 311
    .end local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 315
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getTrackUrl(JI)Ljava/lang/String;
    .locals 8
    .param p0, "artist"    # J
    .param p2, "track"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 287
    const-string v0, "http://www.radiolamolina.com/wwmmzz77/"

    .line 288
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%03d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/imagen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%03d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    return-object v0
.end method

.method public static interstitial(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    sget v1, Lcom/akura/anime/MP3PlayerApp;->mInteractions:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/akura/anime/MP3PlayerApp;->mInteractions:I

    .line 373
    const-string v1, "MP3PlayerApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/akura/anime/MP3PlayerApp;->mInteractions:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget v1, Lcom/akura/anime/MP3PlayerApp;->mInteractions:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 377
    const/4 v1, 0x1

    sput v1, Lcom/akura/anime/MP3PlayerApp;->mInteractions:I

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.rock.mp3player.intent.ad"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private loadGenres()V
    .locals 2

    .prologue
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->mGenres:Ljava/util/List;

    .line 258
    new-instance v0, Lcom/akura/anime/objects/MP3Genre;

    invoke-direct {v0}, Lcom/akura/anime/objects/MP3Genre;-><init>()V

    .line 259
    .local v0, "entry":Lcom/akura/anime/objects/MP3Genre;
    const-string v1, "ANIME"

    iput-object v1, v0, Lcom/akura/anime/objects/MP3Genre;->title:Ljava/lang/String;

    .line 260
    const-string v1, "http://www.freeanimemusic.org/image01.png"

    iput-object v1, v0, Lcom/akura/anime/objects/MP3Genre;->home:Ljava/lang/String;

    .line 261
    const-string v1, "http://www.freeanimemusic.org/scripts/resources/app/artists.php"

    iput-object v1, v0, Lcom/akura/anime/objects/MP3Genre;->artists:Ljava/lang/String;

    .line 262
    const-string v1, "http://www.freeanimemusic.org/scripts/resources/app/songs.php"

    iput-object v1, v0, Lcom/akura/anime/objects/MP3Genre;->songs:Ljava/lang/String;

    .line 263
    const-string v1, "http://www.musicaanime.org/aannmm11"

    iput-object v1, v0, Lcom/akura/anime/objects/MP3Genre;->archive:Ljava/lang/String;

    .line 264
    const-string v1, "http://www.freeanimemusic.org/anime"

    iput-object v1, v0, Lcom/akura/anime/objects/MP3Genre;->root:Ljava/lang/String;

    .line 265
    const v1, 0x7f020035

    iput v1, v0, Lcom/akura/anime/objects/MP3Genre;->image:I

    .line 266
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->mGenres:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public static stop(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 392
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 396
    return-void
.end method

.method public static switchArtistsTab(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tabid"    # Ljava/lang/String;
    .param p2, "artistId"    # J
    .param p4, "artistName"    # Ljava/lang/String;
    .param p5, "trackIndex"    # I

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.rock.mp3player.intent.artists.switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 354
    const-string v1, "name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v1, "track"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    return-void
.end method

.method public static switchMainTab(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tabid"    # Ljava/lang/String;

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.rock.mp3player.intent.main.switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 134
    const-string v1, "MP3PlayerApp"

    const-string v2, "Starting..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->mMain:Lcom/akura/anime/activities/MP3Main;

    .line 137
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->appName:Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/akura/anime/database/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/akura/anime/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "dbh":Lcom/akura/anime/database/DatabaseHelper;
    invoke-virtual {v0}, Lcom/akura/anime/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    .line 145
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerApp;->createFolder()V

    .line 147
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerApp;->loadGenres()V

    .line 149
    const/4 v1, 0x0

    sput v1, Lcom/akura/anime/MP3PlayerApp;->mInteractions:I

    .line 150
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 156
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 162
    const-string v0, "MP3PlayerApp"

    const-string v1, "Terminating..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/akura/anime/MP3PlayerApp;->mMain:Lcom/akura/anime/activities/MP3Main;

    .line 165
    return-void
.end method
