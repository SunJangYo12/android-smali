.class Lcom/akura/anime/activities/MP3Artists$1;
.super Ljava/lang/Object;
.source "MP3Artists.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Artists;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Artists;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Artists;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Artists;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Artists$1;->this$0:Lcom/akura/anime/activities/MP3Artists;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists$1;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Artists;->access$000(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 106
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists$1;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Artists;->access$000(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 112
    return-void
.end method
