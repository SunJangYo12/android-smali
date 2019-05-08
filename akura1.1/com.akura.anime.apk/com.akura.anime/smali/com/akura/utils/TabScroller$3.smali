.class Lcom/akura/utils/TabScroller$3;
.super Ljava/util/TimerTask;
.source "TabScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/utils/TabScroller;->startSleep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/utils/TabScroller;


# direct methods
.method constructor <init>(Lcom/akura/utils/TabScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/utils/TabScroller;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/akura/utils/TabScroller$3;->this$0:Lcom/akura/utils/TabScroller;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/akura/utils/TabScroller$3;->this$0:Lcom/akura/utils/TabScroller;

    # getter for: Lcom/akura/utils/TabScroller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/akura/utils/TabScroller;->access$200(Lcom/akura/utils/TabScroller;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/akura/utils/TabScroller$3;->this$0:Lcom/akura/utils/TabScroller;

    iget-object v1, v1, Lcom/akura/utils/TabScroller;->Timer_Wake:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
