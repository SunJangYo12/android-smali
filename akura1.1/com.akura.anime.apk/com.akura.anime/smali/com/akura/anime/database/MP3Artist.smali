.class public Lcom/akura/anime/database/MP3Artist;
.super Lcom/akura/anime/database/DatabaseObject;
.source "MP3Artist.java"


# static fields
.field public static final DB_TABLE:Ljava/lang/String; = "artist"

.field private static final INDEX_ARTIST:I = 0x1

.field private static final INDEX_DECADE:I = 0x5

.field private static final INDEX_GENRE:I = 0x3

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_NAME:I = 0x2

.field private static final INDEX_RANKING:I = 0x4

.field public static final KEY_ARTIST:Ljava/lang/String; = "artist"

.field public static final KEY_DECADE:Ljava/lang/String; = "decade"

.field public static final KEY_GENRE:Ljava/lang/String; = "genre"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_RANKING:Ljava/lang/String; = "ranking"

.field private static final TAG:Ljava/lang/String; = "Artist"

.field static columns:[Ljava/lang/String;


# instance fields
.field public artist:J

.field public decade:I

.field public genre:I

.field public name:Ljava/lang/String;

.field public ranking:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "genre"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ranking"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "decade"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akura/anime/database/MP3Artist;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 44
    const-string v1, "artist"

    const-string v2, "_id"

    sget-object v3, Lcom/akura/anime/database/MP3Artist;->columns:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/akura/anime/database/DatabaseObject;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 46
    iput-wide v4, p0, Lcom/akura/anime/database/MP3Artist;->artist:J

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/akura/anime/database/MP3Artist;->name:Ljava/lang/String;

    .line 48
    iput v6, p0, Lcom/akura/anime/database/MP3Artist;->genre:I

    .line 49
    iput v6, p0, Lcom/akura/anime/database/MP3Artist;->ranking:I

    .line 50
    iput v6, p0, Lcom/akura/anime/database/MP3Artist;->decade:I

    .line 51
    return-void
.end method


# virtual methods
.method public copy(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akura/anime/database/MP3Artist;->id:J

    .line 128
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akura/anime/database/MP3Artist;->artist:J

    .line 129
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/akura/anime/database/MP3Artist;->name:Ljava/lang/String;

    .line 130
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/akura/anime/database/MP3Artist;->genre:I

    .line 131
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/akura/anime/database/MP3Artist;->ranking:I

    .line 132
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/akura/anime/database/MP3Artist;->decade:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 137
    goto :goto_0
.end method

.method public copy(Lorg/json/JSONObject;)Z
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 108
    :try_start_0
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/akura/anime/database/MP3Artist;->setName(Ljava/lang/String;)V

    .line 109
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/akura/anime/database/MP3Artist;->setArtist(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v1, 0x1

    .line 118
    :goto_0
    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "Artist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy Artist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic delete()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->delete()Z

    move-result v0

    return v0
.end method

.method public delete(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 192
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "artist"

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

    .line 193
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 192
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic deleteAll()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(J)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/akura/anime/database/DatabaseObject;->get(J)Z

    move-result v0

    return v0
.end method

.method public getArtist()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/akura/anime/database/MP3Artist;->artist:J

    return-wide v0
.end method

.method public getByArtist(J)Z
    .locals 13
    .param p1, "artist"    # J

    .prologue
    const/4 v12, 0x1

    .line 157
    const/4 v11, 0x0

    .line 160
    .local v11, "mCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Artist;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v3, Lcom/akura/anime/database/MP3Artist;->columns:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist="

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

    .line 161
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    invoke-virtual {p0, v11}, Lcom/akura/anime/database/MP3Artist;->copy(Landroid/database/Cursor;)Z

    .line 165
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v11, :cond_0

    .line 177
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 180
    :goto_0
    return v0

    .line 175
    :cond_1
    if-eqz v11, :cond_2

    .line 177
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v10

    .line 171
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Artist"

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

    .line 175
    if-eqz v11, :cond_2

    .line 177
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 175
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 177
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getDecade()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/akura/anime/database/MP3Artist;->decade:I

    return v0
.end method

.method public getGenre()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/akura/anime/database/MP3Artist;->genre:I

    return v0
.end method

.method public bridge synthetic getId()J
    .locals 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/akura/anime/database/MP3Artist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRanking()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/akura/anime/database/MP3Artist;->ranking:I

    return v0
.end method

.method protected getValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "artist"

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Artist;->artist:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    const-string v1, "name"

    iget-object v2, p0, Lcom/akura/anime/database/MP3Artist;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "genre"

    iget v2, p0, Lcom/akura/anime/database/MP3Artist;->genre:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v1, "ranking"

    iget v2, p0, Lcom/akura/anime/database/MP3Artist;->ranking:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v1, "decade"

    iget v2, p0, Lcom/akura/anime/database/MP3Artist;->decade:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    return-object v0
.end method

.method public bridge synthetic insert()J
    .locals 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->insert()J

    move-result-wide v0

    return-wide v0
.end method

.method public load()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 185
    const-string v0, "Artist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/database/MP3Artist;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/MP3Artist;->DATABASE_TABLE:Ljava/lang/String;

    sget-object v2, Lcom/akura/anime/database/MP3Artist;->columns:[Ljava/lang/String;

    const-string v7, "name"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v1, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/akura/anime/database/MP3Artist;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

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

    .line 202
    return-object v0
.end method

.method public setArtist(J)V
    .locals 1
    .param p1, "artist"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/akura/anime/database/MP3Artist;->artist:J

    .line 81
    return-void
.end method

.method public setDecade(I)V
    .locals 0
    .param p1, "decade"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/akura/anime/database/MP3Artist;->decade:I

    .line 101
    return-void
.end method

.method public setGenre(I)V
    .locals 0
    .param p1, "genre"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/akura/anime/database/MP3Artist;->genre:I

    .line 91
    return-void
.end method

.method public bridge synthetic setId(J)V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/akura/anime/database/DatabaseObject;->setId(J)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/akura/anime/database/MP3Artist;->name:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setRanking(I)V
    .locals 0
    .param p1, "ranking"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/akura/anime/database/MP3Artist;->ranking:I

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Artist [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Artist;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/akura/anime/database/MP3Artist;->artist:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/akura/anime/database/MP3Artist;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/akura/anime/database/MP3Artist;->genre:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ranking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/akura/anime/database/MP3Artist;->ranking:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/akura/anime/database/MP3Artist;->decade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 12
    invoke-super {p0}, Lcom/akura/anime/database/DatabaseObject;->update()Z

    move-result v0

    return v0
.end method
