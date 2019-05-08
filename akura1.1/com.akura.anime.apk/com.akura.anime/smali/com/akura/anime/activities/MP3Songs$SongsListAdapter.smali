.class public Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MP3Songs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Songs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SongsListAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Songs;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->map:Ljava/util/HashMap;

    .line 1320
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->mContext:Landroid/content/Context;

    .line 1321
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->localTracks:Ljava/util/List;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$1100(Lcom/akura/anime/activities/MP3Songs;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1328
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->localTracks:Ljava/util/List;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$1100(Lcom/akura/anime/activities/MP3Songs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1340
    :goto_0
    return v0

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1332
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1333
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1335
    :cond_1
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1337
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1338
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1340
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 1345
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-object v0

    .line 1348
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->localTracks:Ljava/util/List;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$1100(Lcom/akura/anime/activities/MP3Songs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1354
    :cond_2
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1356
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1358
    :cond_3
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1360
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 1369
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1371
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/database/MP3Track;

    .line 1372
    .local v0, "item":Lcom/akura/anime/database/MP3Track;
    if-nez v0, :cond_1

    .line 1394
    .end local v0    # "item":Lcom/akura/anime/database/MP3Track;
    :cond_0
    :goto_0
    return-wide v2

    .line 1375
    .restart local v0    # "item":Lcom/akura/anime/database/MP3Track;
    :cond_1
    invoke-virtual {v0}, Lcom/akura/anime/database/MP3Track;->getId()J

    move-result-wide v2

    goto :goto_0

    .line 1377
    .end local v0    # "item":Lcom/akura/anime/database/MP3Track;
    :cond_2
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 1379
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/database/MP3Playlist;

    .line 1381
    .local v0, "item":Lcom/akura/anime/database/MP3Playlist;
    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {v0}, Lcom/akura/anime/database/MP3Playlist;->getId()J

    move-result-wide v2

    goto :goto_0

    .line 1386
    .end local v0    # "item":Lcom/akura/anime/database/MP3Playlist;
    :cond_3
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1388
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/database/MP3Track;

    .line 1389
    .local v0, "item":Lcom/akura/anime/database/MP3Track;
    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {v0}, Lcom/akura/anime/database/MP3Track;->getId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1399
    move-object/from16 v8, p2

    .line 1401
    .local v8, "row":Landroid/view/View;
    if-nez v8, :cond_0

    .line 1403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-virtual {v13}, Lcom/akura/anime/activities/MP3Songs;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1404
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f030010

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1407
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v13, 0x7f0a000f

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1408
    .local v6, "lyContainer":Landroid/widget/FrameLayout;
    const v13, 0x7f0a000c

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1409
    .local v12, "tvTitle":Landroid/widget/TextView;
    const v13, 0x7f0a000a

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1410
    .local v11, "tvProgress":Landroid/widget/TextView;
    const v13, 0x7f0a0029

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 1412
    .local v3, "imAdd":Landroid/widget/ImageButton;
    const v13, 0x7f020037

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1413
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v13

    if-nez v13, :cond_4

    .line 1417
    invoke-virtual/range {p0 .. p1}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/akura/anime/database/MP3Track;

    .line 1418
    .local v5, "item":Lcom/akura/anime/database/MP3Track;
    if-eqz v5, :cond_1

    .line 1420
    invoke-virtual {v5}, Lcom/akura/anime/database/MP3Track;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 1421
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->trackPlayListener:Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$1200(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1426
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->trackAddListener:Lcom/akura/anime/activities/MP3Songs$TrackItemListener;
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$1300(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$TrackItemListener;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1430
    .end local v10    # "title":Ljava/lang/String;
    :cond_1
    sget v13, Lcom/akura/anime/MP3PlayerApp;->trackIndex:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_3

    sget v13, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v14}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v14

    if-ne v13, v14, :cond_3

    sget-wide v14, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->artistId:J
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$900(Lcom/akura/anime/activities/MP3Songs;)J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_3

    .line 1432
    const/high16 v13, -0x1000000

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1433
    const v13, 0x7f020001

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1530
    .end local v5    # "item":Lcom/akura/anime/database/MP3Track;
    :cond_2
    :goto_0
    return-object v8

    .line 1437
    .restart local v5    # "item":Lcom/akura/anime/database/MP3Track;
    :cond_3
    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1438
    const v13, 0x7f020002

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1441
    .end local v5    # "item":Lcom/akura/anime/database/MP3Track;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 1443
    invoke-virtual/range {p0 .. p1}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/akura/anime/database/MP3Playlist;

    .line 1444
    .local v5, "item":Lcom/akura/anime/database/MP3Playlist;
    if-eqz v5, :cond_a

    .line 1448
    invoke-virtual {v5}, Lcom/akura/anime/database/MP3Playlist;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 1449
    .restart local v10    # "title":Ljava/lang/String;
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    sget-object v13, Lcom/akura/anime/MP3PlayerApp;->downloadList:Ljava/util/HashMap;

    iget-object v14, v5, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akura/anime/objects/DownloadItem;

    .line 1452
    .local v2, "dld":Lcom/akura/anime/objects/DownloadItem;
    if-eqz v2, :cond_8

    .line 1454
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1455
    const-string v9, ""

    .line 1456
    .local v9, "str":Ljava/lang/String;
    iget-wide v14, v2, Lcom/akura/anime/objects/DownloadItem;->read:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_6

    .line 1458
    const-string v9, "..."

    .line 1472
    :goto_1
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1479
    .end local v9    # "str":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->playlistPlayListener:Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$1400(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$PlaylistPlayListener;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1482
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->playlistListener:Lcom/akura/anime/activities/MP3Songs$PlaylistItemListener;
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$1500(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$PlaylistItemListener;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1486
    iget-wide v14, v5, Lcom/akura/anime/database/MP3Playlist;->id:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-eqz v13, :cond_9

    sget-wide v14, Lcom/akura/anime/MP3PlayerApp;->playlistId:J

    iget-wide v0, v5, Lcom/akura/anime/database/MP3Playlist;->id:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_9

    sget v13, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v14}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v14

    if-ne v13, v14, :cond_9

    .line 1488
    const/high16 v13, -0x1000000

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1489
    const v13, 0x7f020001

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1462
    .restart local v9    # "str":Ljava/lang/String;
    :cond_6
    iget-wide v14, v2, Lcom/akura/anime/objects/DownloadItem;->size:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-nez v13, :cond_7

    .line 1464
    iget-wide v14, v2, Lcom/akura/anime/objects/DownloadItem;->read:J

    invoke-static {v14, v15}, Lcom/akura/utils/Utils;->getByteFormat(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1468
    :cond_7
    iget-wide v14, v2, Lcom/akura/anime/objects/DownloadItem;->read:J

    long-to-float v13, v14

    iget-wide v14, v2, Lcom/akura/anime/objects/DownloadItem;->size:J

    long-to-float v14, v14

    div-float v7, v13, v14

    .line 1469
    .local v7, "percentage":F
    const-string v13, "%.01f%%"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    float-to-double v0, v7

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1474
    .end local v7    # "percentage":F
    .end local v9    # "str":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v14, v5, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/akura/anime/MP3PlayerApp;->downloadExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1476
    const v13, 0x7f020038

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 1493
    :cond_9
    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1494
    const v13, 0x7f020002

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1499
    .end local v2    # "dld":Lcom/akura/anime/objects/DownloadItem;
    .end local v10    # "title":Ljava/lang/String;
    :cond_a
    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1500
    const v13, 0x7f020002

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1503
    .end local v5    # "item":Lcom/akura/anime/database/MP3Playlist;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 1505
    invoke-virtual/range {p0 .. p1}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/akura/anime/database/MP3Track;

    .line 1507
    .local v5, "item":Lcom/akura/anime/database/MP3Track;
    if-eqz v5, :cond_c

    .line 1509
    invoke-virtual {v5}, Lcom/akura/anime/database/MP3Track;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 1510
    .restart local v10    # "title":Ljava/lang/String;
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1512
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->trackPlayListener:Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$1200(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$TrackPlayListener;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1515
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->trackAddListener:Lcom/akura/anime/activities/MP3Songs$TrackItemListener;
    invoke-static {v13}, Lcom/akura/anime/activities/MP3Songs;->access$1300(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$TrackItemListener;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    .end local v10    # "title":Ljava/lang/String;
    :cond_c
    sget v13, Lcom/akura/anime/MP3PlayerApp;->homeIndex:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_d

    sget v13, Lcom/akura/anime/MP3PlayerService;->streamMode:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v14}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v14

    if-ne v13, v14, :cond_d

    .line 1521
    const/high16 v13, -0x1000000

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1522
    const v13, 0x7f020001

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1526
    :cond_d
    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1527
    const v13, 0x7f020002

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method
