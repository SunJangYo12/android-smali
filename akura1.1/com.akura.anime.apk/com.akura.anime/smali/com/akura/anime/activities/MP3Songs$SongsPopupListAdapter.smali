.class public Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MP3Songs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Songs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SongsPopupListAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/objects/SongsPopupItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Songs;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p2, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/objects/SongsPopupItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/akura/anime/objects/SongsPopupItem;>;"
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 954
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;->mContext:Landroid/content/Context;

    .line 955
    iput-object p3, p0, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;->mItems:Ljava/util/List;

    .line 956
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 965
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 968
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 974
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/objects/SongsPopupItem;

    .line 975
    .local v0, "item":Lcom/akura/anime/objects/SongsPopupItem;
    if-eqz v0, :cond_0

    .line 976
    iget v1, v0, Lcom/akura/anime/objects/SongsPopupItem;->id:I

    int-to-long v2, v1

    .line 978
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 984
    move-object v2, p2

    .line 986
    .local v2, "row":Landroid/view/View;
    if-nez v2, :cond_0

    .line 988
    iget-object v4, p0, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-virtual {v4}, Lcom/akura/anime/activities/MP3Songs;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 989
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03000b

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 992
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f0a000c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 994
    .local v3, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Songs$SongsPopupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akura/anime/objects/SongsPopupItem;

    .line 995
    .local v1, "item":Lcom/akura/anime/objects/SongsPopupItem;
    if-eqz v1, :cond_1

    .line 996
    iget-object v4, v1, Lcom/akura/anime/objects/SongsPopupItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    :goto_0
    return-object v2

    .line 998
    :cond_1
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
