.class public Lcom/sun/mail/dsn/text_rfc822headers;
.super Ljava/lang/Object;
.source "text_rfc822headers.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;

.field private static myDFs:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 56
    const-class v1, Lcom/sun/mail/dsn/MessageHeaders;

    .line 57
    const-string v2, "text/rfc822-headers"

    .line 58
    const-string v3, "RFC822 headers"

    .line 55
    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    .line 59
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 60
    const-class v1, Ljava/lang/String;

    .line 61
    const-string v2, "text/rfc822-headers"

    .line 62
    const-string v3, "RFC822 headers"

    .line 59
    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 188
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "ct":Ljavax/mail/internet/ContentType;
    const-string v3, "charset"

    invoke-virtual {v1, v3}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 192
    const-string v0, "us-ascii"

    .line 193
    :cond_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 195
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "ct":Ljavax/mail/internet/ContentType;
    :goto_0
    return-object v3

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getStringContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 11
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x40000

    const/4 v9, 0x0

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "enc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 106
    .local v4, "is":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sun/mail/dsn/text_rfc822headers;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v4, Ljava/io/InputStreamReader;

    .end local v4    # "is":Ljava/io/InputStreamReader;
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .restart local v4    # "is":Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 122
    .local v5, "pos":I
    const/16 v8, 0x400

    new-array v0, v8, [C

    .line 124
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

    .line 137
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0, v9, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v8

    .line 108
    .end local v0    # "buf":[C
    .end local v1    # "count":I
    .end local v4    # "is":Ljava/io/InputStreamReader;
    .end local v5    # "pos":I
    :catch_0
    move-exception v3

    .line 117
    .local v3, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v8, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 125
    .end local v3    # "iex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "buf":[C
    .restart local v1    # "count":I
    .restart local v4    # "is":Ljava/io/InputStreamReader;
    .restart local v5    # "pos":I
    :cond_1
    add-int/2addr v5, v1

    .line 126
    array-length v8, v0

    if-lt v5, v8, :cond_0

    .line 127
    array-length v6, v0

    .line 128
    .local v6, "size":I
    if-ge v6, v10, :cond_2

    .line 129
    add-int/2addr v6, v6

    .line 132
    :goto_1
    new-array v7, v6, [C

    .line 133
    .local v7, "tbuf":[C
    invoke-static {v0, v9, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    move-object v0, v7

    goto :goto_0

    .line 131
    .end local v7    # "tbuf":[C
    :cond_2
    add-int/2addr v6, v10

    goto :goto_1
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 4
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    new-instance v1, Lcom/sun/mail/dsn/MessageHeaders;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/dsn/MessageHeaders;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "mex":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception creating MessageHeaders: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 84
    sget-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getStringContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    instance-of v7, p1, Lcom/sun/mail/dsn/MessageHeaders;

    if-eqz v7, :cond_1

    move-object v4, p1

    .line 146
    check-cast v4, Lcom/sun/mail/dsn/MessageHeaders;

    .line 148
    .local v4, "mh":Lcom/sun/mail/dsn/MessageHeaders;
    :try_start_0
    invoke-virtual {v4, p3}, Lcom/sun/mail/dsn/MessageHeaders;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v4    # "mh":Lcom/sun/mail/dsn/MessageHeaders;
    :goto_0
    return-void

    .line 149
    .restart local v4    # "mh":Lcom/sun/mail/dsn/MessageHeaders;
    :catch_0
    move-exception v3

    .line 150
    .local v3, "mex":Ljavax/mail/MessagingException;
    invoke-virtual {v3}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v1

    .line 151
    .local v1, "ex":Ljava/lang/Exception;
    instance-of v7, v1, Ljava/io/IOException;

    if-eqz v7, :cond_0

    .line 152
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 154
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception writing headers: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 158
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "mex":Ljavax/mail/MessagingException;
    .end local v4    # "mh":Lcom/sun/mail/dsn/MessageHeaders;
    :cond_1
    instance-of v7, p1, Ljava/lang/String;

    if-nez v7, :cond_2

    .line 159
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v9}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 160
    const-string v9, "\" DataContentHandler requires String object, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 161
    const-string v9, "was given object of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 159
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 163
    :cond_2
    const/4 v0, 0x0

    .line 164
    .local v0, "enc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 167
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-direct {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v5, Ljava/io/OutputStreamWriter;

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    invoke-direct {v5, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, p1

    .line 181
    check-cast v6, Ljava/lang/String;

    .line 182
    .local v6, "s":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 183
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_0

    .line 169
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "s":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 178
    .local v2, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v7, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
