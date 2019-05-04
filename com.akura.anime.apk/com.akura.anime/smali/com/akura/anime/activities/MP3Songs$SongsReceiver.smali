.class Lcom/akura/anime/activities/MP3Songs$SongsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MP3Songs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Songs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SongsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;


# direct methods
.method private constructor <init>(Lcom/akura/anime/activities/MP3Songs;)V
    .locals 0

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akura/anime/activities/MP3Songs;Lcom/akura/anime/activities/MP3Songs$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akura/anime/activities/MP3Songs;
    .param p2, "x1"    # Lcom/akura/anime/activities/MP3Songs$1;

    .prologue
    .line 1534
    invoke-direct {p0, p1}, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;-><init>(Lcom/akura/anime/activities/MP3Songs;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1541
    if-eqz p2, :cond_2

    .line 1543
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1544
    .local v4, "action":Ljava/lang/String;
    const-string v19, "mode"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1546
    .local v15, "serviceMode":I
    const-string v19, "com.rock.mp3player.intent.downloading"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1551
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/akura/anime/activities/MP3Songs;->lastUpdate:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/akura/anime/activities/MP3Songs;->lastUpdate:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    const-wide/16 v22, 0x3e8

    cmp-long v19, v20, v22

    if-lez v19, :cond_1

    .line 1553
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->adapter:Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$1600(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->notifyDataSetChanged()V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-wide v10, v0, Lcom/akura/anime/activities/MP3Songs;->lastUpdate:J

    .line 1558
    .end local v10    # "now":J
    :cond_1
    const-string v19, "com.rock.mp3player.intent.downloaded"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->adapter:Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$1600(Lcom/akura/anime/activities/MP3Songs;)Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs$SongsListAdapter;->notifyDataSetChanged()V

    .line 1684
    .end local v4    # "action":Ljava/lang/String;
    .end local v15    # "serviceMode":I
    :cond_2
    :goto_0
    return-void

    .line 1565
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v15    # "serviceMode":I
    :cond_3
    const-string v19, "com.rock.mp3player.intent.play"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1567
    const-string v19, "KEY_DATA"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1568
    .local v6, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$1700(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/SeekBar;

    move-result-object v19

    const-wide/16 v20, 0x3e8

    div-long v20, v6, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$1700(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/SeekBar;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v20, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;
    invoke-static/range {v20 .. v20}, Lcom/akura/anime/activities/MP3Songs;->access$1700(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/SeekBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SeekBar;->getMax()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1680
    .end local v4    # "action":Ljava/lang/String;
    .end local v6    # "duration":J
    .end local v15    # "serviceMode":I
    :catch_0
    move-exception v5

    .line 1682
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1571
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v15    # "serviceMode":I
    :cond_4
    :try_start_1
    const-string v19, "com.rock.mp3player.intent.duration"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1573
    const-string v19, "KEY_MESSAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1575
    .local v18, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v15, :cond_5

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    if-nez v19, :cond_7

    .line 1579
    sget-wide v20, Lcom/akura/anime/MP3PlayerApp;->currentArtistId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->artistId:J
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$900(Lcom/akura/anime/activities/MP3Songs;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-nez v19, :cond_6

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lcom/akura/anime/activities/MP3Songs;->updateTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/akura/anime/activities/MP3Songs;->access$1800(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/String;)V

    .line 1589
    :cond_5
    :goto_1
    const-string v19, "KEY_DATA"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1590
    .restart local v6    # "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$1700(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/SeekBar;

    move-result-object v19

    const-wide/16 v20, 0x3e8

    div-long v20, v6, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$1700(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/SeekBar;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v20, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;
    invoke-static/range {v20 .. v20}, Lcom/akura/anime/activities/MP3Songs;->access$1700(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/SeekBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SeekBar;->getMax()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_0

    .line 1582
    .end local v6    # "duration":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f06005e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    # invokes: Lcom/akura/anime/activities/MP3Songs;->updateTitle(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/akura/anime/activities/MP3Songs;->access$1800(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/String;)V

    goto :goto_1

    .line 1586
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lcom/akura/anime/activities/MP3Songs;->updateTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/akura/anime/activities/MP3Songs;->access$1800(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/String;)V

    goto :goto_1

    .line 1593
    .end local v18    # "title":Ljava/lang/String;
    :cond_8
    const-string v19, "com.rock.mp3player.intent.index"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1595
    const-string v19, "KEY_MESSAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1596
    .restart local v18    # "title":Ljava/lang/String;
    const-string v19, "KEY_DATA"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1598
    .local v8, "index":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v15, :cond_2

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lcom/akura/anime/activities/MP3Songs;->updateTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/akura/anime/activities/MP3Songs;->access$1800(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/String;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    new-instance v20, Lcom/akura/anime/activities/MP3Songs$SongsReceiver$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9}, Lcom/akura/anime/activities/MP3Songs$SongsReceiver$1;-><init>(Lcom/akura/anime/activities/MP3Songs$SongsReceiver;J)V

    invoke-virtual/range {v19 .. v20}, Lcom/akura/anime/activities/MP3Songs;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1613
    .end local v8    # "index":J
    .end local v18    # "title":Ljava/lang/String;
    :cond_9
    const-string v19, "com.rock.mp3player.intent.seek"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v15, :cond_2

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/akura/anime/activities/MP3Songs;->seeking:Z

    goto/16 :goto_0

    .line 1620
    :cond_a
    const-string v19, "com.rock.mp3player.intent.update"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/akura/anime/activities/MP3Songs;->seeking:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 1624
    const-string v19, "KEY_DATA"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1625
    .local v16, "time":J
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-lez v19, :cond_2

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mSeek:Landroid/widget/SeekBar;
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$1700(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/SeekBar;

    move-result-object v19

    const-wide/16 v20, 0x3e8

    div-long v20, v16, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 1629
    .end local v16    # "time":J
    :cond_b
    const-string v19, "com.rock.mp3player.intent.complete"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1632
    const-string v19, "com.rock.mp3player.intent.exception"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/akura/anime/activities/MP3Songs;->playButton(Z)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v15, :cond_2

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # invokes: Lcom/akura/anime/activities/MP3Songs;->stop()V
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$2000(Lcom/akura/anime/activities/MP3Songs;)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f06002a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f06002e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/akura/anime/activities/MP3Songs;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1641
    :cond_c
    const-string v19, "com.rock.mp3player.intent.songs.tab"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    if-nez v19, :cond_2

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    const-string v20, "id"

    const-wide/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    # setter for: Lcom/akura/anime/activities/MP3Songs;->artistId:J
    invoke-static/range {v19 .. v21}, Lcom/akura/anime/activities/MP3Songs;->access$902(Lcom/akura/anime/activities/MP3Songs;J)J

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    const-string v20, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    # setter for: Lcom/akura/anime/activities/MP3Songs;->artistName:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/akura/anime/activities/MP3Songs;->access$1002(Lcom/akura/anime/activities/MP3Songs;Ljava/lang/String;)Ljava/lang/String;

    .line 1647
    const-string v19, "track"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1649
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->clearList()V

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/akura/anime/activities/MP3Songs;->loadTracks(IZ)V

    goto/16 :goto_0

    .line 1654
    .end local v8    # "index":I
    :cond_d
    const-string v19, "com.rock.mp3player.intent.settings.changed"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1666
    :cond_e
    :goto_2
    const-string v19, "KEY_MODE"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1667
    .local v14, "playmode":I
    const-string v19, "KEY_PLAY_INDEX"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1668
    .local v13, "playindex":I
    const-string v19, "KEY_PLAYING"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 1670
    .local v12, "playauto":Z
    const-string v19, "MP3Songs"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v21, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v21 .. v21}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " playmode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " autoplay: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    move/from16 v0, v19

    if-eq v14, v0, :cond_f

    .line 1673
    const/4 v12, 0x0

    .line 1675
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # invokes: Lcom/akura/anime/activities/MP3Songs;->stop()V
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$2000(Lcom/akura/anime/activities/MP3Songs;)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v20, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v20 .. v20}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13, v12}, Lcom/akura/anime/activities/MP3Songs;->downloadTracks(IIZ)V

    goto/16 :goto_0

    .line 1659
    .end local v12    # "playauto":Z
    .end local v13    # "playindex":I
    .end local v14    # "playmode":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v19

    if-eqz v19, :cond_e

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v19, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static/range {v19 .. v19}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    goto/16 :goto_2
.end method
