.class Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;
.super Landroid/os/AsyncTask;
.source "MP3Artists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Artists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtistsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Artist;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Artists;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Artists;Landroid/content/Context;)V
    .locals 2
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->mMsg:Ljava/lang/String;

    .line 392
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->mContext:Landroid/content/Context;

    .line 393
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->mMsg:Ljava/lang/String;

    .line 395
    const/4 v0, -0x1

    iput v0, p1, Lcom/akura/anime/activities/MP3Artists;->clickIndex:I

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->items:Ljava/util/List;

    .line 397
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 464
    const/4 v12, 0x0

    .line 466
    .local v12, "ret":Z
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "Reading..."

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->publishProgress([Ljava/lang/Object;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/akura/anime/MP3PlayerApp;->getCurrentGenre(Landroid/content/Context;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v6

    .line 469
    .local v6, "genre":Lcom/akura/anime/objects/MP3Genre;
    if-nez v6, :cond_0

    .line 471
    const-string v15, "Invalid genre!"

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->mMsg:Ljava/lang/String;

    .line 472
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 542
    :goto_0
    return-object v15

    .line 476
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lcom/akura/anime/objects/MP3Genre;->artists:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?index="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    move-object/from16 v16, v0

    # getter for: Lcom/akura/anime/activities/MP3Artists;->offset:I
    invoke-static/range {v16 .. v16}, Lcom/akura/anime/activities/MP3Artists;->access$400(Lcom/akura/anime/activities/MP3Artists;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x64

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&time="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 478
    .local v14, "url":Ljava/lang/String;
    invoke-static {v14}, Lcom/akura/utils/Utils;->getUrl(Ljava/lang/String;)[B

    move-result-object v3

    .line 480
    .local v3, "buffer":[B
    if-nez v3, :cond_1

    .line 482
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_0

    .line 485
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 487
    .local v4, "data":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_0

    .line 493
    :cond_2
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    new-instance v15, Lorg/json/JSONTokener;

    invoke-direct {v15, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v15}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 495
    .local v10, "jo":Lorg/json/JSONObject;
    if-eqz v10, :cond_3

    .line 497
    if-eqz v10, :cond_3

    .line 499
    const-string v15, "result"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 501
    .local v11, "result":Ljava/lang/String;
    const-string v15, "error"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 503
    const-string v15, "message"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->mMsg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .end local v10    # "jo":Lorg/json/JSONObject;
    .end local v11    # "result":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_0

    .line 505
    .restart local v10    # "jo":Lorg/json/JSONObject;
    .restart local v11    # "result":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v15, "success"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 507
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    const-string v16, "message"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    # setter for: Lcom/akura/anime/activities/MP3Artists;->total:J
    invoke-static/range {v15 .. v17}, Lcom/akura/anime/activities/MP3Artists;->access$702(Lcom/akura/anime/activities/MP3Artists;J)J

    .line 508
    const-string v15, "data"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 510
    const-string v15, "data"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 511
    .local v8, "ja":Lorg/json/JSONArray;
    if-eqz v8, :cond_5

    .line 513
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "Processing..."

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->publishProgress([Ljava/lang/Object;)V

    .line 514
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 515
    .local v13, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v13, :cond_5

    .line 517
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 519
    .local v9, "jao":Lorg/json/JSONObject;
    new-instance v2, Lcom/akura/anime/database/MP3Artist;

    invoke-direct {v2}, Lcom/akura/anime/database/MP3Artist;-><init>()V

    .line 520
    .local v2, "artist":Lcom/akura/anime/database/MP3Artist;
    invoke-virtual {v2, v9}, Lcom/akura/anime/database/MP3Artist;->copy(Lorg/json/JSONObject;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 522
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->offset:I
    invoke-static {v15}, Lcom/akura/anime/activities/MP3Artists;->access$400(Lcom/akura/anime/activities/MP3Artists;)I

    move-result v15

    add-int/2addr v15, v7

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/akura/anime/database/MP3Artist;->setId(J)V

    .line 524
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->items:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->isCancelled()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    if-eqz v15, :cond_6

    .line 529
    .end local v2    # "artist":Lcom/akura/anime/database/MP3Artist;
    .end local v7    # "i":I
    .end local v9    # "jao":Lorg/json/JSONObject;
    .end local v13    # "size":I
    :cond_5
    const/4 v12, 0x1

    goto :goto_1

    .line 515
    .restart local v2    # "artist":Lcom/akura/anime/database/MP3Artist;
    .restart local v7    # "i":I
    .restart local v9    # "jao":Lorg/json/JSONObject;
    .restart local v13    # "size":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 535
    .end local v2    # "artist":Lcom/akura/anime/database/MP3Artist;
    .end local v7    # "i":I
    .end local v8    # "ja":Lorg/json/JSONArray;
    .end local v9    # "jao":Lorg/json/JSONObject;
    .end local v10    # "jo":Lorg/json/JSONObject;
    .end local v11    # "result":Ljava/lang/String;
    .end local v13    # "size":I
    :catch_0
    move-exception v5

    .line 537
    .local v5, "e":Lorg/json/JSONException;
    const-string v15, "MP3Artists"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "doInBackground: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 383
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x4

    .line 418
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Artists;->access$100(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->infoText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Artists;->access$200(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 425
    sget-object v1, Lcom/akura/anime/activities/MP3Artists;->artists:Ljava/util/List;

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->offset:I
    invoke-static {v2}, Lcom/akura/anime/activities/MP3Artists;->access$400(Lcom/akura/anime/activities/MP3Artists;)I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    # setter for: Lcom/akura/anime/activities/MP3Artists;->offset:I
    invoke-static {v1, v2}, Lcom/akura/anime/activities/MP3Artists;->access$402(Lcom/akura/anime/activities/MP3Artists;I)I

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->artistAdapter:Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Artists;->access$500(Lcom/akura/anime/activities/MP3Artists;)Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->notifyDataSetChanged()V

    .line 438
    .end local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    const/4 v2, 0x0

    # setter for: Lcom/akura/anime/activities/MP3Artists;->loading:Z
    invoke-static {v1, v2}, Lcom/akura/anime/activities/MP3Artists;->access$302(Lcom/akura/anime/activities/MP3Artists;Z)Z

    .line 439
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->artistScroller:Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Artists;->access$600(Lcom/akura/anime/activities/MP3Artists;)Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->loading:Z
    invoke-static {v2}, Lcom/akura/anime/activities/MP3Artists;->access$300(Lcom/akura/anime/activities/MP3Artists;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;->setLoading(Z)V

    .line 440
    return-void

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->mMsg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/akura/utils/Utils;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 383
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 404
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Artists;->access$100(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Artists;->access$200(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Artists;->access$200(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    const/4 v1, 0x1

    # setter for: Lcom/akura/anime/activities/MP3Artists;->loading:Z
    invoke-static {v0, v1}, Lcom/akura/anime/activities/MP3Artists;->access$302(Lcom/akura/anime/activities/MP3Artists;Z)Z

    .line 409
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->offset:I
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Artists;->access$400(Lcom/akura/anime/activities/MP3Artists;)I

    move-result v0

    if-nez v0, :cond_0

    .line 411
    sget-object v0, Lcom/akura/anime/activities/MP3Artists;->artists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 383
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    .line 445
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 449
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->this$0:Lcom/akura/anime/activities/MP3Artists;

    # getter for: Lcom/akura/anime/activities/MP3Artists;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Artists;->access$200(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    goto :goto_0
.end method
