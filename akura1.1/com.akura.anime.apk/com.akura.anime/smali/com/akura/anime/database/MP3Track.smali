.class public Lcom/akura/anime/database/MP3Track;
.super Lcom/akura/anime/database/DatabaseObject;
.source "MP3Track.java"


# static fields
.field public static final DB_TABLE:Ljava/lang/String; = "track"

.field private static final INDEX_ARTIST:I = 0x2

.field private static final INDEX_GENRE:I = 0x4

.field private static final INDEX_TITLE:I = 0x3

.field private static final INDEX_TRACK:I = 0x1

.field public static final KEY_ARTIST:Ljava/lang/String; = "artist"

.field public static final KEY_GENRE:Ljava/lang/String; = "genre"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_TRACK:Ljava/lang/String; = "track"

.field private static final TAG:Ljava/lang/String; = "Track"

.field static columns:[Ljava/lang/String;


# instance fields
.field public artist:J

.field public genre:I

.field public path:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public track:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/akura/anime/database/MP3Track;->KEY_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "track"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "genre"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akura/anime/database/MP3Track;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    const-string v1, "track"

    sget-object v2, Lcom/akura/anime/database/MP3Track;->KEY_ID:Ljava/lang/String;

    sget-object v3, Lcom/akura/anime/database/MP3Track;->columns:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/akura/anime/database/DatabaseObject;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 48
    iput-wide v4, p0, Lcom/akura/anime/database/MP3Track;->track:J

    .line 49
    iput-wide v4, p0, Lcom/akura/anime/database/MP3Track;->artist:J

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/akura/anime/database/MP3Track;->title:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/akura/anime/database/MP3Track;->genre:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/database/MP3Track;->path:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public copy(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 132
    :try_start_0
    sget v2, Lcom/akura/anime/database/MP3Track;->INDEX_ID:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akura/anime/database/MP3Track;->id:J

    .line 133
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akura/anime/database/MP3Track;->track:J

    .line 134
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/akura/anime/database/MP3Track;->artist:J

    .line 135
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akura/anime/database/MP3Track;->title:Ljava/lang/String;

    .line 136
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/akura/anime/database/MP3Track;->genre:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copy(Lorg/json/JSONObject;)Z
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 112
    :try_start_0
    const-string v1, "song"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/akura/anime/database/MP3Track;->setTrack(J)V

    .line 113
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/akura/anime/database/MP3Track;->setArtist(J)V

    .line 115
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akura/anime/database/MP3Track;->setTitle(Ljava/lang/String;)V

    .line 116
    const-string v1, "genre"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/akura/anime/database/MP3Track;->setGenre(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 v1, 0x1

    .line 123
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "Track"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy Track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copyXML(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "count":I
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 225
    .local v4, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 227
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 229
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 230
    .local v2, "item":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-eq v8, v7, :cond_1

    .line 227
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/akura/utils/Utils;->getUTF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "value":Ljava/lang/String;
    const-string v8, "title"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 238
    invoke-virtual {p0, v6}, Lcom/akura/anime/database/MP3Track;->setTitle(Ljava/lang/String;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    :cond_2
    const-string v8, "location"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 243
    invoke-static {p2, v6}, Lcom/akura/anime/MP3PlayerApp;->getTrackArchiveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/akura/anime/database/MP3Track;->setPath(Ljava/lang/String;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    .end local v2    # "item":Lorg/w3c/dom/Node;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    if-lez v0, :cond_4

    :goto_2
    return v7

    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public bridge synthetic delete()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->delete()Z

    move-result v0

    return v0
.end method

.method public delete(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 202
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "track"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/akura/anime/database/MP3Track;->KEY_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 203
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 202
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic deleteAll()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(J)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/akura/anime/database/DatabaseObject;->get(J)Z

    move-result v0

    return v0
.end method

.method public getArtist()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/akura/anime/database/MP3Track;->artist:J

    return-wide v0
.end method

.method public getByID(J)Z
    .locals 13
    .param p1, "id"    # J

    .prologue
    const/4 v12, 0x1

    .line 160
    const/4 v11, 0x0

    .line 163
    .local v11, "mCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Track;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v3, Lcom/akura/anime/database/MP3Track;->columns:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/akura/anime/database/MP3Track;->KEY_ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 164
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    invoke-virtual {p0, v11}, Lcom/akura/anime/database/MP3Track;->copy(Landroid/database/Cursor;)Z

    .line 168
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-eqz v11, :cond_0

    .line 180
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 183
    :goto_0
    return v0

    .line 178
    :cond_1
    if-eqz v11, :cond_2

    .line 180
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v10

    .line 174
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Track"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    if-eqz v11, :cond_2

    .line 180
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 178
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 180
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getGenre()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/akura/anime/database/MP3Track;->genre:I

    return v0
.end method

.method public bridge synthetic getId()J
    .locals 2

    .prologue
    .line 15
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/akura/anime/database/MP3Track;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/akura/anime/database/MP3Track;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/akura/anime/database/MP3Track;->track:J

    return-wide v0
.end method

.method protected getValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "track"

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Track;->track:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v1, "artist"

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Track;->artist:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string v1, "title"

    iget-object v2, p0, Lcom/akura/anime/database/MP3Track;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "genre"

    iget v2, p0, Lcom/akura/anime/database/MP3Track;->genre:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    return-object v0
.end method

.method public bridge synthetic insert()J
    .locals 2

    .prologue
    .line 15
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->insert()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic load()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->load()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public loadByArtist(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "artist"    # J

    .prologue
    const/4 v4, 0x0

    .line 195
    const-string v0, "Track"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Track;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on artist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/MP3Track;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v2, Lcom/akura/anime/database/MP3Track;->columns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public loadByTrack(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "track"    # J

    .prologue
    const/4 v4, 0x0

    .line 189
    const-string v0, "Track"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Track;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on track = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/MP3Track;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v2, Lcom/akura/anime/database/MP3Track;->columns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "track="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/akura/anime/database/MP3Track;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIKE ? ORDER BY _id ASC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public setArtist(J)V
    .locals 1
    .param p1, "artist"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/akura/anime/database/MP3Track;->artist:J

    .line 90
    return-void
.end method

.method public setGenre(I)V
    .locals 0
    .param p1, "genre"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/akura/anime/database/MP3Track;->genre:I

    .line 100
    return-void
.end method

.method public bridge synthetic setId(J)V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/akura/anime/database/DatabaseObject;->setId(J)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/akura/anime/database/MP3Track;->path:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1}, Lcom/akura/utils/Utils;->getUTF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/database/MP3Track;->title:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTrack(J)V
    .locals 1
    .param p1, "track"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/akura/anime/database/MP3Track;->track:J

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Track;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Track;->track:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/akura/anime/database/MP3Track;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Track;->artist:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/akura/anime/database/MP3Track;->genre:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/akura/anime/database/MP3Track;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic update()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->update()Z

    move-result v0

    return v0
.end method
