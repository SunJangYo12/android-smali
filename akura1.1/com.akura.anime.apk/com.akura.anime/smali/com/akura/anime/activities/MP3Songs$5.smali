.class Lcom/akura/anime/activities/MP3Songs$5;
.super Ljava/lang/Object;
.source "MP3Songs.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Songs;->showPopup(Landroid/view/View;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iput-object p2, p0, Lcom/akura/anime/activities/MP3Songs$5;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v4, 0x4

    .line 873
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->val$obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/akura/anime/database/MP3Playlist;

    if-eqz v2, :cond_4

    .line 875
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$5;->val$obj:Ljava/lang/Object;

    check-cast v0, Lcom/akura/anime/database/MP3Playlist;

    .line 876
    .local v0, "item":Lcom/akura/anime/database/MP3Playlist;
    const-wide/16 v2, 0x2

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 878
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-virtual {v2, v0}, Lcom/akura/anime/activities/MP3Songs;->removePlaylist(Lcom/akura/anime/database/MP3Playlist;)V

    .line 920
    .end local v0    # "item":Lcom/akura/anime/database/MP3Playlist;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # invokes: Lcom/akura/anime/activities/MP3Songs;->closePopup()V
    invoke-static {v2}, Lcom/akura/anime/activities/MP3Songs;->access$400(Lcom/akura/anime/activities/MP3Songs;)V

    .line 921
    :goto_1
    return-void

    .line 880
    .restart local v0    # "item":Lcom/akura/anime/database/MP3Playlist;
    :cond_1
    const-wide/16 v2, 0x3

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 882
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v3, v0, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/akura/anime/MP3PlayerApp;->downloadRemove(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_2
    cmp-long v2, p4, v4

    if-nez v2, :cond_3

    .line 886
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v3, v0, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/akura/anime/MP3PlayerApp;->downloadAdd(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 888
    :cond_3
    const-wide/16 v2, 0x5

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 890
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v3, v0, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/akura/anime/MP3PlayerApp;->downloadCancel(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    .end local v0    # "item":Lcom/akura/anime/database/MP3Playlist;
    :cond_4
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$5;->val$obj:Ljava/lang/Object;

    check-cast v0, Lcom/akura/anime/database/MP3Track;

    .line 896
    .local v0, "item":Lcom/akura/anime/database/MP3Track;
    const-wide/16 v2, 0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_5

    .line 898
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/akura/anime/activities/MP3Songs;->addTrack(Lcom/akura/anime/database/MP3Track;Z)V

    goto :goto_0

    .line 900
    :cond_5
    cmp-long v2, p4, v4

    if-nez v2, :cond_0

    .line 902
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v3, v0, Lcom/akura/anime/database/MP3Track;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/akura/anime/MP3PlayerApp;->downloadExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 904
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v3, v0, Lcom/akura/anime/database/MP3Track;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/akura/anime/MP3PlayerApp;->downloadAdd(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 906
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # invokes: Lcom/akura/anime/activities/MP3Songs;->closePopup()V
    invoke-static {v2}, Lcom/akura/anime/activities/MP3Songs;->access$400(Lcom/akura/anime/activities/MP3Songs;)V

    goto :goto_1

    .line 911
    :cond_6
    new-instance v1, Lcom/akura/anime/database/MP3Playlist;

    invoke-direct {v1}, Lcom/akura/anime/database/MP3Playlist;-><init>()V

    .line 912
    .local v1, "playlist":Lcom/akura/anime/database/MP3Playlist;
    iget-object v2, v0, Lcom/akura/anime/database/MP3Track;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/akura/anime/database/MP3Playlist;->getByPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 914
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/akura/anime/activities/MP3Songs;->addTrack(Lcom/akura/anime/database/MP3Track;Z)V

    .line 917
    :cond_7
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v3, p0, Lcom/akura/anime/activities/MP3Songs$5;->this$0:Lcom/akura/anime/activities/MP3Songs;

    const v4, 0x7f060036

    invoke-virtual {v3, v4}, Lcom/akura/anime/activities/MP3Songs;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/akura/utils/Utils;->toastCenter(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
