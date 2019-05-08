.class public Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;
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
    name = "PlaylistPlayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Songs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1734
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1735
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1737
    check-cast v0, Ljava/lang/Integer;

    .line 1738
    .local v0, "i":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/akura/anime/activities/MP3Songs;->play(I)V

    .line 1740
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-static {v2}, Lcom/akura/anime/MP3PlayerApp;->interstitial(Landroid/content/Context;)V

    .line 1742
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    return-void
.end method
