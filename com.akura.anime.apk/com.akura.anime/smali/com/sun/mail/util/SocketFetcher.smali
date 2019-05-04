.class public Lcom/sun/mail/util/SocketFetcher;
.super Ljava/lang/Object;
.source "SocketFetcher.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static configureSSLSocket(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 7
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 324
    instance-of v3, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v3, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p0

    .line 326
    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 328
    .local v2, "sslsocket":Ljavax/net/ssl/SSLSocket;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".ssl.protocols"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "protocols":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 330
    invoke-static {v1}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 340
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".ssl.ciphersuites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "ciphers":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 342
    invoke-static {v0}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    goto :goto_0

    .line 338
    .end local v0    # "ciphers":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TLSv1"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;
    .locals 2
    .param p0, "localaddr"    # Ljava/net/InetAddress;
    .param p1, "localport"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "cto"    # I
    .param p5, "sf"    # Ljavax/net/SocketFactory;
    .param p6, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    if-eqz p5, :cond_1

    .line 223
    invoke-virtual {p5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 228
    .local v0, "socket":Ljava/net/Socket;
    :goto_0
    if-eqz p0, :cond_0

    .line 229
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 230
    :cond_0
    if-ltz p4, :cond_3

    .line 231
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 234
    :goto_1
    return-object v0

    .line 224
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_1
    if-eqz p6, :cond_2

    .line 225
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .restart local v0    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 227
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .restart local v0    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 233
    :cond_3
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_1
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/sun/mail/util/SocketFetcher$1;

    invoke-direct {v0}, Lcom/sun/mail/util/SocketFetcher$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 369
    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;
    .locals 30
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    if-nez p3, :cond_0

    .line 116
    const-string p3, "socket"

    .line 117
    :cond_0
    if-nez p2, :cond_1

    .line 118
    new-instance p2, Ljava/util/Properties;

    .end local p2    # "props":Ljava/util/Properties;
    invoke-direct/range {p2 .. p2}, Ljava/util/Properties;-><init>()V

    .line 119
    .restart local p2    # "props":Ljava/util/Properties;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".connectiontimeout"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 120
    .local v22, "s":Ljava/lang/String;
    const/4 v7, -0x1

    .line 121
    .local v7, "cto":I
    if-eqz v22, :cond_2

    .line 123
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 127
    :cond_2
    :goto_0
    const/16 v26, 0x0

    .line 128
    .local v26, "socket":Ljava/net/Socket;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".timeout"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 129
    .local v28, "timeout":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".localaddress"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 130
    .local v20, "localaddrstr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 131
    .local v3, "localaddr":Ljava/net/InetAddress;
    if-eqz v20, :cond_3

    .line 132
    invoke-static/range {v20 .. v20}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 133
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".localport"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 134
    .local v21, "localportstr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 135
    .local v4, "localport":I
    if-eqz v21, :cond_4

    .line 137
    :try_start_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v4

    .line 141
    :cond_4
    :goto_1
    const/16 v18, 0x0

    .line 143
    .local v18, "fb":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".socketFactory.fallback"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 144
    .local v17, "fallback":Ljava/lang/String;
    if-eqz v17, :cond_b

    const-string v5, "false"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v18, 0x0

    .line 147
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".socketFactory.class"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 148
    .local v24, "sfClass":Ljava/lang/String;
    const/4 v6, -0x1

    .line 150
    .local v6, "sfPort":I
    :try_start_2
    invoke-static/range {v24 .. v24}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v8

    .line 151
    .local v8, "sf":Ljavax/net/SocketFactory;
    if-eqz v8, :cond_7

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".socketFactory.port"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v25

    .line 154
    .local v25, "sfPortStr":Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 156
    :try_start_3
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    .line 161
    :cond_5
    :goto_3
    const/4 v5, -0x1

    if-ne v6, v5, :cond_6

    .line 162
    move/from16 v6, p1

    :cond_6
    move-object/from16 v5, p0

    move/from16 v9, p4

    .line 163
    :try_start_4
    invoke-static/range {v3 .. v9}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v26

    .line 188
    .end local v8    # "sf":Ljavax/net/SocketFactory;
    .end local v25    # "sfPortStr":Ljava/lang/String;
    :cond_7
    if-nez v26, :cond_8

    .line 190
    const/4 v14, 0x0

    move-object v9, v3

    move v10, v4

    move-object/from16 v11, p0

    move/from16 v12, p1

    move v13, v7

    move/from16 v15, p4

    .line 189
    invoke-static/range {v9 .. v15}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v26

    .line 192
    :cond_8
    const/16 v29, -0x1

    .line 193
    .local v29, "to":I
    if-eqz v28, :cond_9

    .line 195
    :try_start_5
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v29

    .line 198
    :cond_9
    :goto_4
    if-ltz v29, :cond_a

    .line 199
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 201
    :cond_a
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)V

    .line 202
    return-object v26

    .line 144
    .end local v6    # "sfPort":I
    .end local v24    # "sfClass":Ljava/lang/String;
    .end local v29    # "to":I
    :cond_b
    const/16 v18, 0x1

    goto :goto_2

    .line 166
    .restart local v6    # "sfPort":I
    .restart local v24    # "sfClass":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 167
    .local v23, "sex":Ljava/net/SocketTimeoutException;
    throw v23

    .line 168
    .end local v23    # "sex":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v16

    .line 169
    .local v16, "ex":Ljava/lang/Exception;
    if-nez v18, :cond_7

    .line 170
    move-object/from16 v0, v16

    instance-of v5, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v5, :cond_c

    move-object/from16 v5, v16

    .line 172
    check-cast v5, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v27

    .line 173
    .local v27, "t":Ljava/lang/Throwable;
    move-object/from16 v0, v27

    instance-of v5, v0, Ljava/lang/Exception;

    if-eqz v5, :cond_c

    move-object/from16 v16, v27

    .line 174
    check-cast v16, Ljava/lang/Exception;

    .line 176
    .end local v27    # "t":Ljava/lang/Throwable;
    :cond_c
    move-object/from16 v0, v16

    instance-of v5, v0, Ljava/io/IOException;

    if-eqz v5, :cond_d

    .line 177
    check-cast v16, Ljava/io/IOException;

    .end local v16    # "ex":Ljava/lang/Exception;
    throw v16

    .line 178
    .restart local v16    # "ex":Ljava/lang/Exception;
    :cond_d
    new-instance v19, Ljava/io/IOException;

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Couldn\'t connect using \""

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 180
    const-string v9, "\" socket factory to host, port: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 181
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 182
    const-string v9, "; Exception: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 179
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .local v19, "ioex":Ljava/io/IOException;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 184
    throw v19

    .line 124
    .end local v3    # "localaddr":Ljava/net/InetAddress;
    .end local v4    # "localport":I
    .end local v6    # "sfPort":I
    .end local v16    # "ex":Ljava/lang/Exception;
    .end local v17    # "fallback":Ljava/lang/String;
    .end local v18    # "fb":Z
    .end local v19    # "ioex":Ljava/io/IOException;
    .end local v20    # "localaddrstr":Ljava/lang/String;
    .end local v21    # "localportstr":Ljava/lang/String;
    .end local v24    # "sfClass":Ljava/lang/String;
    .end local v26    # "socket":Ljava/net/Socket;
    .end local v28    # "timeout":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_0

    .line 138
    .restart local v3    # "localaddr":Ljava/net/InetAddress;
    .restart local v4    # "localport":I
    .restart local v20    # "localaddrstr":Ljava/lang/String;
    .restart local v21    # "localportstr":Ljava/lang/String;
    .restart local v26    # "socket":Ljava/net/Socket;
    .restart local v28    # "timeout":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto/16 :goto_1

    .line 157
    .restart local v6    # "sfPort":I
    .restart local v8    # "sf":Ljavax/net/SocketFactory;
    .restart local v17    # "fallback":Ljava/lang/String;
    .restart local v18    # "fb":Z
    .restart local v24    # "sfClass":Ljava/lang/String;
    .restart local v25    # "sfPortStr":Ljava/lang/String;
    :catch_4
    move-exception v5

    goto/16 :goto_3

    .line 196
    .end local v8    # "sf":Ljavax/net/SocketFactory;
    .end local v25    # "sfPortStr":Ljava/lang/String;
    .restart local v29    # "to":I
    :catch_5
    move-exception v5

    goto/16 :goto_4
.end method

.method private static getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;
    .locals 7
    .param p0, "sfClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 245
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 246
    :cond_0
    const/4 v3, 0x0

    .line 264
    :goto_0
    return-object v3

    .line 250
    :cond_1
    invoke-static {}, Lcom/sun/mail/util/SocketFetcher;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 251
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 252
    .local v1, "clsSockFact":Ljava/lang/Class;
    if-eqz v0, :cond_2

    .line 254
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 258
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 260
    :cond_3
    const-string v4, "getDefault"

    .line 261
    new-array v5, v6, [Ljava/lang/Class;

    .line 260
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 263
    .local v2, "mthGetDefault":Ljava/lang/reflect/Method;
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 262
    check-cast v3, Ljavax/net/SocketFactory;

    .line 264
    .local v3, "sf":Ljavax/net/SocketFactory;
    goto :goto_0

    .line 255
    .end local v2    # "mthGetDefault":Ljava/lang/reflect/Method;
    .end local v3    # "sf":Ljavax/net/SocketFactory;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static startTLS(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "socket"

    invoke-static {p0, v0, v1}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 12
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 284
    .local v1, "a":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v5

    .line 291
    .local v5, "port":I
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".socketFactory.class"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "sfClass":Ljava/lang/String;
    invoke-static {v7}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v6

    .line 293
    .local v6, "sf":Ljavax/net/SocketFactory;
    if-eqz v6, :cond_0

    instance-of v10, v6, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v10, :cond_0

    .line 294
    move-object v0, v6

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    move-object v8, v0

    .line 297
    .local v8, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    const/4 v10, 0x1

    invoke-virtual {v8, p0, v3, v5, v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    .line 298
    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)V

    .line 314
    return-object p0

    .line 296
    .end local v8    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v8    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_0

    .line 299
    .end local v6    # "sf":Ljavax/net/SocketFactory;
    .end local v7    # "sfClass":Ljava/lang/String;
    .end local v8    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v2

    .line 300
    .local v2, "ex":Ljava/lang/Exception;
    instance-of v10, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v10, :cond_1

    move-object v10, v2

    .line 302
    check-cast v10, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v9

    .line 303
    .local v9, "t":Ljava/lang/Throwable;
    instance-of v10, v9, Ljava/lang/Exception;

    if-eqz v10, :cond_1

    move-object v2, v9

    .line 304
    check-cast v2, Ljava/lang/Exception;

    .line 306
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v10, v2, Ljava/io/IOException;

    if-eqz v10, :cond_2

    .line 307
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "ex":Ljava/lang/Exception;
    throw v2

    .line 309
    .restart local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception in startTLS: host "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", port "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 309
    invoke-direct {v4, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 311
    .local v4, "ioex":Ljava/io/IOException;
    invoke-virtual {v4, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 312
    throw v4
.end method

.method private static stringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, "tokens":Ljava/util/List;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 359
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
