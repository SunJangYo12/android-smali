.class Lcom/akura/stream/MP3Player$2;
.super Ljava/lang/Object;
.source "MP3Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/stream/MP3Player;->playAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/stream/MP3Player;


# direct methods
.method constructor <init>(Lcom/akura/stream/MP3Player;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/stream/MP3Player;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/akura/stream/MP3Player$2;->this$0:Lcom/akura/stream/MP3Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 196
    const-string v0, "MP3Player:"

    const-string v1, "Prepared..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/akura/stream/MP3Player$2;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/akura/stream/MP3Player;->access$000(Lcom/akura/stream/MP3Player;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 200
    iget-object v0, p0, Lcom/akura/stream/MP3Player$2;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v0}, Lcom/akura/stream/MP3Player;->access$100(Lcom/akura/stream/MP3Player;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akura/stream/MP3Player$2;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v0}, Lcom/akura/stream/MP3Player;->access$100(Lcom/akura/stream/MP3Player;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/akura/stream/MP3Player$2;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->media:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/akura/stream/MP3Player;->access$000(Lcom/akura/stream/MP3Player;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/akura/stream/MP3PlayerCallback;->playerStarted(J)V

    .line 201
    :cond_0
    return-void
.end method
