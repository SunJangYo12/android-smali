.class Lcom/akura/utils/Scroller$3;
.super Ljava/util/TimerTask;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/utils/Scroller;->startSleep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/utils/Scroller;


# direct methods
.method constructor <init>(Lcom/akura/utils/Scroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/utils/Scroller;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/akura/utils/Scroller$3;->this$0:Lcom/akura/utils/Scroller;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/akura/utils/Scroller$3;->this$0:Lcom/akura/utils/Scroller;

    # getter for: Lcom/akura/utils/Scroller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/akura/utils/Scroller;->access$200(Lcom/akura/utils/Scroller;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/akura/utils/Scroller$3;->this$0:Lcom/akura/utils/Scroller;

    iget-object v1, v1, Lcom/akura/utils/Scroller;->Timer_Wake:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method
