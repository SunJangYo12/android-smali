.class Lcom/akura/stream/MP3Player$4;
.super Ljava/lang/Object;
.source "MP3Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 221
    iput-object p1, p0, Lcom/akura/stream/MP3Player$4;->this$0:Lcom/akura/stream/MP3Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 225
    const-string v0, "MP3Player:"

    const-string v1, "Completion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/akura/stream/MP3Player$4;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v0}, Lcom/akura/stream/MP3Player;->access$100(Lcom/akura/stream/MP3Player;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akura/stream/MP3Player$4;->this$0:Lcom/akura/stream/MP3Player;

    # getter for: Lcom/akura/stream/MP3Player;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v0}, Lcom/akura/stream/MP3Player;->access$100(Lcom/akura/stream/MP3Player;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/akura/stream/MP3PlayerCallback;->playerComplete()V

    .line 228
    :cond_0
    return-void
.end method
