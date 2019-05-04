.class public Lcom/sun/mail/handlers/text_plain;
.super Ljava/lang/Object;
.source "text_plain.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 55
    const-class v1, Ljava/lang/String;

    .line 56
    const-string v2, "text/plain"

    .line 57
    const-string v3, "Text String"

    .line 54
    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/handlers/text_plain;->myDF:Ljavax/activation/ActivationDataFlavor;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 169
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "ct":Ljavax/mail/internet/ContentType;
    const-string v3, "charset"

    invoke-virtual {v1, v3}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 173
    const-string v0, "us-ascii"

    .line 174
    :cond_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 176
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "ct":Ljavax/mail/internet/ContentType;
    :goto_0
    return-object v3

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 11
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x40000

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "enc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 94
    .local v4, "is":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    new-instance v4, Ljava/io/InputStreamReader;

    .end local v4    # "is":Ljava/io/InputStreamReader;
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .restart local v4    # "is":Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 111
    .local v5, "pos":I
    const/16 v8, 0x400

    :try_start_1
    new-array v0, v8, [C

    .line 113
    .local v0, "buf":[C
    :cond_0
    :goto_0
    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-virtual {v4, v0, v5, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, "count":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    .line 126
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v5}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :goto_1
    return-object v8

    .line 96
    .end local v0    # "buf":[C
    .end local v1    # "count":I
    .end local v4    # "is":Ljava/io/InputStreamReader;
    .end local v5    # "pos":I
    :catch_0
    move-exception v3

    .line 105
    .local v3, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v8, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 114
    .end local v3    # "iex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "buf":[C
    .restart local v1    # "count":I
    .restart local v4    # "is":Ljava/io/InputStreamReader;
    .restart local v5    # "pos":I
    :cond_1
    add-int/2addr v5, v1

    .line 115
    :try_start_3
    array-length v8, v0

    if-lt v5, v8, :cond_0

    .line 116
    array-length v6, v0

    .line 117
    .local v6, "size":I
    if-ge v6, v10, :cond_2

    .line 118
    add-int/2addr v6, v6

    .line 121
    :goto_2
    new-array v7, v6, [C

    .line 122
    .local v7, "tbuf":[C
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v8, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    move-object v0, v7

    goto :goto_0

    .line 120
    .end local v7    # "tbuf":[C
    :cond_2
    add-int/2addr v6, v10

    goto :goto_2

    .line 127
    .end local v0    # "buf":[C
    .end local v1    # "count":I
    .end local v6    # "size":I
    :catchall_0
    move-exception v8

    .line 129
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 131
    :goto_3
    throw v8

    .line 130
    .restart local v0    # "buf":[C
    .restart local v1    # "count":I
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v0    # "buf":[C
    .end local v1    # "count":I
    :catch_2
    move-exception v9

    goto :goto_3
.end method

.method protected getDF()Ljavax/activation/ActivationDataFlavor;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sun/mail/handlers/text_plain;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "df"    # Lmyjava/awt/datatransfer/DataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    instance-of v4, p1, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 140
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 141
    const-string v6, "\" DataContentHandler requires String object, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 142
    const-string v6, "was given object of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 145
    .local v0, "enc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 148
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v2, Ljava/io/OutputStreamWriter;

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    invoke-direct {v2, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    move-object v3, p1

    .line 162
    check-cast v3, Ljava/lang/String;

    .line 163
    .local v3, "s":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 164
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 165
    return-void

    .line 150
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
