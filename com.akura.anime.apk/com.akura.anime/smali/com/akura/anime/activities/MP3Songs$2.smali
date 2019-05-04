.class Lcom/akura/anime/activities/MP3Songs$2;
.super Ljava/lang/Object;
.source "MP3Songs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;

.field final synthetic val$play:Z


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Songs;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$2;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iput-boolean p2, p0, Lcom/akura/anime/activities/MP3Songs$2;->val$play:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/akura/anime/activities/MP3Songs$2;->val$play:Z

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$2;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mPlay:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$200(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 689
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$2;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mPlay:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$200(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
