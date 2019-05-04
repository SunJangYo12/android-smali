.class Lcom/akura/anime/activities/MP3Songs$3;
.super Ljava/lang/Object;
.source "MP3Songs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Songs;->updateTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$3;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iput-object p2, p0, Lcom/akura/anime/activities/MP3Songs$3;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$3;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mScroller:Lcom/akura/utils/Scroller;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$300(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/utils/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/akura/utils/Scroller;->start(Ljava/lang/String;)V

    .line 747
    return-void
.end method
