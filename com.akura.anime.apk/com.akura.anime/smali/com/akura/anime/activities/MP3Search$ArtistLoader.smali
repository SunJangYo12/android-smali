.class Lcom/akura/anime/activities/MP3Search$ArtistLoader;
.super Landroid/os/AsyncTask;
.source "MP3Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtistLoader"
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
.field private list:Ljava/util/List;
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

.field private mTrack:Lcom/akura/anime/database/MP3Track;

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Search;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Search;Landroid/content/Context;Lcom/akura/anime/database/MP3Track;)V
    .locals 2
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "track"    # Lcom/akura/anime/database/MP3Track;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->list:Ljava/util/List;

    .line 634
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mContext:Landroid/content/Context;

    .line 635
    iput-object p3, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mTrack:Lcom/akura/anime/database/MP3Track;

    .line 637
    invoke-virtual {p1}, Lcom/akura/anime/activities/MP3Search;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    .line 638
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 708
    const/4 v11, 0x0

    .line 710
    .local v11, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v16, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;
    invoke-static/range {v16 .. v16}, Lcom/akura/anime/activities/MP3Search;->access$600(Lcom/akura/anime/activities/MP3Search;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v16

    if-nez v16, :cond_0

    .line 712
    const-string v16, "Invalid genre!"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    .line 713
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 790
    :goto_0
    return-object v16

    .line 716
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v16, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;
    invoke-static/range {v16 .. v16}, Lcom/akura/anime/activities/MP3Search;->access$600(Lcom/akura/anime/activities/MP3Search;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/akura/anime/objects/MP3Genre;->artists:Ljava/lang/String;

    .line 720
    .local v13, "url":Ljava/lang/String;
    invoke-static {v13}, Lcom/akura/utils/Utils;->getUrl(Ljava/lang/String;)[B

    move-result-object v3

    .line 721
    .local v3, "buffer":[B
    if-nez v3, :cond_1

    .line 723
    const-string v16, "Unable to load genre!"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    .line 724
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto :goto_0

    .line 727
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 728
    .local v4, "data":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 730
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_2

    .line 732
    const-string v16, "No genre data returned!"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    .line 733
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto :goto_0

    .line 736
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v16, v0

    # getter for: Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lcom/akura/anime/activities/MP3Search;->access$100(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 740
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    new-instance v16, Lorg/json/JSONTokener;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 741
    .local v9, "jo":Lorg/json/JSONObject;
    if-eqz v9, :cond_3

    .line 743
    const-string v16, "result"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 745
    .local v10, "result":Ljava/lang/String;
    const-string v16, "error"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 747
    const-string v16, "message"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .end local v9    # "jo":Lorg/json/JSONObject;
    .end local v10    # "result":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto/16 :goto_0

    .line 749
    .restart local v9    # "jo":Lorg/json/JSONObject;
    .restart local v10    # "result":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v16, "success"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 751
    const-string v16, "message"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 753
    .local v14, "total":J
    const-string v16, "data"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 755
    const-string v16, "data"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 756
    .local v7, "ja":Lorg/json/JSONArray;
    if-eqz v7, :cond_3

    .line 758
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/akura/anime/activities/MP3Search;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f060037

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->publishProgress([Ljava/lang/Object;)V

    .line 759
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 760
    .local v12, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v12, :cond_6

    .line 762
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 764
    .local v8, "jao":Lorg/json/JSONObject;
    new-instance v2, Lcom/akura/anime/database/MP3Artist;

    invoke-direct {v2}, Lcom/akura/anime/database/MP3Artist;-><init>()V

    .line 765
    .local v2, "artist":Lcom/akura/anime/database/MP3Artist;
    invoke-virtual {v2, v8}, Lcom/akura/anime/database/MP3Artist;->copy(Lorg/json/JSONObject;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 767
    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/akura/anime/database/MP3Artist;->setId(J)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->list:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    const/4 v11, 0x1

    .line 760
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 776
    .end local v2    # "artist":Lcom/akura/anime/database/MP3Artist;
    .end local v8    # "jao":Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->list:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_3

    .line 778
    const-string v16, "No artists loaded!"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 785
    .end local v6    # "i":I
    .end local v7    # "ja":Lorg/json/JSONArray;
    .end local v9    # "jo":Lorg/json/JSONObject;
    .end local v10    # "result":Ljava/lang/String;
    .end local v12    # "size":I
    .end local v14    # "total":J
    :catch_0
    move-exception v5

    .line 787
    .local v5, "e":Lorg/json/JSONException;
    const-string v16, "Data conversion error!"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    .line 788
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 625
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$300(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$400(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 660
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->list:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/akura/anime/database/MP3Artist;

    .line 661
    .local v6, "artist":Lcom/akura/anime/database/MP3Artist;
    if-nez v6, :cond_1

    .line 658
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iget-wide v0, v6, Lcom/akura/anime/database/MP3Artist;->artist:J

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mTrack:Lcom/akura/anime/database/MP3Track;

    iget-wide v2, v2, Lcom/akura/anime/database/MP3Track;->artist:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/akura/anime/MP3PlayerApp;->stop(Landroid/content/Context;I)V

    .line 666
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    const-string v1, "Songs"

    iget-wide v2, v6, Lcom/akura/anime/database/MP3Artist;->id:J

    iget-object v4, v6, Lcom/akura/anime/database/MP3Artist;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mTrack:Lcom/akura/anime/database/MP3Track;

    iget-wide v8, v5, Lcom/akura/anime/database/MP3Track;->track:J

    long-to-int v5, v8

    add-int/lit8 v5, v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/akura/anime/MP3PlayerApp;->switchArtistsTab(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V

    .line 684
    .end local v6    # "artist":Lcom/akura/anime/database/MP3Artist;
    .end local v7    # "i":I
    :goto_1
    return-void

    .line 672
    .restart local v7    # "i":I
    :cond_2
    const-string v0, "Artist name not available!"

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    .line 681
    .end local v7    # "i":I
    :goto_2
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    const/4 v1, 0x0

    # setter for: Lcom/akura/anime/activities/MP3Search;->mTask2:Lcom/akura/anime/activities/MP3Search$ArtistLoader;
    invoke-static {v0, v1}, Lcom/akura/anime/activities/MP3Search;->access$802(Lcom/akura/anime/activities/MP3Search;Lcom/akura/anime/activities/MP3Search$ArtistLoader;)Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    .line 683
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "An error occured!"

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/akura/utils/Utils;->toastCenter(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 625
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 643
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 645
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$300(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$400(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$400(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 625
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    .line 689
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 693
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->this$0:Lcom/akura/anime/activities/MP3Search;

    # getter for: Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Search;->access$400(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    goto :goto_0
.end method
