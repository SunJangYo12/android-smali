.class Lcom/akura/utils/Scroller$2;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/utils/Scroller;
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
    .line 104
    iput-object p1, p0, Lcom/akura/utils/Scroller$2;->this$0:Lcom/akura/utils/Scroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/akura/utils/Scroller$2;->this$0:Lcom/akura/utils/Scroller;

    # invokes: Lcom/akura/utils/Scroller;->resume()V
    invoke-static {v0}, Lcom/akura/utils/Scroller;->access$100(Lcom/akura/utils/Scroller;)V

    .line 108
    return-void
.end method
