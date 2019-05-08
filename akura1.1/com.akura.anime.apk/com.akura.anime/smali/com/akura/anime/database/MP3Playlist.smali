.class public Lcom/akura/anime/database/MP3Playlist;
.super Lcom/akura/anime/database/DatabaseObject;
.source "MP3Playlist.java"


# static fields
.field public static final DB_TABLE:Ljava/lang/String; = "playlist"

.field private static final INDEX_ARTIST:I = 0x1

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_PATH:I = 0x4

.field private static final INDEX_TITLE:I = 0x3

.field private static final INDEX_TRACK:I = 0x2

.field public static final KEY_ARTIST:Ljava/lang/String; = "artist"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_PATH:Ljava/lang/String; = "path"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_TRACK:Ljava/lang/String; = "track"

.field private static final TAG:Ljava/lang/String; = "Playlist"

.field static columns:[Ljava/lang/String;


# instance fields
.field public artist:J

.field public id:J

.field public path:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public track:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "track"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akura/anime/database/MP3Playlist;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 40
    const-string v1, "playlist"

    const-string v2, "_id"

    sget-object v3, Lcom/akura/anime/database/MP3Playlist;->columns:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/akura/anime/database/DatabaseObject;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 42
    iput-wide v4, p0, Lcom/akura/anime/database/MP3Playlist;->id:J

    .line 43
    iput-wide v4, p0, Lcom/akura/anime/database/MP3Playlist;->artist:J

    .line 44
    iput-wide v4, p0, Lcom/akura/anime/database/MP3Playlist;->track:J

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/akura/anime/database/MP3Playlist;->title:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static countByPath(Ljava/lang/String;)I
    .locals 13
    .param p0, "pth"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v10, 0x0

    .line 261
    .local v10, "count":I
    const/4 v12, 0x0

    .line 264
    .local v12, "mCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "playlist"

    sget-object v3, Lcom/akura/anime/database/MP3Playlist;->columns:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 265
    if-eqz v12, :cond_0

    .line 267
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 276
    :cond_0
    if-eqz v12, :cond_1

    .line 278
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_1
    :goto_0
    return v10

    .line 270
    :catch_0
    move-exception v11

    .line 272
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Playlist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    if-eqz v12, :cond_1

    .line 278
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 276
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_2

    .line 278
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public copy(Lcom/akura/anime/database/MP3Track;)V
    .locals 2
    .param p1, "track"    # Lcom/akura/anime/database/MP3Track;

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/akura/anime/database/MP3Track;->getArtist()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/akura/anime/database/MP3Playlist;->setArtist(J)V

    .line 102
    invoke-virtual {p1}, Lcom/akura/anime/database/MP3Track;->getTrack()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/akura/anime/database/MP3Playlist;->setTrack(J)V

    .line 103
    invoke-virtual {p1}, Lcom/akura/anime/database/MP3Track;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akura/anime/database/MP3Playlist;->setTitle(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/akura/anime/database/MP3Track;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/akura/anime/database/MP3Playlist;->setPath(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public copy(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akura/anime/database/MP3Playlist;->id:J

    .line 113
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akura/anime/database/MP3Playlist;->artist:J

    .line 114
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akura/anime/database/MP3Playlist;->track:J

    .line 115
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/akura/anime/database/MP3Playlist;->title:Ljava/lang/String;

    .line 116
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 121
    goto :goto_0
.end method

.method public bridge synthetic delete()Z
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->delete()Z

    move-result v0

    return v0
.end method

.method public delete(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 239
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "playlist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

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

    .line 240
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 239
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic deleteAll()Z
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(J)Z
    .locals 1

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/akura/anime/database/DatabaseObject;->get(J)Z

    move-result v0

    return v0
.end method

.method public getArtist()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/akura/anime/database/MP3Playlist;->artist:J

    return-wide v0
.end method

.method public getByID(J)Z
    .locals 13
    .param p1, "aId"    # J

    .prologue
    const/4 v12, 0x1

    .line 140
    const/4 v11, 0x0

    .line 143
    .local v11, "mCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Playlist;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v3, Lcom/akura/anime/database/MP3Playlist;->columns:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

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

    .line 144
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    invoke-virtual {p0, v11}, Lcom/akura/anime/database/MP3Playlist;->copy(Landroid/database/Cursor;)Z

    .line 148
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz v11, :cond_0

    .line 160
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 163
    :goto_0
    return v0

    .line 158
    :cond_1
    if-eqz v11, :cond_2

    .line 160
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v10

    .line 154
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Playlist"

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

    .line 158
    if-eqz v11, :cond_2

    .line 160
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 158
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 160
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getByPath(Ljava/lang/String;)Z
    .locals 13
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 197
    const/4 v11, 0x0

    .line 200
    .local v11, "mCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Playlist;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v3, Lcom/akura/anime/database/MP3Playlist;->columns:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 201
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    invoke-virtual {p0, v11}, Lcom/akura/anime/database/MP3Playlist;->copy(Landroid/database/Cursor;)Z

    .line 205
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    if-eqz v11, :cond_0

    .line 217
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 220
    :goto_0
    return v0

    .line 215
    :cond_1
    if-eqz v11, :cond_2

    .line 217
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v10

    .line 211
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Playlist"

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

    .line 215
    if-eqz v11, :cond_2

    .line 217
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 215
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 217
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getByTitle(Ljava/lang/String;)Z
    .locals 13
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 169
    const/4 v11, 0x0

    .line 172
    .local v11, "mCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Playlist;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v3, Lcom/akura/anime/database/MP3Playlist;->columns:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 173
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    invoke-virtual {p0, v11}, Lcom/akura/anime/database/MP3Playlist;->copy(Landroid/database/Cursor;)Z

    .line 177
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v11, :cond_0

    .line 189
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 192
    :goto_0
    return v0

    .line 187
    :cond_1
    if-eqz v11, :cond_2

    .line 189
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v10

    .line 183
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Playlist"

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

    .line 187
    if-eqz v11, :cond_2

    .line 189
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 187
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 189
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/akura/anime/database/MP3Playlist;->id:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/akura/anime/database/MP3Playlist;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/akura/anime/database/MP3Playlist;->track:J

    return-wide v0
.end method

.method protected getValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "artist"

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Playlist;->artist:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v1, "track"

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Playlist;->track:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v1, "title"

    iget-object v2, p0, Lcom/akura/anime/database/MP3Playlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "path"

    iget-object v2, p0, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-object v0
.end method

.method public bridge synthetic insert()J
    .locals 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->insert()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic load()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->load()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public loadByArtist(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "artist"    # J

    .prologue
    const/4 v4, 0x0

    .line 226
    const-string v0, "Playlist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Playlist;->DATABASE_TABLE:Ljava/lang/String;

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

    .line 227
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/MP3Playlist;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v2, Lcom/akura/anime/database/MP3Playlist;->columns:[Ljava/lang/String;

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

.method public loadBySong(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "song"    # J

    .prologue
    const/4 v4, 0x0

    .line 233
    const-string v0, "Playlist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Playlist;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on song = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/MP3Playlist;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v2, Lcom/akura/anime/database/MP3Playlist;->columns:[Ljava/lang/String;

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
    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/akura/anime/database/MP3Playlist;->DATABASE_TABLE:Ljava/lang/String;

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

    .line 249
    return-object v0
.end method

.method public setArtist(J)V
    .locals 1
    .param p1, "artist"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/akura/anime/database/MP3Playlist;->artist:J

    .line 82
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/akura/anime/database/MP3Playlist;->id:J

    .line 77
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/akura/anime/database/MP3Playlist;->path:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/akura/anime/database/MP3Playlist;->title:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setTrack(J)V
    .locals 1
    .param p1, "track"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/akura/anime/database/MP3Playlist;->track:J

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playlist [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Playlist;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Playlist;->artist:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", song="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Playlist;->track:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/akura/anime/database/MP3Playlist;->title:Ljava/lang/String;

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
    .line 9
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->update()Z

    move-result v0

    return v0
.end method
