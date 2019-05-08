.class public Lcom/sun/mail/dsn/MultipartReport;
.super Ljavax/mail/internet/MimeMultipart;
.source "MultipartReport.java"


# instance fields
.field protected constructed:Z


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 80
    const-string v1, "report"

    invoke-direct {p0, v1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 83
    .local v0, "mbp":Ljavax/mail/internet/MimeBodyPart;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 84
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    .end local v0    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 85
    .restart local v0    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    invoke-direct {p0, v0, v2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 86
    iput-boolean v2, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/sun/mail/dsn/DeliveryStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 95
    const-string v2, "report"

    invoke-direct {p0, v2}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    const-string v2, "report-type"

    const-string v3, "delivery-status"

    invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    .line 99
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 100
    .local v1, "mbp":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v1, p1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 102
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    .end local v1    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    invoke-direct {v1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 103
    .restart local v1    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    const-string v2, "message/delivery-status"

    invoke-virtual {v1, p2, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v1, v4}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 105
    iput-boolean v4, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;Ljavax/mail/internet/InternetHeaders;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/sun/mail/dsn/DeliveryStatus;
    .param p3, "hdr"    # Ljavax/mail/internet/InternetHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V

    .line 130
    if-eqz p3, :cond_0

    .line 131
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 132
    .local v0, "mbp":Ljavax/mail/internet/MimeBodyPart;
    new-instance v1, Lcom/sun/mail/dsn/MessageHeaders;

    invoke-direct {v1, p3}, Lcom/sun/mail/dsn/MessageHeaders;-><init>(Ljavax/mail/internet/InternetHeaders;)V

    const-string v2, "text/rfc822-headers"

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 135
    .end local v0    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;Ljavax/mail/internet/MimeMessage;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/sun/mail/dsn/DeliveryStatus;
    .param p3, "msg"    # Ljavax/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V

    .line 115
    if-eqz p3, :cond_0

    .line 116
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 117
    .local v0, "mbp":Ljavax/mail/internet/MimeBodyPart;
    const-string v1, "message/rfc822"

    invoke-virtual {v0, p3, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 120
    .end local v0    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 1
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    .line 145
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->parse()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    .line 155
    return-void
.end method

.method private declared-synchronized setBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 295
    invoke-super {p0, p2}, Ljavax/mail/internet/MimeMultipart;->removeBodyPart(I)V

    .line 296
    :cond_1
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 2
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    if-nez v0, :cond_0

    .line 348
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/mail/MessagingException;

    .line 351
    const-string v1, "Can\'t add body parts to multipart/report 1"

    .line 350
    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 2
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/MessagingException;

    .line 365
    const-string v1, "Can\'t add body parts to multipart/report 2"

    .line 364
    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeliveryStatus()Lcom/sun/mail/dsn/DeliveryStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 221
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 227
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 223
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    .line 224
    .local v0, "bp":Ljavax/mail/BodyPart;
    const-string v3, "message/delivery-status"

    invoke-virtual {v0, v3}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    :try_start_2
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/dsn/DeliveryStatus;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "IOException getting DeliveryStatus"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    .end local v0    # "bp":Ljavax/mail/BodyPart;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getReturnedMessage()Ljavax/mail/internet/MimeMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 255
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 262
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 257
    :cond_1
    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    .line 258
    .local v0, "bp":Ljavax/mail/BodyPart;
    const-string v3, "message/rfc822"

    invoke-virtual {v0, v3}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 259
    const-string v3, "text/rfc822-headers"

    invoke-virtual {v0, v3}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeMessage;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "IOException getting ReturnedMessage"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    .end local v0    # "bp":Ljavax/mail/BodyPart;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    .line 169
    .local v0, "bp":Ljavax/mail/BodyPart;
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    monitor-exit p0

    return-object v4

    .line 171
    :cond_0
    :try_start_1
    const-string v4, "multipart/alternative"

    invoke-virtual {v0, v4}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/Multipart;

    .line 173
    .local v3, "mp":Ljavax/mail/Multipart;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljavax/mail/Multipart;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 182
    .end local v2    # "i":I
    .end local v3    # "mp":Ljavax/mail/Multipart;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 174
    .restart local v2    # "i":I
    .restart local v3    # "mp":Ljavax/mail/Multipart;
    :cond_2
    invoke-virtual {v3, v2}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    .line 175
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v0    # "bp":Ljavax/mail/BodyPart;
    .end local v2    # "i":I
    .end local v3    # "mp":Ljavax/mail/Multipart;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Exception getting text content"

    invoke-direct {v4, v5, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getTextBodyPart()Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBodyPart(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v0, Ljavax/mail/MessagingException;

    .line 334
    const-string v1, "Can\'t remove body parts from multipart/report"

    .line 333
    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 2
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljavax/mail/MessagingException;

    .line 322
    const-string v1, "Can\'t remove body parts from multipart/report"

    .line 321
    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setDeliveryStatus(Lcom/sun/mail/dsn/DeliveryStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/sun/mail/dsn/DeliveryStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 240
    .local v1, "mbp":Ljavax/mail/internet/MimeBodyPart;
    const-string v2, "message/delivery-status"

    invoke-virtual {v1, p1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 242
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    const-string v2, "report-type"

    const-string v3, "delivery-status"

    invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 239
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    .end local v1    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setReturnedMessage(Ljavax/mail/internet/MimeMessage;)V
    .locals 4
    .param p1, "msg"    # Ljavax/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    if-nez p1, :cond_0

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    .line 278
    .local v1, "part":Ljavax/mail/BodyPart;
    const/4 v2, 0x2

    invoke-super {p0, v2}, Ljavax/mail/internet/MimeMultipart;->removeBodyPart(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .end local v1    # "part":Ljavax/mail/BodyPart;
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 282
    .local v0, "mbp":Ljavax/mail/internet/MimeBodyPart;
    instance-of v2, p1, Lcom/sun/mail/dsn/MessageHeaders;

    if-eqz v2, :cond_1

    .line 283
    const-string v2, "text/rfc822-headers"

    invoke-virtual {v0, p1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    :goto_1
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    .end local v0    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 285
    .restart local v0    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    :cond_1
    :try_start_2
    const-string v2, "message/rfc822"

    invoke-virtual {v0, p1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t change subtype of MultipartReport"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 191
    .local v0, "mbp":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 190
    .end local v0    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setTextBodyPart(Ljavax/mail/internet/MimeBodyPart;)V
    .locals 1
    .param p1, "mbp"    # Ljavax/mail/internet/MimeBodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 213
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
