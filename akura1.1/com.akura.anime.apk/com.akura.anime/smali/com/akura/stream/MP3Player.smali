.class public Lcom/akura/stream/MP3Player;
.super Ljava/lang/Object;
.source "MP3Player.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MP3Player:"


# instance fields
.field private callback:Lcom/akura/stream/MP3PlayerCallback;

.field private looping:Z

.field private media:Landroid/media/MediaPlayer;

.field private pos:I

.field private streamUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/akura/stream/MP3PlayerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/akura/stream/MP3PlayerCallback;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/akura/stream/MP3Player;->pos:I

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akura/stream/MP3Player;->looping:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/stream/MP3Player;->streamUrl:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/akura/stream/MP3Player;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/akura/stream/MP3Player;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akura/stream/MP3Player;)Lcom/akura/stream/MP3PlayerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/akura/stream/MP3Player;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;

    return-object v0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 91
    :goto_0
    return-wide v0

    .line 87
    :catch_0
    move-exception v0

    .line 91
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 75
    :goto_0
    return-wide v0

    .line 71
    :catch_0
    move-exception v0

    .line 75
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public loop(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/akura/stream/MP3Player;->looping:Z

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "MP3Player:"

    const-string v1, "Stream Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/akura/stream/MP3Player;->pos:I

    .line 126
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playAsync(Ljava/lang/String;)V
    .locals 4
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iput-object p1, p0, Lcom/akura/stream/MP3Player;->streamUrl:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3

    .line 164
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    .line 165
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Lcom/akura/stream/MP3Player;->looping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 181
    :goto_1
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/akura/stream/MP3Player$1;

    invoke-direct {v2, p0}, Lcom/akura/stream/MP3Player$1;-><init>(Lcom/akura/stream/MP3Player;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 192
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/akura/stream/MP3Player$2;

    invoke-direct {v2, p0}, Lcom/akura/stream/MP3Player$2;-><init>(Lcom/akura/stream/MP3Player;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 204
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/akura/stream/MP3Player$3;

    invoke-direct {v2, p0}, Lcom/akura/stream/MP3Player$3;-><init>(Lcom/akura/stream/MP3Player;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 220
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/akura/stream/MP3Player$4;

    invoke-direct {v2, p0}, Lcom/akura/stream/MP3Player$4;-><init>(Lcom/akura/stream/MP3Player;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 236
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;

    new-instance v2, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/akura/stream/MP3PlayerCallback;->playerException(Ljava/lang/Throwable;)V

    .line 243
    :cond_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    throw v1

    .line 171
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MP3Player:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_1

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 247
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;

    new-instance v2, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/akura/stream/MP3PlayerCallback;->playerException(Ljava/lang/Throwable;)V

    .line 249
    :cond_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;

    new-instance v2, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/akura/stream/MP3PlayerCallback;->playerException(Ljava/lang/Throwable;)V

    .line 255
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "MP3Player:"

    const-string v1, "Stream Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->streamUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/akura/stream/MP3Player;->playAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public seek(J)V
    .locals 3
    .param p1, "index"    # J

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "MP3Player:"

    const-string v1, "Stream Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method
