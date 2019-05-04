.class public Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MP3Genres.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Genres;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenreListAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Genres;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Genres;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Genres;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;->this$0:Lcom/akura/anime/activities/MP3Genres;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;->mContext:Landroid/content/Context;

    .line 135
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->mGenres:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->mGenres:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 153
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->mGenres:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 165
    move-object v3, p2

    .line 167
    .local v3, "row":Landroid/view/View;
    if-nez v3, :cond_0

    .line 169
    iget-object v6, p0, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;->this$0:Lcom/akura/anime/activities/MP3Genres;

    invoke-virtual {v6}, Lcom/akura/anime/activities/MP3Genres;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 170
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030006

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 173
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x7f0a000f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 174
    .local v2, "lyContainer":Landroid/widget/FrameLayout;
    const v6, 0x7f0a000c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 175
    .local v5, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akura/anime/objects/MP3Genre;

    .line 176
    .local v1, "item":Lcom/akura/anime/objects/MP3Genre;
    if-eqz v1, :cond_1

    .line 178
    iget-object v4, v1, Lcom/akura/anime/objects/MP3Genre;->title:Ljava/lang/String;

    .line 179
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/akura/anime/MP3Prefs;->getGenre(Landroid/content/Context;)I

    move-result v6

    if-ne p1, v6, :cond_2

    .line 184
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    const v6, 0x7f020001

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 192
    :goto_0
    return-object v3

    .line 189
    :cond_2
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    const v6, 0x7f020002

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method
