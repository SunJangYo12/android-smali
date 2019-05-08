.class Lcom/akura/anime/activities/MP3Songs$SongsLoader;
.super Landroid/os/AsyncTask;
.source "MP3Songs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Songs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SongsLoader"
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
.field private homes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Track;",
            ">;"
        }
    .end annotation
.end field

.field private mAuto:Z

.field private mContext:Landroid/content/Context;

.field private mIndex:I

.field private mMode:I

.field private mMsg:Ljava/lang/String;

.field private playlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Playlist;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;

.field private tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Songs;Landroid/content/Context;IIZ)V
    .locals 2
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "mode"    # I
    .param p4, "index"    # I
    .param p5, "play"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1015
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    .line 1007
    iput v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMode:I

    .line 1008
    iput v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mIndex:I

    .line 1009
    iput-boolean v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mAuto:Z

    .line 1016
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mContext:Landroid/content/Context;

    .line 1017
    iput p3, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMode:I

    .line 1018
    iput p4, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mIndex:I

    .line 1019
    iput-boolean p5, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mAuto:Z

    .line 1020
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    .line 1021
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1079
    const/4 v0, 0x0

    .line 1081
    .local v0, "ret":Z
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1083
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->loadTrackHome()Z

    move-result v0

    .line 1093
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1085
    :cond_1
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMode:I

    if-nez v1, :cond_2

    .line 1087
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->loadTrackArchive()Z

    move-result v0

    goto :goto_0

    .line 1089
    :cond_2
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->loadPlaylist()Z

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1003
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public loadPlaylist()Z
    .locals 6

    .prologue
    .line 1098
    const/4 v4, 0x0

    .line 1100
    .local v4, "ret":Z
    new-instance v3, Lcom/akura/anime/database/MP3Playlist;

    invoke-direct {v3}, Lcom/akura/anime/database/MP3Playlist;-><init>()V

    .line 1104
    .local v3, "playlist":Lcom/akura/anime/database/MP3Playlist;
    :try_start_0
    invoke-virtual {v3}, Lcom/akura/anime/database/MP3Playlist;->load()Landroid/database/Cursor;

    move-result-object v0

    .line 1105
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1107
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->playlists:Ljava/util/List;

    .line 1108
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1110
    new-instance v2, Lcom/akura/anime/database/MP3Playlist;

    invoke-direct {v2}, Lcom/akura/anime/database/MP3Playlist;-><init>()V

    .line 1111
    .local v2, "item":Lcom/akura/anime/database/MP3Playlist;
    invoke-virtual {v2, v0}, Lcom/akura/anime/database/MP3Playlist;->copy(Landroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1113
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->playlists:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1120
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "item":Lcom/akura/anime/database/MP3Playlist;
    :catch_0
    move-exception v1

    .line 1122
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 1124
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return v4

    .line 1116
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public loadTrackArchive()Z
    .locals 26

    .prologue
    .line 1220
    const/16 v17, 0x0

    .line 1222
    .local v17, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v23, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->artistName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/akura/anime/activities/MP3Songs;->access$1000(Lcom/akura/anime/activities/MP3Songs;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v23, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->artistName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/akura/anime/activities/MP3Songs;->access$1000(Lcom/akura/anime/activities/MP3Songs;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_1

    .line 1224
    :cond_0
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    .line 1225
    const/16 v23, 0x0

    .line 1307
    :goto_0
    return v23

    .line 1228
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/akura/anime/MP3PlayerApp;->getCurrentGenre(Landroid/content/Context;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v9

    .line 1229
    .local v9, "genre":Lcom/akura/anime/objects/MP3Genre;
    if-nez v9, :cond_2

    .line 1231
    const-string v23, "Invalid genre!"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    .line 1232
    const/16 v23, 0x0

    goto :goto_0

    .line 1235
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v9, Lcom/akura/anime/objects/MP3Genre;->root:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v24, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->artistName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/akura/anime/activities/MP3Songs;->access$1000(Lcom/akura/anime/activities/MP3Songs;)Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/button.png"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1237
    .local v22, "url":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/akura/utils/Utils;->getUrl(Ljava/lang/String;)[B

    move-result-object v5

    .line 1238
    .local v5, "buffer":[B
    if-nez v5, :cond_3

    .line 1240
    const/16 v23, 0x0

    goto :goto_0

    .line 1245
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1247
    .local v4, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 1248
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v6, v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 1250
    .local v7, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    .line 1251
    .local v18, "root":Lorg/w3c/dom/Element;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 1253
    .local v19, "rootList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    .line 1255
    .local v20, "size":I
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "playlist"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 1257
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f06002b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    .line 1259
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1262
    :cond_4
    const/4 v11, 0x1

    .line 1263
    .local v11, "index":I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->tracks:Ljava/util/List;

    .line 1265
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v20

    if-gt v10, v0, :cond_9

    .line 1267
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 1269
    .local v14, "node":Lorg/w3c/dom/Node;
    if-eqz v14, :cond_5

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 1265
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1272
    :cond_6
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "trackList"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1275
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1276
    .local v15, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 1277
    .local v16, "nodes":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 1279
    invoke-interface {v15, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 1281
    .local v12, "item":Lorg/w3c/dom/Node;
    if-eqz v12, :cond_7

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 1277
    :cond_7
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1284
    :cond_8
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "track"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1287
    new-instance v21, Lcom/akura/anime/database/MP3Track;

    invoke-direct/range {v21 .. v21}, Lcom/akura/anime/database/MP3Track;-><init>()V

    .line 1288
    .local v21, "track":Lcom/akura/anime/database/MP3Track;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/akura/anime/database/MP3Track;->copyXML(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1290
    int-to-long v0, v11

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/akura/anime/database/MP3Track;->setId(J)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v23, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->artistId:J
    invoke-static/range {v23 .. v23}, Lcom/akura/anime/activities/MP3Songs;->access$900(Lcom/akura/anime/activities/MP3Songs;)J

    move-result-wide v24

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/akura/anime/database/MP3Track;->setArtist(J)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->tracks:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    add-int/lit8 v11, v11, 0x1

    .line 1295
    const/16 v17, 0x1

    goto :goto_3

    .line 1300
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v12    # "item":Lorg/w3c/dom/Node;
    .end local v13    # "j":I
    .end local v14    # "node":Lorg/w3c/dom/Node;
    .end local v15    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "nodes":I
    .end local v18    # "root":Lorg/w3c/dom/Element;
    .end local v19    # "rootList":Lorg/w3c/dom/NodeList;
    .end local v20    # "size":I
    .end local v21    # "track":Lcom/akura/anime/database/MP3Track;
    :catch_0
    move-exception v8

    .line 1302
    .local v8, "e":Ljava/lang/Exception;
    const-string v23, "MP3Songs"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "parse Error: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f06002b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    .line 1304
    const/16 v17, 0x0

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_9
    move/from16 v23, v17

    .line 1307
    goto/16 :goto_0
.end method

.method public loadTrackHome()Z
    .locals 26

    .prologue
    .line 1129
    const/16 v17, 0x0

    .line 1131
    .local v17, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/akura/anime/MP3PlayerApp;->getCurrentGenre(Landroid/content/Context;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v9

    .line 1132
    .local v9, "genre":Lcom/akura/anime/objects/MP3Genre;
    if-nez v9, :cond_0

    .line 1134
    const-string v23, "Invalid genre!"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    .line 1135
    const/16 v23, 0x0

    .line 1215
    :goto_0
    return v23

    .line 1138
    :cond_0
    iget-object v0, v9, Lcom/akura/anime/objects/MP3Genre;->home:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1140
    .local v22, "url":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/akura/utils/Utils;->getUrl(Ljava/lang/String;)[B

    move-result-object v5

    .line 1142
    .local v5, "buffer":[B
    if-nez v5, :cond_1

    .line 1144
    const/16 v23, 0x0

    goto :goto_0

    .line 1151
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1153
    .local v4, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 1154
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v6, v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 1156
    .local v7, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    .line 1157
    .local v18, "root":Lorg/w3c/dom/Element;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 1159
    .local v19, "rootList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    .line 1162
    .local v20, "size":I
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "playlist"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1164
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/akura/anime/activities/MP3Songs;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f06002b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    .line 1165
    const-string v23, "MP3Songs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/16 v23, 0x0

    goto :goto_0

    .line 1170
    :cond_2
    const/4 v11, 0x1

    .line 1171
    .local v11, "index":I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->homes:Ljava/util/List;

    .line 1173
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v20

    if-gt v10, v0, :cond_7

    .line 1175
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 1177
    .local v14, "node":Lorg/w3c/dom/Node;
    if-eqz v14, :cond_3

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1173
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1180
    :cond_4
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "trackList"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1183
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1184
    .local v15, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 1185
    .local v16, "nodes":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 1187
    invoke-interface {v15, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 1189
    .local v12, "item":Lorg/w3c/dom/Node;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 1185
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1192
    :cond_6
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "track"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1195
    new-instance v21, Lcom/akura/anime/database/MP3Track;

    invoke-direct/range {v21 .. v21}, Lcom/akura/anime/database/MP3Track;-><init>()V

    .line 1196
    .local v21, "track":Lcom/akura/anime/database/MP3Track;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/akura/anime/database/MP3Track;->copyXML(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1198
    int-to-long v0, v11

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/akura/anime/database/MP3Track;->setId(J)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    move-object/from16 v23, v0

    # getter for: Lcom/akura/anime/activities/MP3Songs;->artistId:J
    invoke-static/range {v23 .. v23}, Lcom/akura/anime/activities/MP3Songs;->access$900(Lcom/akura/anime/activities/MP3Songs;)J

    move-result-wide v24

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/akura/anime/database/MP3Track;->setArtist(J)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->homes:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    add-int/lit8 v11, v11, 0x1

    .line 1203
    const/16 v17, 0x1

    goto :goto_3

    .line 1208
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v12    # "item":Lorg/w3c/dom/Node;
    .end local v13    # "j":I
    .end local v14    # "node":Lorg/w3c/dom/Node;
    .end local v15    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "nodes":I
    .end local v18    # "root":Lorg/w3c/dom/Element;
    .end local v19    # "rootList":Lorg/w3c/dom/NodeList;
    .end local v20    # "size":I
    .end local v21    # "track":Lcom/akura/anime/database/MP3Track;
    :catch_0
    move-exception v8

    .line 1210
    .local v8, "e":Ljava/lang/Exception;
    const-string v23, "MP3Songs"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "parse Error: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f06002b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    .line 1212
    const/16 v17, 0x0

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    move/from16 v23, v17

    .line 1215
    goto/16 :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Songs;->access$500(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1036
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1038
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1040
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    .line 1041
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->homes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/database/MP3Track;

    .line 1043
    .local v0, "item":Lcom/akura/anime/database/MP3Track;
    sget-object v2, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1046
    .end local v0    # "item":Lcom/akura/anime/database/MP3Track;
    :cond_0
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMode:I

    if-nez v1, :cond_3

    .line 1048
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->tracks:Ljava/util/List;

    # invokes: Lcom/akura/anime/activities/MP3Songs;->localizeTracks(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/akura/anime/activities/MP3Songs;->access$600(Lcom/akura/anime/activities/MP3Songs;Ljava/util/List;)V

    .line 1049
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->tracks:Ljava/util/List;

    # invokes: Lcom/akura/anime/activities/MP3Songs;->globalizeTracks(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/akura/anime/activities/MP3Songs;->access$700(Lcom/akura/anime/activities/MP3Songs;Ljava/util/List;)V

    .line 1060
    :cond_1
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-virtual {v1}, Lcom/akura/anime/activities/MP3Songs;->updateList()V

    .line 1062
    iget-boolean v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mAuto:Z

    if-eqz v1, :cond_2

    .line 1064
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget v2, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMode:I

    iget v3, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mIndex:I

    # invokes: Lcom/akura/anime/activities/MP3Songs;->autoPlay(II)V
    invoke-static {v1, v2, v3}, Lcom/akura/anime/activities/MP3Songs;->access$800(Lcom/akura/anime/activities/MP3Songs;II)V

    .line 1074
    :cond_2
    :goto_1
    return-void

    .line 1051
    :cond_3
    iget v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1053
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    .line 1054
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->playlists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akura/anime/database/MP3Playlist;

    .line 1056
    .local v0, "item":Lcom/akura/anime/database/MP3Playlist;
    sget-object v2, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1069
    .end local v0    # "item":Lcom/akura/anime/database/MP3Playlist;
    :cond_4
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1071
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->mMsg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/akura/utils/Utils;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1003
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1026
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1028
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsLoader;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$500(Lcom/akura/anime/activities/MP3Songs;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1029
    return-void
.end method
