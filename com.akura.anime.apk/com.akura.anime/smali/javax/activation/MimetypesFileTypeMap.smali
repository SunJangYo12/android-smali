.class public Ljavax/activation/MimetypesFileTypeMap;
.super Ljavax/activation/FileTypeMap;
.source "MimetypesFileTypeMap.java"


# static fields
.field private static final PROG:I

.field private static defDB:Lcom/sun/activation/registries/MimeTypeFile;

.field private static defaultType:Ljava/lang/String;


# instance fields
.field private DB:[Lcom/sun/activation/registries/MimeTypeFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    .line 93
    const-string v0, "application/octet-stream"

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 98
    invoke-direct {p0}, Ljavax/activation/FileTypeMap;-><init>()V

    .line 99
    new-instance v0, Ljava/util/Vector;

    const/4 v5, 0x5

    invoke-direct {v0, v5}, Ljava/util/Vector;-><init>(I)V

    .line 100
    .local v0, "dbv":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 101
    .local v1, "mf":Lcom/sun/activation/registries/MimeTypeFile;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 103
    const-string v5, "MimetypesFileTypeMap: load HOME"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 105
    :try_start_0
    const-string v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "user_home":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mime.types"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "user_home":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "MimetypesFileTypeMap: load SYS"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 118
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mime.types"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "system_mimetypes":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .end local v3    # "system_mimetypes":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v5, "MimetypesFileTypeMap: load JAR"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 127
    const-string v5, "mime.types"

    invoke-direct {p0, v0, v5}, Ljavax/activation/MimetypesFileTypeMap;->loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V

    .line 129
    const-string v5, "MimetypesFileTypeMap: load DEF"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 130
    const-class v6, Ljavax/activation/MimetypesFileTypeMap;

    monitor-enter v6

    .line 132
    :try_start_2
    sget-object v5, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    if-nez v5, :cond_2

    .line 133
    const-string v5, "/mimetypes.default"

    invoke-direct {p0, v5}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v5

    sput-object v5, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    .line 130
    :cond_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    sget-object v5, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    if-eqz v5, :cond_3

    .line 137
    sget-object v5, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 139
    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/activation/registries/MimeTypeFile;

    iput-object v5, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    .line 140
    iget-object v5, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 141
    return-void

    .line 130
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 123
    :catch_0
    move-exception v5

    goto :goto_1

    .line 113
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 277
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 279
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeTypeFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 267
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 268
    return-void
.end method

.method private loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V
    .locals 12
    .param p1, "v"    # Ljava/util/Vector;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 183
    .local v0, "anyLoaded":Z
    const/4 v1, 0x0

    .line 185
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 188
    :cond_0
    if-eqz v1, :cond_4

    .line 189
    invoke-static {v1, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v9

    .line 192
    .local v9, "urls":[Ljava/net/URL;
    :goto_0
    if-eqz v9, :cond_2

    .line 193
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 194
    const-string v10, "MimetypesFileTypeMap: getResources"

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 195
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-lt v4, v10, :cond_5

    .line 237
    .end local v4    # "i":I
    .end local v9    # "urls":[Ljava/net/URL;
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 238
    const-string v10, "MimetypesFileTypeMap: !anyLoaded"

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 239
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v6

    .line 240
    .local v6, "mf":Lcom/sun/activation/registries/MimeTypeFile;
    if-eqz v6, :cond_3

    .line 241
    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 243
    .end local v6    # "mf":Lcom/sun/activation/registries/MimeTypeFile;
    :cond_3
    return-void

    .line 191
    :cond_4
    :try_start_1
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v9

    .restart local v9    # "urls":[Ljava/net/URL;
    goto :goto_0

    .line 196
    .restart local v4    # "i":I
    :cond_5
    aget-object v8, v9, v4

    .line 197
    .local v8, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 198
    .local v2, "clis":Ljava/io/InputStream;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: URL "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 201
    :cond_6
    :try_start_2
    invoke-static {v8}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_9

    .line 203
    new-instance v10, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v10, v2}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    const/4 v0, 0x1

    .line 205
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 206
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: successfully loaded mime types from URL: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 206
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 226
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 195
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 210
    :cond_9
    :try_start_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 211
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: not loading mime types from URL: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 211
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 215
    :catch_0
    move-exception v5

    .line 216
    .local v5, "ioex":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 217
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 217
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 225
    :cond_a
    if-eqz v2, :cond_8

    .line 226
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 227
    :catch_1
    move-exception v10

    goto :goto_4

    .line 219
    .end local v5    # "ioex":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 220
    .local v7, "sex":Ljava/lang/SecurityException;
    :try_start_7
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 221
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 225
    :cond_b
    if-eqz v2, :cond_8

    .line 226
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 227
    :catch_3
    move-exception v10

    goto :goto_4

    .line 223
    .end local v7    # "sex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v10

    .line 225
    if-eqz v2, :cond_c

    .line 226
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 228
    :cond_c
    :goto_5
    :try_start_a
    throw v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 231
    .end local v2    # "clis":Ljava/io/InputStream;
    .end local v4    # "i":I
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "urls":[Ljava/net/URL;
    :catch_4
    move-exception v3

    .line 232
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 233
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 227
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "clis":Ljava/io/InputStream;
    .restart local v4    # "i":I
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v9    # "urls":[Ljava/net/URL;
    :catch_5
    move-exception v11

    goto :goto_5

    :catch_6
    move-exception v10

    goto/16 :goto_4
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 252
    .local v0, "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    :try_start_0
    new-instance v1, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    .local v1, "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    move-object v0, v1

    .line 256
    .end local v1    # "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    .restart local v0    # "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "clis":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_2

    .line 151
    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, v0}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    .line 152
    .local v2, "mf":Lcom/sun/activation/registries/MimeTypeFile;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MimetypesFileTypeMap: successfully loaded mime types file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    if-eqz v0, :cond_1

    .line 170
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 173
    .end local v2    # "mf":Lcom/sun/activation/registries/MimeTypeFile;
    :cond_1
    :goto_0
    return-object v2

    .line 157
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MimetypesFileTypeMap: not loading mime types file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :cond_3
    if-eqz v0, :cond_4

    .line 170
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 173
    :cond_4
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    :cond_5
    if-eqz v0, :cond_4

    .line 170
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 171
    :catch_1
    move-exception v4

    goto :goto_1

    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 165
    .local v3, "sex":Ljava/lang/SecurityException;
    :try_start_6
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    :cond_6
    if-eqz v0, :cond_4

    .line 170
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 171
    :catch_3
    move-exception v4

    goto :goto_1

    .line 167
    .end local v3    # "sex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v4

    .line 169
    if-eqz v0, :cond_7

    .line 170
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 172
    :cond_7
    :goto_2
    throw v4

    .line 171
    .restart local v2    # "mf":Lcom/sun/activation/registries/MimeTypeFile;
    :catch_4
    move-exception v4

    goto :goto_0

    .end local v2    # "mf":Lcom/sun/activation/registries/MimeTypeFile;
    :catch_5
    move-exception v5

    goto :goto_2

    :catch_6
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addMimeTypes(Ljava/lang/String;)V
    .locals 3
    .param p1, "mime_types"    # Ljava/lang/String;

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2}, Lcom/sun/activation/registries/MimeTypeFile;-><init>()V

    aput-object v2, v0, v1

    .line 295
    :cond_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MimeTypeFile;->appendToRegistry(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContentType(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 307
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, "dot_pos":I
    if-gez v0, :cond_0

    .line 323
    sget-object v3, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :goto_0
    monitor-exit p0

    return-object v3

    .line 325
    :cond_0
    add-int/lit8 v4, v0, 0x1

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "file_ext":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 327
    sget-object v3, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    goto :goto_0

    .line 329
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    array-length v4, v4

    if-lt v2, v4, :cond_2

    .line 336
    sget-object v3, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    goto :goto_0

    .line 330
    :cond_2
    iget-object v4, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    aget-object v4, v4, v2

    if-nez v4, :cond_4

    .line 329
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    :cond_4
    iget-object v4, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Lcom/sun/activation/registries/MimeTypeFile;->getMIMETypeString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 333
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_3

    goto :goto_0

    .line 320
    .end local v0    # "dot_pos":I
    .end local v1    # "file_ext":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
