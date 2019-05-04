.class public Lcom/akura/anime/MP3Prefs;
.super Ljava/lang/Object;
.source "MP3Prefs.java"


# static fields
.field private static final KEY_GENRE:Ljava/lang/String; = "genre"

.field private static final KEY_QUALITY:Ljava/lang/String; = "quality"

.field private static final KEY_REPEAT:Ljava/lang/String; = "repeat"

.field private static final KEY_SHUFFLE:Ljava/lang/String; = "shuffle"

.field private static final KEY_VOLUME:Ljava/lang/String; = "volume"

.field private static final STREAM_SHARPREFS:Ljava/lang/String; = "stream_prefs"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/akura/anime/MP3Prefs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/akura/anime/MP3Prefs;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mKey"    # Ljava/lang/String;
    .param p2, "mDefValue"    # Z

    .prologue
    .line 28
    const-string v1, "stream_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getGenre(Landroid/content/Context;)I
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string v0, "genre"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/akura/anime/MP3Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mKey"    # Ljava/lang/String;
    .param p2, "mDefValue"    # I

    .prologue
    .line 42
    const-string v1, "stream_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getQuality(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v0, "quality"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/akura/anime/MP3Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mKey"    # Ljava/lang/String;
    .param p2, "mDefValue"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v1, "stream_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVolume(Landroid/content/Context;)I
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 98
    const-string v0, "volume"

    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Lcom/akura/anime/MP3Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mKey"    # Ljava/lang/String;
    .param p2, "mValue"    # Z

    .prologue
    .line 20
    const-string v2, "stream_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 21
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    return-void
.end method

.method public static setGenre(Landroid/content/Context;I)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mValue"    # I

    .prologue
    .line 103
    const-string v0, "genre"

    invoke-static {p0, v0, p1}, Lcom/akura/anime/MP3Prefs;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mKey"    # Ljava/lang/String;
    .param p2, "mValue"    # I

    .prologue
    .line 34
    const-string v2, "stream_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public static setQuality(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mValue"    # Z

    .prologue
    .line 83
    const-string v0, "quality"

    invoke-static {p0, v0, p1}, Lcom/akura/anime/MP3Prefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mKey"    # Ljava/lang/String;
    .param p2, "mValue"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v2, "stream_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 49
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method

.method public static setVolume(Landroid/content/Context;I)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mValue"    # I

    .prologue
    .line 93
    const-string v0, "volume"

    invoke-static {p0, v0, p1}, Lcom/akura/anime/MP3Prefs;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    return-void
.end method
