.class public Lcom/akura/anime/activities/MP3Search$SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MP3Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchListAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Search;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Search;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Search;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->context:Landroid/content/Context;

    .line 307
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Search;->access$100(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$100(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->songs:Ljava/util/List;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Search;->access$200(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->songs:Ljava/util/List;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$200(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$100(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_2
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->songs:Ljava/util/List;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$200(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    const-wide/16 v4, -0x1

    .line 352
    iget-object v3, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static {v3}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 355
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    move-object v0, v1

    .line 358
    check-cast v0, Lcom/akura/anime/database/MP3Artist;

    .line 359
    .local v0, "artist":Lcom/akura/anime/database/MP3Artist;
    invoke-virtual {v0}, Lcom/akura/anime/database/MP3Artist;->getId()J

    move-result-wide v4

    goto :goto_0

    .line 363
    .end local v0    # "artist":Lcom/akura/anime/database/MP3Artist;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 364
    .restart local v1    # "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 367
    check-cast v2, Lcom/akura/anime/database/MP3Track;

    .line 368
    .local v2, "track":Lcom/akura/anime/database/MP3Track;
    invoke-virtual {v2}, Lcom/akura/anime/database/MP3Track;->getId()J

    move-result-wide v4

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 374
    move-object v4, p2

    .line 377
    .local v4, "row":Landroid/view/View;
    if-nez v4, :cond_2

    .line 379
    iget-object v6, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    invoke-virtual {v6}, Lcom/akura/anime/activities/MP3Search;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 380
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030002

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 382
    new-instance v0, Lcom/akura/anime/activities/MP3Search$ViewHolder;

    invoke-direct {v0}, Lcom/akura/anime/activities/MP3Search$ViewHolder;-><init>()V

    .line 383
    .local v0, "holder":Lcom/akura/anime/activities/MP3Search$ViewHolder;
    const v6, 0x7f0a000c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/akura/anime/activities/MP3Search$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 385
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 392
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 393
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 395
    iget-object v6, p0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static {v6}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v3

    .line 397
    check-cast v2, Lcom/akura/anime/database/MP3Artist;

    .line 398
    .local v2, "item":Lcom/akura/anime/database/MP3Artist;
    invoke-virtual {v2}, Lcom/akura/anime/database/MP3Artist;->getName()Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "title":Ljava/lang/String;
    const-string v6, "-"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 400
    invoke-virtual {v2}, Lcom/akura/anime/database/MP3Artist;->getId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-int/lit8 v10, p1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 402
    :cond_0
    iget-object v6, v0, Lcom/akura/anime/activities/MP3Search$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .end local v2    # "item":Lcom/akura/anime/database/MP3Artist;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v4

    .line 389
    .end local v0    # "holder":Lcom/akura/anime/activities/MP3Search$ViewHolder;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/activities/MP3Search$ViewHolder;

    .restart local v0    # "holder":Lcom/akura/anime/activities/MP3Search$ViewHolder;
    goto :goto_0

    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_3
    move-object v2, v3

    .line 406
    check-cast v2, Lcom/akura/anime/database/MP3Track;

    .line 407
    .local v2, "item":Lcom/akura/anime/database/MP3Track;
    invoke-virtual {v2}, Lcom/akura/anime/database/MP3Track;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 409
    .restart local v5    # "title":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/akura/anime/database/MP3Track;->getId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-int/lit8 v10, p1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 412
    :cond_4
    iget-object v6, v0, Lcom/akura/anime/activities/MP3Search$ViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
