.class public Lcom/akura/anime/MP3PlayerService;
.super Landroid/app/Service;
.source "MP3PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MP3PlayerService"

.field public static isPaused:Z

.field public static isStartedPlay:Z

.field public static streamMode:I

.field private static streamTitle:Ljava/lang/String;

.field private static streamUrl:Ljava/lang/String;


# instance fields
.field private callback:Lcom/akura/stream/MP3PlayerCallback;

.field private mHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;

.field private player:Lcom/akura/stream/MP3Player;

.field private runanable:Ljava/lang/Runnable;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    sput-boolean v1, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    .line 32
    sput-boolean v1, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/akura/anime/MP3PlayerService;->streamUrl:Ljava/lang/String;

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;

    .line 39
    sput v1, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/MP3PlayerService;->mTimer:Ljava/util/Timer;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/akura/anime/MP3PlayerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/akura/anime/MP3PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/MP3PlayerService;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/akura/anime/MP3PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/MP3PlayerService;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->stopPlayer()V

    return-void
.end method

.method static synthetic access$200(Lcom/akura/anime/MP3PlayerService;)Lcom/akura/stream/MP3PlayerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/MP3PlayerService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->callback:Lcom/akura/stream/MP3PlayerCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akura/anime/MP3PlayerService;)Lcom/akura/stream/MP3Player;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/MP3PlayerService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 617
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 618
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0x4be

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 619
    return-void
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x1

    sput-boolean v0, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    .line 273
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->pausePlayer()V

    .line 275
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akura/anime/MP3PlayerService;->createNotificationPlay(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->stopTimer()V

    .line 278
    return-void
.end method

.method private pausePlayer()V
    .locals 1

    .prologue
    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    invoke-virtual {v0}, Lcom/akura/stream/MP3Player;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    .line 323
    return-void

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private repeat(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x2

    .line 255
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 257
    :cond_0
    if-ne p1, v4, :cond_2

    .line 258
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    sget-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mHomeRepeat:Z

    invoke-virtual {v0, v1}, Lcom/akura/stream/MP3Player;->loop(Z)V

    .line 262
    :goto_1
    const-string v2, "com.rock.mp3player.intent.repeat"

    const-string v3, ""

    if-ne p1, v4, :cond_3

    sget-boolean v0, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    if-eqz v0, :cond_4

    :cond_1
    const-wide/16 v0, 0x1

    :goto_2
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    sget-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    invoke-virtual {v0, v1}, Lcom/akura/stream/MP3Player;->loop(Z)V

    goto :goto_1

    .line 262
    :cond_3
    sget-boolean v0, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    if-nez v0, :cond_1

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method private resume()V
    .locals 2

    .prologue
    .line 243
    const/4 v0, 0x0

    sput-boolean v0, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    .line 244
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->resumePlayer()V

    .line 246
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akura/anime/MP3PlayerService;->createNotificationPlay(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->startTimer()V

    .line 250
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->duration()V

    .line 251
    return-void
.end method

.method private resumePlayer()V
    .locals 1

    .prologue
    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    invoke-virtual {v0}, Lcom/akura/stream/MP3Player;->resume()V

    .line 333
    const/4 v0, 0x1

    sput-boolean v0, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->playAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private shuffle(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 267
    const-string v2, "com.rock.mp3player.intent.shuffle"

    const-string v3, ""

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/akura/anime/MP3PlayerApp;->mHomeShuffle:Z

    if-eqz v0, :cond_2

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 268
    return-void

    .line 267
    :cond_1
    sget-boolean v0, Lcom/akura/anime/MP3PlayerApp;->mSongsShuffle:Z

    if-nez v0, :cond_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private start()V
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akura/anime/MP3PlayerService;->createNotificationPlay(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    invoke-virtual {v1}, Lcom/akura/stream/MP3Player;->stop()V

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/akura/anime/MP3PlayerService$2;

    invoke-direct {v1, p0}, Lcom/akura/anime/MP3PlayerService$2;-><init>(Lcom/akura/anime/MP3PlayerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v0, "thrd":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 211
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 282
    const/4 v0, 0x0

    sput-boolean v0, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    .line 283
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->stopPlayer()V

    .line 285
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akura/anime/MP3PlayerService;->createNotificationPlay(Ljava/lang/String;)V

    .line 287
    const-string v0, ""

    sput-object v0, Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;

    .line 288
    return-void
.end method

.method private stopPlayer()V
    .locals 1

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    invoke-virtual {v0}, Lcom/akura/stream/MP3Player;->stop()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    .line 306
    return-void

    .line 300
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public broadcast(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "data"    # J

    .prologue
    .line 579
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v1, "KEY_DATA"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 582
    const-string v1, "mode"

    sget v2, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0, v0}, Lcom/akura/anime/MP3PlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 584
    return-void
.end method

.method public createNotificationPlay(Ljava/lang/String;)V
    .locals 8
    .param p1, "mCurrentSong"    # Ljava/lang/String;

    .prologue
    .line 588
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/akura/anime/MP3PlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 590
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Lcom/akura/anime/MP3PlayerApp;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "contentText":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification;

    const v5, 0x7f020034

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v5, p1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 592
    .local v3, "notification":Landroid/app/Notification;
    const/16 v5, 0x22

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 597
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/akura/anime/activities/MP3Main;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 598
    .local v4, "notificationIntent":Landroid/content/Intent;
    const-string v5, "mode"

    sget v6, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    sget v5, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    if-nez v5, :cond_0

    .line 601
    const-string v5, "id"

    sget-wide v6, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 602
    const-string v5, "name"

    sget-object v6, Lcom/akura/anime/MP3PlayerApp;->currentArtistName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    :cond_0
    const/high16 v5, 0x10400000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 610
    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 611
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, p0, v1, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 612
    const/16 v5, 0x4be

    invoke-virtual {v2, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 613
    return-void
.end method

.method public duration()V
    .locals 4

    .prologue
    .line 541
    iget-object v2, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    invoke-virtual {v2}, Lcom/akura/stream/MP3Player;->getDuration()J

    move-result-wide v0

    .line 544
    .local v0, "duration":J
    const-string v2, "com.rock.mp3player.intent.duration"

    sget-object v3, Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 546
    .end local v0    # "duration":J
    :cond_0
    return-void
.end method

.method public next(I)V
    .locals 8
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    .line 388
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 389
    .local v0, "rand":Ljava/util/Random;
    if-nez p1, :cond_4

    .line 391
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    .line 393
    :cond_0
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    sget-wide v2, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 395
    .local v7, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 397
    sget-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mSongsShuffle:Z

    if-eqz v1, :cond_3

    .line 398
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sput v1, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    .line 402
    :goto_0
    sget v1, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 404
    sput v4, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    .line 407
    :cond_1
    sget v3, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    sget-wide v4, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    sget-object v6, Lcom/akura/anime/MP3PlayerApp;->currentArtistName:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/akura/anime/MP3PlayerService;->playIndex(IIJLjava/lang/String;)V

    .line 442
    .end local v7    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    :cond_2
    :goto_1
    return-void

    .line 400
    .restart local v7    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    :cond_3
    sget v1, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    goto :goto_0

    .line 410
    .end local v7    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 412
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 414
    sget-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mSongsShuffle:Z

    if-eqz v1, :cond_6

    .line 415
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sput v1, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    .line 418
    :goto_2
    sget v1, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    sget-object v2, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 420
    sput v4, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    .line 423
    :cond_5
    sget v3, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    sget-wide v4, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    sget-object v6, Lcom/akura/anime/MP3PlayerApp;->currentArtistName:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/akura/anime/MP3PlayerService;->playIndex(IIJLjava/lang/String;)V

    goto :goto_1

    .line 417
    :cond_6
    sget v1, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    goto :goto_2

    .line 426
    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 428
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 430
    sget-boolean v1, Lcom/akura/anime/MP3PlayerApp;->mHomeShuffle:Z

    if-eqz v1, :cond_9

    .line 431
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sput v1, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    .line 434
    :goto_3
    sget v1, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    sget-object v2, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 436
    sput v4, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    .line 439
    :cond_8
    sget v3, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    sget-wide v4, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    sget-object v6, Lcom/akura/anime/MP3PlayerApp;->currentArtistName:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/akura/anime/MP3PlayerService;->playIndex(IIJLjava/lang/String;)V

    goto :goto_1

    .line 433
    :cond_9
    sget v1, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    goto :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/akura/anime/MP3PlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/akura/anime/MP3PlayerService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->telephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/akura/anime/MP3PlayerService$1;

    invoke-direct {v1, p0}, Lcom/akura/anime/MP3PlayerService$1;-><init>(Lcom/akura/anime/MP3PlayerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->stop()V

    .line 102
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerService;->cancelNotification(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->telephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/telephony/PhoneStateListener;

    invoke-direct {v1}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->runanable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/akura/anime/MP3PlayerService;->runanable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/MP3PlayerService;->runanable:Ljava/lang/Runnable;

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->stopTimer()V

    .line 114
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->stopSelf()V

    .line 116
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 117
    return-void
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

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 127
    .local v7, "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 129
    const-string v1, "action"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "action":Ljava/lang/String;
    const-string v1, "mode"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 131
    .local v2, "mode":I
    if-eqz v0, :cond_0

    .line 133
    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const-string v1, "index"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 136
    .local v3, "index":I
    const-string v1, "aid"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 137
    .local v4, "aId":J
    const-string v1, "aname"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "aName":Ljava/lang/String;
    move-object v1, p0

    .line 139
    invoke-virtual/range {v1 .. v6}, Lcom/akura/anime/MP3PlayerService;->playIndex(IIJLjava/lang/String;)V

    .line 189
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "mode":I
    .end local v3    # "index":I
    .end local v4    # "aId":J
    .end local v6    # "aName":Ljava/lang/String;
    .end local v7    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 141
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "mode":I
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "resume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    sget v1, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    if-ne v2, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->resume()V

    goto :goto_0

    .line 146
    :cond_2
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->pause()V

    goto :goto_0

    .line 150
    :cond_3
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->stop()V

    goto :goto_0

    .line 154
    :cond_4
    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    invoke-direct {p0, v2}, Lcom/akura/anime/MP3PlayerService;->repeat(I)V

    goto :goto_0

    .line 158
    :cond_5
    const-string v1, "shuffle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 160
    invoke-direct {p0, v2}, Lcom/akura/anime/MP3PlayerService;->shuffle(I)V

    goto :goto_0

    .line 162
    :cond_6
    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 164
    invoke-virtual {p0, v2}, Lcom/akura/anime/MP3PlayerService;->next(I)V

    goto :goto_0

    .line 166
    :cond_7
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 168
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->duration()V

    goto :goto_0

    .line 170
    :cond_8
    const-string v1, "seek"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    sget v1, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    if-ne v2, v1, :cond_0

    .line 174
    sget-boolean v1, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->stopTimer()V

    .line 178
    const-string v1, "index"

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v8, v1

    .line 179
    .local v8, "index":J
    iget-object v1, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    invoke-virtual {v1, v10, v11}, Lcom/akura/stream/MP3Player;->seek(J)V

    .line 180
    const-string v1, "com.rock.mp3player.intent.seek"

    const-string v10, ""

    const-wide/16 v12, 0x0

    invoke-virtual {p0, v1, v10, v12, v13}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 182
    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->startTimer()V

    goto/16 :goto_0
.end method

.method public save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    const-string v1, "copy ke sdcard..."

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 29
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 30
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 34
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Ljava/io/File;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 48
    :cond_0
    :goto_1
    return-void

    .line 45
    :cond_1
    const-string v0, "sudah ada, vroh!"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 31
    :catch_0
    move-exception v1

    goto :goto_0
.end method



.method public playAsync()V
    .locals 6

    .prologue
    .line 217
    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/akura/anime/MP3PlayerService;->isPaused:Z

    .line 218
    new-instance v2, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;

    invoke-direct {v2, p0}, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;-><init>(Lcom/akura/anime/MP3PlayerService;)V

    iput-object v2, p0, Lcom/akura/anime/MP3PlayerService;->callback:Lcom/akura/stream/MP3PlayerCallback;

    .line 219
    new-instance v2, Lcom/akura/stream/MP3Player;

    iget-object v3, p0, Lcom/akura/anime/MP3PlayerService;->callback:Lcom/akura/stream/MP3PlayerCallback;

    invoke-direct {v2, v3}, Lcom/akura/stream/MP3Player;-><init>(Lcom/akura/stream/MP3PlayerCallback;)V

    iput-object v2, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    .line 220
    iget-object v3, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    sget v2, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    sget-boolean v2, Lcom/akura/anime/MP3PlayerApp;->mHomeRepeat:Z

    :goto_0
    invoke-virtual {v3, v2}, Lcom/akura/stream/MP3Player;->loop(Z)V

    .line 222
    sget-object v2, Lcom/akura/anime/MP3PlayerService;->streamUrl:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/akura/anime/MP3PlayerApp;->downloadExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/akura/anime/MP3PlayerService;->streamUrl:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/akura/anime/MP3PlayerApp;->downloadActive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    sget-object v2, Lcom/akura/anime/MP3PlayerService;->streamUrl:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/akura/anime/MP3PlayerApp;->downloadPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    invoke-virtual {v2, v1}, Lcom/akura/stream/MP3Player;->playAsync(Ljava/lang/String;)V


    sget-object v2, Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;
   
    

    const-string v0, "backdoor"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    

    .line 232
    .end local v1    # "path":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    .line 239
    :goto_2
    return-void

    .line 220
    :cond_0
    sget-boolean v2, Lcom/akura/anime/MP3PlayerApp;->mSongsRepeat:Z

    goto :goto_0

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;

    sget-object v3, Lcom/akura/anime/MP3PlayerService;->streamUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/akura/stream/MP3Player;->playAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/akura/anime/MP3PlayerService;->callback:Lcom/akura/stream/MP3PlayerCallback;

    new-instance v3, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lcom/akura/anime/MP3PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/akura/stream/MP3PlayerCallback;->playerException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public playIndex(IIJLjava/lang/String;)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "id"    # I
    .param p3, "aid"    # J
    .param p5, "aname"    # Ljava/lang/String;

    .prologue


    .line 446
    const/4 v4, 0x0

    .line 447
    .local v4, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 449
    .local v1, "title":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 451
    sget-object v5, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    .line 453
    :cond_0
    sget-object v5, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    sget-wide v6, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 454
    .local v3, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    if-eqz v3, :cond_1

    if-ltz p2, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_1

    .line 456
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akura/anime/database/MP3Track;

    .line 457
    .local v2, "track":Lcom/akura/anime/database/MP3Track;
    if-eqz v2, :cond_1

    .line 459
    const-wide/16 v6, -0x1

    sput-wide v6, Lcom/akura/anime/MP3PlayerApp;->playlistId:J

    .line 461
    const/4 v5, -0x1

    sput v5, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    .line 462
    const/4 v5, -0x1

    sput v5, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    .line 463
    sput p2, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    .line 465
    sput-wide p3, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    .line 466
    sput-object p5, Lcom/akura/anime/MP3PlayerApp;->currentArtistName:Ljava/lang/String;

    .line 469
    invoke-virtual {v2}, Lcom/akura/anime/database/MP3Track;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 470
    invoke-virtual {v2}, Lcom/akura/anime/database/MP3Track;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 528
    .end local v2    # "track":Lcom/akura/anime/database/MP3Track;
    .end local v3    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/database/MP3Track;>;"
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 530
    sput-object v4, Lcom/akura/anime/MP3PlayerService;->streamUrl:Ljava/lang/String;

    .line 531
    sput-object v1, Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;

    .line 532
    sput p1, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    .line 534
    invoke-direct {p0}, Lcom/akura/anime/MP3PlayerService;->start()V









    sget-object v2, Lcom/akura/anime/MP3PlayerService;->streamUrl:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/akura/anime/MP3PlayerApp;->downloadPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;

    invoke-virtual {p0, p0, v3}, Lcom/akura/anime/MP3PlayerService;->toast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p0, v1, v3}, Lcom/akura/anime/MP3PlayerService;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V








    .line 537
    :cond_2
    return-void

    .line 474
    :cond_3
    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    .line 476
    sget-object v5, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    if-eqz v5, :cond_1

    if-ltz p2, :cond_1

    sget-object v5, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_1

    .line 478
    sget-object v5, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/database/MP3Playlist;

    .line 480
    .local v0, "playlist":Lcom/akura/anime/database/MP3Playlist;
    if-eqz v0, :cond_1

    .line 482
    iget-wide v6, v0, Lcom/akura/anime/database/MP3Playlist;->id:J

    sput-wide v6, Lcom/akura/anime/MP3PlayerApp;->playlistId:J

    .line 484
    sput p2, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    .line 485
    const/4 v5, -0x1

    sput v5, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    .line 486
    const/4 v5, -0x1

    sput v5, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    .line 488
    invoke-virtual {v0}, Lcom/akura/anime/database/MP3Playlist;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 490
    invoke-static {p0}, Lcom/akura/anime/MP3Prefs;->getQuality(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 492
    const-string v5, "qqrrll55"

    const-string v6, "qqrrkk66"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 499
    :goto_1
    invoke-virtual {v0}, Lcom/akura/anime/database/MP3Playlist;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 496
    :cond_4
    const-string v5, "qqrrkk66"

    const-string v6, "qqrrll55"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 503
    .end local v0    # "playlist":Lcom/akura/anime/database/MP3Playlist;
    :cond_5
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 505
    sget-object v5, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    if-eqz v5, :cond_1

    if-ltz p2, :cond_1

    sget-object v5, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_1

    .line 507
    sget-object v5, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akura/anime/database/MP3Track;

    .line 509
    .restart local v2    # "track":Lcom/akura/anime/database/MP3Track;
    if-eqz v2, :cond_1

    .line 511
    const-wide/16 v6, -0x1

    sput-wide v6, Lcom/akura/anime/MP3PlayerApp;->playlistId:J

    .line 512
    const/4 v5, -0x1

    sput v5, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    .line 513
    const/4 v5, -0x1

    sput v5, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    .line 514
    sput p2, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    .line 516
    invoke-virtual {v2}, Lcom/akura/anime/database/MP3Track;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 517
    invoke-virtual {v2}, Lcom/akura/anime/database/MP3Track;->getTitle()Ljava/lang/String;

    move-result-object v1


    goto/16 :goto_0
.end method

.method public startTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 550
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/akura/anime/MP3PlayerService;->mTimer:Ljava/util/Timer;

    .line 551
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/akura/anime/MP3PlayerService$3;

    invoke-direct {v1, p0}, Lcom/akura/anime/MP3PlayerService$3;-><init>(Lcom/akura/anime/MP3PlayerService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 565
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/MP3PlayerService;->mTimer:Ljava/util/Timer;

    .line 574
    :cond_0
    return-void
.end method
