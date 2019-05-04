.class Lcom/akura/utils/TabScroller$2;
.super Ljava/lang/Object;
.source "TabScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/utils/TabScroller;
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
    .line 78
    iput-object p1, p0, Lcom/akura/utils/TabScroller$2;->this$0:Lcom/akura/utils/TabScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/akura/utils/TabScroller$2;->this$0:Lcom/akura/utils/TabScroller;

    # invokes: Lcom/akura/utils/TabScroller;->resume()V
    invoke-static {v0}, Lcom/akura/utils/TabScroller;->access$100(Lcom/akura/utils/TabScroller;)V

    .line 82
    return-void
.end method
