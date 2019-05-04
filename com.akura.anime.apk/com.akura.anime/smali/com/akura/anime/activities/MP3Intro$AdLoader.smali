.class Lcom/akura/anime/activities/MP3Intro$AdLoader;
.super Landroid/os/AsyncTask;
.source "MP3Intro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Intro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdLoader"
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

.field mLink:Ljava/lang/String;

.field mValidator:I

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Intro;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Intro;Landroid/content/Context;)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->this$0:Lcom/akura/anime/activities/MP3Intro;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->mValidator:I

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->mLink:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->mContext:Landroid/content/Context;

    .line 148
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 173
    const/4 v7, 0x0

    .line 175
    .local v7, "ret":Z
    const-string v8, "http://www.musicagratis.co/scripts/resources/app/validates/validate-am4.php"

    .line 176
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Lcom/akura/utils/Utils;->getUrl(Ljava/lang/String;)[B

    move-result-object v0

    .line 178
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 180
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 220
    :goto_0
    return-object v9

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 184
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 188
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .line 193
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    new-instance v9, Lorg/json/JSONTokener;

    invoke-direct {v9, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 194
    .local v5, "jo":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 196
    const-string v9, "result"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "data"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 198
    const-string v9, "result"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, "result":Ljava/lang/String;
    const-string v9, "success"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 201
    const-string v9, "data"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 202
    .local v3, "ja":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 204
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 205
    .local v4, "jao":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 207
    const-string v9, "validator"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->mValidator:I

    .line 208
    const-string v9, "url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->mLink:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v3    # "ja":Lorg/json/JSONArray;
    .end local v4    # "jao":Lorg/json/JSONObject;
    .end local v5    # "jo":Lorg/json/JSONObject;
    .end local v6    # "result":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "err"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Intro$AdLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 160
    iget v0, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->mValidator:I

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->this$0:Lcom/akura/anime/activities/MP3Intro;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Intro;->startApp()V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->this$0:Lcom/akura/anime/activities/MP3Intro;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Intro$AdLoader;->mLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Intro;->startAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Intro$AdLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 154
    return-void
.end method
