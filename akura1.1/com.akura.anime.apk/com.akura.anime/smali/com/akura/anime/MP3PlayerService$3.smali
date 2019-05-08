.class Lcom/akura/anime/MP3PlayerService$3;
.super Ljava/util/TimerTask;
.source "MP3PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/MP3PlayerService;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/MP3PlayerService;


# direct methods
.method constructor <init>(Lcom/akura/anime/MP3PlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/MP3PlayerService;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/akura/anime/MP3PlayerService$3;->this$0:Lcom/akura/anime/MP3PlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 555
    iget-object v2, p0, Lcom/akura/anime/MP3PlayerService$3;->this$0:Lcom/akura/anime/MP3PlayerService;

    # getter for: Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;
    invoke-static {v2}, Lcom/akura/anime/MP3PlayerService;->access$300(Lcom/akura/anime/MP3PlayerService;)Lcom/akura/stream/MP3Player;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 557
    const-wide/16 v0, 0x0

    .line 559
    .local v0, "time":J
    iget-object v2, p0, Lcom/akura/anime/MP3PlayerService$3;->this$0:Lcom/akura/anime/MP3PlayerService;

    # getter for: Lcom/akura/anime/MP3PlayerService;->player:Lcom/akura/stream/MP3Player;
    invoke-static {v2}, Lcom/akura/anime/MP3PlayerService;->access$300(Lcom/akura/anime/MP3PlayerService;)Lcom/akura/stream/MP3Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akura/stream/MP3Player;->getPosition()J

    move-result-wide v0

    .line 561
    iget-object v2, p0, Lcom/akura/anime/MP3PlayerService$3;->this$0:Lcom/akura/anime/MP3PlayerService;

    const-string v3, "com.rock.mp3player.intent.update"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 563
    .end local v0    # "time":J
    :cond_0
    return-void
.end method
