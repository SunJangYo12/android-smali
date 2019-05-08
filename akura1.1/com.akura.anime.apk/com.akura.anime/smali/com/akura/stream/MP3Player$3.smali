.class Lcom/akura/stream/MP3Player$3;
.super Ljava/lang/Object;
.source "MP3Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 205
    iput-object p1, p0, Lcom/akura/stream/MP3Player$3;->this$0:Lcom/akura/stream/MP3Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to play stream!\nError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "MP3Player:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/akura/stream/MP3Player$3;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v1}, Lcom/akura/stream/MP3Player;->access$100(Lcom/akura/stream/MP3Player;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/akura/stream/MP3Player$3;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v1}, Lcom/akura/stream/MP3Player;->access$100(Lcom/akura/stream/MP3Player;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/akura/stream/MP3PlayerCallback;->playerStopped(I)V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/akura/stream/MP3Player$3;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v1}, Lcom/akura/stream/MP3Player;->access$100(Lcom/akura/stream/MP3Player;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/akura/stream/MP3Player$3;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v1}, Lcom/akura/stream/MP3Player;->access$100(Lcom/akura/stream/MP3Player;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/akura/stream/MP3PlayerCallback;->playerException(Ljava/lang/Throwable;)V

    .line 216
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
