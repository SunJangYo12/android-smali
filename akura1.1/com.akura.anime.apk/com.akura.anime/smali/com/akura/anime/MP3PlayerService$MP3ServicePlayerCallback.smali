.class public Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;
.super Ljava/lang/Object;
.source "MP3PlayerService.java"

# interfaces
.implements Lcom/akura/stream/MP3PlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/MP3PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MP3ServicePlayerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/MP3PlayerService;


# direct methods
.method public constructor <init>(Lcom/akura/anime/MP3PlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/MP3PlayerService;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playerComplete()V
    .locals 6

    .prologue
    .line 659
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    const-string v1, "com.rock.mp3player.intent.complete"

    const-string v2, ""

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 661
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    sget v1, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    invoke-virtual {v0, v1}, Lcom/akura/anime/MP3PlayerService;->next(I)V

    .line 662
    return-void
.end method

.method public playerException(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 651
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    const-string v2, "com.rock.mp3player.intent.exception"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 654
    return-void
.end method

.method public playerStarted(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 626
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    # getter for: Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;
    invoke-static {}, Lcom/akura/anime/MP3PlayerService;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akura/anime/MP3PlayerService;->createNotificationPlay(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    const-string v1, "com.rock.mp3player.intent.play"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 630
    sget v0, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    if-nez v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    const-string v1, "com.rock.mp3player.intent.index"

    # getter for: Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;
    invoke-static {}, Lcom/akura/anime/MP3PlayerService;->access$400()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 637
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    invoke-virtual {v0}, Lcom/akura/anime/MP3PlayerService;->startTimer()V

    .line 638
    return-void

    .line 632
    :cond_1
    sget v0, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 633
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    const-string v1, "com.rock.mp3player.intent.index"

    # getter for: Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;
    invoke-static {}, Lcom/akura/anime/MP3PlayerService;->access$400()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/akura/anime/MP3PlayerApp;->playlistIndex:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 634
    :cond_2
    sget v0, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    const-string v1, "com.rock.mp3player.intent.index"

    # getter for: Lcom/akura/anime/MP3PlayerService;->streamTitle:Ljava/lang/String;
    invoke-static {}, Lcom/akura/anime/MP3PlayerService;->access$400()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public playerStopped(I)V
    .locals 6
    .param p1, "error"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    const-string v1, "com.rock.mp3player.intent.stop"

    const-string v2, ""

    int-to-long v4, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/akura/anime/MP3PlayerService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    .line 645
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$MP3ServicePlayerCallback;->this$0:Lcom/akura/anime/MP3PlayerService;

    invoke-virtual {v0}, Lcom/akura/anime/MP3PlayerService;->stopTimer()V

    .line 646
    return-void
.end method
