.class public Lcom/akura/anime/activities/MP3Songs$TrackItemListener;
.super Ljava/lang/Object;
.source "MP3Songs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Songs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackItemListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Songs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$TrackItemListener;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1692
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1693
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/akura/anime/database/MP3Track;

    if-eqz v1, :cond_0

    .line 1695
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$TrackItemListener;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # invokes: Lcom/akura/anime/activities/MP3Songs;->showPopup(Landroid/view/View;Ljava/lang/Object;)V
    invoke-static {v1, p1, v0}, Lcom/akura/anime/activities/MP3Songs;->access$2100(Lcom/akura/anime/activities/MP3Songs;Landroid/view/View;Ljava/lang/Object;)V

    .line 1697
    :cond_0
    return-void
.end method
