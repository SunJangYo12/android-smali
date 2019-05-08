.class Lcom/akura/anime/MP3PlayerService$1;
.super Landroid/telephony/PhoneStateListener;
.source "MP3PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/MP3PlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pausedForRing:Z

.field final synthetic this$0:Lcom/akura/anime/MP3PlayerService;


# direct methods
.method constructor <init>(Lcom/akura/anime/MP3PlayerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/akura/anime/MP3PlayerService;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/akura/anime/MP3PlayerService$1;->this$0:Lcom/akura/anime/MP3PlayerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akura/anime/MP3PlayerService$1;->pausedForRing:Z

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-boolean v0, p0, Lcom/akura/anime/MP3PlayerService$1;->pausedForRing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$1;->this$0:Lcom/akura/anime/MP3PlayerService;

    # invokes: Lcom/akura/anime/MP3PlayerService;->start()V
    invoke-static {v0}, Lcom/akura/anime/MP3PlayerService;->access$000(Lcom/akura/anime/MP3PlayerService;)V

    .line 78
    iput-boolean v3, p0, Lcom/akura/anime/MP3PlayerService$1;->pausedForRing:Z

    goto :goto_0

    .line 83
    :pswitch_1
    sget-boolean v0, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$1;->this$0:Lcom/akura/anime/MP3PlayerService;

    iget-object v1, p0, Lcom/akura/anime/MP3PlayerService$1;->this$0:Lcom/akura/anime/MP3PlayerService;

    invoke-virtual {v1}, Lcom/akura/anime/MP3PlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akura/anime/MP3PlayerService;->createNotificationPlay(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$1;->this$0:Lcom/akura/anime/MP3PlayerService;

    # invokes: Lcom/akura/anime/MP3PlayerService;->stopPlayer()V
    invoke-static {v0}, Lcom/akura/anime/MP3PlayerService;->access$100(Lcom/akura/anime/MP3PlayerService;)V

    .line 87
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$1;->this$0:Lcom/akura/anime/MP3PlayerService;

    # getter for: Lcom/akura/anime/MP3PlayerService;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v0}, Lcom/akura/anime/MP3PlayerService;->access$200(Lcom/akura/anime/MP3PlayerService;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$1;->this$0:Lcom/akura/anime/MP3PlayerService;

    # getter for: Lcom/akura/anime/MP3PlayerService;->callback:Lcom/akura/stream/MP3PlayerCallback;
    invoke-static {v0}, Lcom/akura/anime/MP3PlayerService;->access$200(Lcom/akura/anime/MP3PlayerService;)Lcom/akura/stream/MP3PlayerCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/akura/stream/MP3PlayerCallback;->playerStopped(I)V

    .line 88
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akura/anime/MP3PlayerService$1;->pausedForRing:Z

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
