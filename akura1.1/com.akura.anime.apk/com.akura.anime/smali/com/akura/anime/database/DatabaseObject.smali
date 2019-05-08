.class abstract Lcom/akura/anime/database/DatabaseObject;
.super Ljava/lang/Object;
.source "DatabaseObject.java"


# static fields
.field protected static INDEX_ID:I

.field protected static KEY_ID:Ljava/lang/String;


# instance fields
.field protected DATABASE_TABLE:Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field protected columns:[Ljava/lang/String;

.field public id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "_id"

    sput-object v0, Lcom/akura/anime/database/DatabaseObject;->KEY_ID:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/akura/anime/database/DatabaseObject;->INDEX_ID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "id"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "DatabaseObject"

    iput-object v0, p0, Lcom/akura/anime/database/DatabaseObject;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/akura/anime/database/DatabaseObject;->columns:[Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    .line 29
    sput-object p2, Lcom/akura/anime/database/DatabaseObject;->KEY_ID:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/akura/anime/database/DatabaseObject;->columns:[Ljava/lang/String;

    .line 31
    iput-wide p4, p0, Lcom/akura/anime/database/DatabaseObject;->id:J

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract copy(Landroid/database/Cursor;)Z
.end method

.method public delete()Z
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Lcom/akura/anime/database/DatabaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting from table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/akura/anime/database/DatabaseObject;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/akura/anime/database/DatabaseObject;->KEY_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/akura/anime/database/DatabaseObject;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 95
    iget-object v0, p0, Lcom/akura/anime/database/DatabaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting from table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/akura/anime/database/DatabaseObject;->KEY_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAll()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lcom/akura/anime/database/DatabaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(J)Z
    .locals 13
    .param p1, "id"    # J

    .prologue
    const/4 v12, 0x1

    .line 47
    const/4 v11, 0x0

    .line 50
    .local v11, "mCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/akura/anime/database/DatabaseObject;->columns:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/akura/anime/database/DatabaseObject;->KEY_ID:Ljava/lang/String;

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

    .line 51
    if-eqz v11, :cond_0

    .line 53
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    invoke-virtual {p0, v11}, Lcom/akura/anime/database/DatabaseObject;->copy(Landroid/database/Cursor;)Z

    .line 55
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v12

    .line 66
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v10

    .line 61
    .local v10, "e":Ljava/lang/Exception;
    if-eqz v11, :cond_0

    .line 63
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 66
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/akura/anime/database/DatabaseObject;->id:J

    return-wide v0
.end method

.method protected abstract getValues()Landroid/content/ContentValues;
.end method

.method public insert()J
    .locals 4

    .prologue
    .line 78
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/akura/anime/database/DatabaseObject;->getValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public load()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/akura/anime/database/DatabaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/akura/anime/database/DatabaseObject;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected abstract search(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/akura/anime/database/DatabaseObject;->id:J

    .line 42
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public update()Z
    .locals 6

    .prologue
    .line 84
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/akura/anime/database/DatabaseObject;->DATABASE_TABLE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/akura/anime/database/DatabaseObject;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/akura/anime/database/DatabaseObject;->KEY_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/akura/anime/database/DatabaseObject;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
