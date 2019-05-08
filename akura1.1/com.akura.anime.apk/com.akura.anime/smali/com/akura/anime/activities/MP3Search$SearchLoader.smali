.class Lcom/akura/anime/activities/MP3Search$SearchLoader;
.super Landroid/os/AsyncTask;
.source "MP3Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchLoader"
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
.field private mContext:Landroid/content/Context;

.field private mMsg:Ljava/lang/String;

.field private mPhrase:Ljava/lang/String;

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Search;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Search;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "phrase"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 426
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 422
    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mPhrase:Ljava/lang/String;

    .line 423
    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    .line 427
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mContext:Landroid/content/Context;

    .line 428
    iput-object p3, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mPhrase:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Lcom/akura/anime/activities/MP3Search;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    .line 431
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 24
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 495
    const/4 v11, 0x0

    .line 497
    .local v11, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mPhrase:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mPhrase:Ljava/lang/String;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mPhrase:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, " "

    const-string v19, "-"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mPhrase:Ljava/lang/String;

    .line 501
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$600(Lcom/akura/anime/activities/MP3Search;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v17

    if-nez v17, :cond_1

    .line 503
    const-string v17, "Invalid genre!"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    .line 504
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 620
    :goto_0
    return-object v17

    .line 508
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$600(Lcom/akura/anime/activities/MP3Search;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/akura/anime/objects/MP3Genre;->artists:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 513
    .local v16, "url":Ljava/lang/String;
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?index=0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 514
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "&size=100"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 515
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "&search="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mPhrase:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/akura/utils/Utils;->getEncodedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 519
    invoke-static/range {v16 .. v16}, Lcom/akura/utils/Utils;->getUrl(Ljava/lang/String;)[B

    move-result-object v3

    .line 520
    .local v3, "buffer":[B
    if-nez v3, :cond_3

    .line 522
    const-string v17, "Unable to load genre!"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    .line 523
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_0

    .line 511
    .end local v3    # "buffer":[B
    .end local v16    # "url":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$600(Lcom/akura/anime/activities/MP3Search;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/akura/anime/objects/MP3Genre;->songs:Ljava/lang/String;

    move-object/from16 v16, v0

    .restart local v16    # "url":Ljava/lang/String;
    goto :goto_1

    .line 526
    .restart local v3    # "buffer":[B
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 527
    .local v4, "data":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    .line 531
    const-string v17, "No genre data returned!"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    .line 532
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_0

    .line 535
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$100(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 542
    :goto_2
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    new-instance v17, Lorg/json/JSONTokener;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 543
    .local v9, "jo":Lorg/json/JSONObject;
    if-eqz v9, :cond_5

    .line 545
    const-string v17, "result"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 547
    .local v10, "result":Ljava/lang/String;
    const-string v17, "error"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 549
    const-string v17, "message"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v9    # "jo":Lorg/json/JSONObject;
    .end local v10    # "result":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_0

    .line 538
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->songs:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$200(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 551
    .restart local v9    # "jo":Lorg/json/JSONObject;
    .restart local v10    # "result":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v17, "success"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 553
    const-string v17, "message"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 555
    .local v14, "total":J
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 557
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 558
    .local v7, "ja":Lorg/json/JSONArray;
    if-eqz v7, :cond_5

    .line 560
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Search;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060037

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Search$SearchLoader;->publishProgress([Ljava/lang/Object;)V

    .line 561
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 562
    .local v12, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v12, :cond_a

    .line 564
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 566
    .local v8, "jao":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 568
    new-instance v2, Lcom/akura/anime/database/MP3Artist;

    invoke-direct {v2}, Lcom/akura/anime/database/MP3Artist;-><init>()V

    .line 569
    .local v2, "artist":Lcom/akura/anime/database/MP3Artist;
    invoke-virtual {v2, v8}, Lcom/akura/anime/database/MP3Artist;->copy(Lorg/json/JSONObject;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 571
    int-to-long v0, v6

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/akura/anime/database/MP3Artist;->setId(J)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$100(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    const/4 v11, 0x1

    .line 562
    .end local v2    # "artist":Lcom/akura/anime/database/MP3Artist;
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 581
    :cond_9
    new-instance v13, Lcom/akura/anime/database/MP3Track;

    invoke-direct {v13}, Lcom/akura/anime/database/MP3Track;-><init>()V

    .line 582
    .local v13, "track":Lcom/akura/anime/database/MP3Track;
    invoke-virtual {v13, v8}, Lcom/akura/anime/database/MP3Track;->copy(Lorg/json/JSONObject;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 584
    int-to-long v0, v6

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lcom/akura/anime/database/MP3Track;->setId(J)V

    .line 586
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v18, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;
    invoke-static/range {v18 .. v18}, Lcom/akura/anime/activities/MP3Search;->access$600(Lcom/akura/anime/activities/MP3Search;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/akura/anime/objects/MP3Genre;->archive:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v13, Lcom/akura/anime/database/MP3Track;->artist:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/imagen"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%03d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-wide v0, v13, Lcom/akura/anime/database/MP3Track;->track:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".mp3"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/akura/anime/database/MP3Track;->path:Ljava/lang/String;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->songs:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$200(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    const/4 v11, 0x1

    goto :goto_5

    .line 596
    .end local v8    # "jao":Lorg/json/JSONObject;
    .end local v13    # "track":Lcom/akura/anime/database/MP3Track;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$100(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_5

    .line 600
    const-string v17, "No artists loaded!"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 615
    .end local v6    # "i":I
    .end local v7    # "ja":Lorg/json/JSONArray;
    .end local v9    # "jo":Lorg/json/JSONObject;
    .end local v10    # "result":Ljava/lang/String;
    .end local v12    # "size":I
    .end local v14    # "total":J
    :catch_0
    move-exception v5

    .line 617
    .local v5, "e":Lorg/json/JSONException;
    const-string v17, "Data conversion error!"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    .line 618
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 605
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v6    # "i":I
    .restart local v7    # "ja":Lorg/json/JSONArray;
    .restart local v9    # "jo":Lorg/json/JSONObject;
    .restart local v10    # "result":Ljava/lang/String;
    .restart local v12    # "size":I
    .restart local v14    # "total":J
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v17, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->songs:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/akura/anime/activities/MP3Search;->access$200(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_5

    .line 607
    const-string v17, "No songs loaded!"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Search$SearchLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$300(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$400(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Search;->access$500(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/akura/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 453
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Search;->updateList()V

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    const/4 v1, 0x0

    # setter for: Lcom/akura/anime/activities/MP3Search;->mTask1:Lcom/akura/anime/activities/MP3Search$SearchLoader;
    invoke-static {v0, v1}, Lcom/akura/anime/activities/MP3Search;->access$702(Lcom/akura/anime/activities/MP3Search;Lcom/akura/anime/activities/MP3Search$SearchLoader;)Lcom/akura/anime/activities/MP3Search$SearchLoader;

    .line 471
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "An error occured!"

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$600(Lcom/akura/anime/activities/MP3Search;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->artistsMode:Z
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$000(Lcom/akura/anime/activities/MP3Search;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    const-string v0, "No anime found! \nPlease, try also with its Japanese name."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    .line 467
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/akura/utils/Utils;->toastCenter(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_3
    const-string v0, "No song found! \nPlease, type the anime name which the song belongs to."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->mMsg:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 419
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Search$SearchLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 436
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 438
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$300(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$400(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$400(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 419
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Search$SearchLoader;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    .line 476
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 480
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$SearchLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$400(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    goto :goto_0
.end method
