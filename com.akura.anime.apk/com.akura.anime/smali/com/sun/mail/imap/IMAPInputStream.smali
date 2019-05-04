.class public Lcom/sun/mail/imap/IMAPInputStream;
.super Ljava/io/InputStream;
.source "IMAPInputStream.java"


# static fields
.field private static final slop:I = 0x40


# instance fields
.field private blksize:I

.field private buf:[B

.field private bufcount:I

.field private bufpos:I

.field private max:I

.field private msg:Lcom/sun/mail/imap/IMAPMessage;

.field private peek:Z

.field private pos:I

.field private readbuf:Lcom/sun/mail/iap/ByteArray;

.field private section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "msg"    # Lcom/sun/mail/imap/IMAPMessage;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "peek"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    .line 80
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    .line 81
    iput p3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    .line 82
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 84
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 85
    return-void
.end method

.method private checkSeen()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    .line 257
    .local v0, "f":Ljavax/mail/Folder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/mail/Folder;->getMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 258
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/IMAPMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0    # "f":Ljavax/mail/Folder;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private fill()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 119
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-lt v2, v3, :cond_1

    .line 120
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v2, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 122
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    .line 174
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v6, 0x0

    .line 127
    .local v6, "b":Lcom/sun/mail/imap/protocol/BODY;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    if-nez v2, :cond_2

    .line 128
    new-instance v2, Lcom/sun/mail/iap/ByteArray;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/lit8 v3, v3, 0x40

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 137
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    new-instance v2, Lcom/sun/mail/util/MessageRemovedIOException;

    .line 139
    const-string v3, "No content for expunged message"

    .line 138
    invoke-direct {v2, v3}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v10

    .line 150
    .local v10, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 151
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v10}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v10    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 141
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v1

    .line 142
    .local v1, "seqnum":I
    iget v4, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 143
    .local v4, "cnt":I
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v2, v5, :cond_4

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-le v2, v3, :cond_4

    .line 144
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    sub-int v4, v2, v3

    .line 145
    :cond_4
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v2, :cond_6

    .line 146
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 157
    :goto_1
    if-eqz v6, :cond_5

    :try_start_3
    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/BODY;->getByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v7

    .local v7, "ba":Lcom/sun/mail/iap/ByteArray;
    if-nez v7, :cond_7

    .line 158
    .end local v7    # "ba":Lcom/sun/mail/iap/ByteArray;
    :cond_5
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 159
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No content"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :cond_6
    :try_start_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    :try_end_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 152
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "seqnum":I
    .end local v4    # "cnt":I
    :catch_1
    move-exception v8

    .line 153
    .local v8, "fex":Ljavax/mail/FolderClosedException;
    :try_start_5
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v8}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 154
    invoke-virtual {v8}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-direct {v2, v3, v5}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v8    # "fex":Ljavax/mail/FolderClosedException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "seqnum":I
    .restart local v4    # "cnt":I
    .restart local v7    # "ba":Lcom/sun/mail/iap/ByteArray;
    :cond_7
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v2, :cond_8

    .line 165
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 168
    :cond_8
    invoke-virtual {v7}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    .line 169
    invoke-virtual {v7}, Lcom/sun/mail/iap/ByteArray;->getStart()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    .line 170
    invoke-virtual {v7}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v9

    .line 172
    .local v9, "n":I
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v2, v9

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    .line 173
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int/2addr v2, v9

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    goto/16 :goto_0
.end method

.method private forceCheckExpunged()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/util/MessageRemovedIOException;,
            Lcom/sun/mail/util/FolderClosedIOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v2, Lcom/sun/mail/util/MessageRemovedIOException;

    invoke-direct {v2}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>()V

    throw v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v4

    .line 98
    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-direct {v2, v4, v5}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 99
    :catch_1
    move-exception v1

    .line 100
    .local v1, "fex":Ljavax/mail/FolderClosedException;
    :try_start_3
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v4

    .line 101
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-direct {v2, v4, v5}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .end local v1    # "fex":Ljavax/mail/FolderClosedException;
    :cond_0
    return-void

    .line 102
    :catch_2
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    if-lt v0, v1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 183
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 184
    const/4 v0, -0x1

    .line 186
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/IMAPInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    sub-int v0, v2, v3

    .line 207
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 209
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v0, v2, v3

    .line 210
    if-gtz v0, :cond_0

    .line 211
    const/4 v1, -0x1

    .line 216
    :goto_0
    monitor-exit p0

    return v1

    .line 213
    :cond_0
    if-ge v0, p3, :cond_1

    move v1, v0

    .line 214
    .local v1, "cnt":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "avail":I
    .end local v1    # "cnt":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "avail":I
    :cond_1
    move v1, p3

    .line 213
    goto :goto_1
.end method
