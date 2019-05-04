.class public Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MP3Artists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Artists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArtistsListAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Artists;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Artists;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Artists;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Artists;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 297
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->mContext:Landroid/content/Context;

    .line 299
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/akura/anime/activities/MP3Artists;->artists:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/akura/anime/activities/MP3Artists;->artists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 306
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

    .line 311
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 314
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 316
    sget-object v0, Lcom/akura/anime/activities/MP3Artists;->artists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/database/MP3Artist;

    .line 326
    .local v0, "item":Lcom/akura/anime/database/MP3Artist;
    if-nez v0, :cond_0

    .line 327
    const-wide/16 v2, -0x1

    .line 329
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lcom/akura/anime/database/MP3Artist;->getId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 334
    move-object v4, p2

    .line 336
    .local v4, "row":Landroid/view/View;
    if-nez v4, :cond_0

    .line 338
    iget-object v8, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Artists;

    invoke-virtual {v8}, Lcom/akura/anime/activities/MP3Artists;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 339
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f030002

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 342
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v8, 0x7f0a000f

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 343
    .local v2, "lyContainer":Landroid/widget/FrameLayout;
    const v8, 0x7f0a000c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 345
    .local v7, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akura/anime/database/MP3Artist;

    .line 347
    .local v1, "item":Lcom/akura/anime/database/MP3Artist;
    const/4 v3, 0x0

    .line 348
    .local v3, "m":Z
    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {v1}, Lcom/akura/anime/database/MP3Artist;->getName()Ljava/lang/String;

    move-result-object v6

    .line 351
    .local v6, "title":Ljava/lang/String;
    const-string v8, "-"

    const-string v9, " "

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 352
    invoke-virtual {v1}, Lcom/akura/anime/database/MP3Artist;->getId()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, p1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    .end local v6    # "title":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/akura/anime/activities/MP3Artists;->access$000(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v5

    .line 364
    .local v5, "sel":I
    if-eq p1, v5, :cond_2

    iget-object v8, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Artists;

    iget v8, v8, Lcom/akura/anime/activities/MP3Artists;->clickIndex:I

    if-ne p1, v8, :cond_5

    .line 366
    :cond_2
    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    const v8, 0x7f020001

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 375
    :goto_1
    if-eqz v3, :cond_3

    .line 377
    const/16 v8, -0x3600

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    :cond_3
    return-object v4

    .line 358
    .end local v5    # "sel":I
    .restart local v6    # "title":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 371
    .end local v6    # "title":Ljava/lang/String;
    .restart local v5    # "sel":I
    :cond_5
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    const v8, 0x7f020002

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
