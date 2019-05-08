.class public Lcom/akura/anime/MP3Downloader;
.super Landroid/os/AsyncTask;
.source "MP3Downloader.java"


# annotations
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


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mItem:Lcom/akura/anime/objects/DownloadItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/akura/anime/MP3Downloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/akura/anime/objects/DownloadItem;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/akura/anime/objects/DownloadItem;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/akura/anime/MP3Downloader;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    .line 32
    iget-object v0, p2, Lcom/akura/anime/objects/DownloadItem;->path:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/akura/anime/MP3PlayerApp;->downloadPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/MP3Downloader;->mFile:Ljava/io/File;

    .line 34
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->downloadList:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/akura/anime/objects/DownloadItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 22
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 64
    const/4 v14, 0x0

    .line 66
    .local v14, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/akura/anime/objects/DownloadItem;->read:J

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    move-object/from16 v18, v0

    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/akura/anime/objects/DownloadItem;->size:J

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/akura/anime/objects/DownloadItem;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/akura/anime/MP3PlayerApp;->downloadBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 76
    :cond_0
    const/4 v5, 0x0

    .line 77
    .local v5, "dis":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 79
    .local v7, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/akura/utils/Utils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v11

    .line 82
    .local v11, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mFile:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/akura/anime/objects/DownloadItem;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    .local v10, "httget":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v11, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 87
    .local v13, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 89
    const-string v18, "Content-Length"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 91
    const-string v18, "Content-Length"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 92
    .local v9, "header":Lorg/apache/http/Header;
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    move-object/from16 v18, v0

    invoke-static {v15}, Lcom/akura/utils/Utils;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/akura/anime/objects/DownloadItem;->size:J

    .line 96
    .end local v9    # "header":Lorg/apache/http/Header;
    .end local v15    # "value":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/akura/anime/objects/DownloadItem;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/akura/anime/MP3PlayerApp;->downloadBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 98
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 101
    const/16 v18, 0x4000

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 102
    .local v4, "data":[B
    const-wide/16 v16, 0x0

    .line 103
    .local v16, "total":J
    :goto_0
    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .local v12, "read":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_3

    .line 105
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v4, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 107
    int-to-long v0, v12

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    move-object/from16 v18, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/akura/anime/objects/DownloadItem;->read:J

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/akura/anime/objects/DownloadItem;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/akura/anime/MP3PlayerApp;->downloadBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 118
    .end local v4    # "data":[B
    .end local v10    # "httget":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "read":I
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "total":J
    :catch_0
    move-exception v6

    move-object v7, v8

    .line 120
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/io/IOException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    sget-object v18, Lcom/akura/anime/MP3Downloader;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MP3Downloader IOException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 131
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    invoke-interface {v11}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 133
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    return-object v18

    .line 115
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "httget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    const/4 v14, 0x1

    .line 128
    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v18

    move-object v7, v8

    .line 129
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 122
    .end local v10    # "httget":Lorg/apache/http/client/methods/HttpGet;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v6

    .line 124
    .local v6, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    sget-object v18, Lcom/akura/anime/MP3Downloader;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MP3Downloader Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 128
    if-eqz v5, :cond_2

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v18

    goto :goto_2

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    :goto_4
    if-eqz v5, :cond_5

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_5
    throw v18

    .local v6, "e":Ljava/io/IOException;
    :catch_4
    move-exception v18

    goto :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v19

    goto :goto_5

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 122
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 118
    :catch_7
    move-exception v6

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/akura/anime/MP3Downloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->downloadList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    iget-object v1, v1, Lcom/akura/anime/objects/DownloadItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/akura/anime/MP3Downloader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/akura/anime/MP3Downloader;->mItem:Lcom/akura/anime/objects/DownloadItem;

    iget-object v1, v1, Lcom/akura/anime/objects/DownloadItem;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/akura/anime/MP3PlayerApp;->downloadBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/MP3Downloader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/akura/anime/MP3Downloader;->mContext:Landroid/content/Context;

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/akura/utils/Utils;->toastCenter(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/akura/anime/MP3Downloader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 41
    return-void
.end method
