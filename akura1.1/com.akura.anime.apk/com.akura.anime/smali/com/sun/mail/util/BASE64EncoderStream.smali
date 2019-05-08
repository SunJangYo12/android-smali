.class public Lcom/sun/mail/util/BASE64EncoderStream;
.super Ljava/io/FilterOutputStream;
.source "BASE64EncoderStream.java"


# static fields
.field private static newline:[B

.field private static final pem_array:[C


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private bytesPerLine:I

.field private count:I

.field private lineLimit:I

.field private noCRLF:Z

.field private outbuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    .line 210
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    .line 55
    return-void

    .line 64
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 210
    nop

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 103
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bytesPerLine"    # I

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    .line 59
    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 62
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    .line 79
    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    .line 81
    const/16 p2, 0x4c

    .line 83
    :cond_1
    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 p2, v0, 0x4

    .line 84
    iput p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    .line 85
    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    .line 87
    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-eqz v0, :cond_2

    .line 88
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_2
    add-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    .line 91
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    const/16 v1, 0xd

    aput-byte v1, v0, p2

    .line 92
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method private encode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 229
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v0

    .line 230
    .local v0, "osize":I
    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {v2, v5, v3, v4}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 232
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 235
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    iget v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    if-lt v1, v2, :cond_1

    .line 236
    iget-boolean v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 238
    :cond_0
    iput v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 240
    :cond_1
    return-void
.end method

.method public static encode([B)[B
    .locals 3
    .param p0, "inbuf"    # [B

    .prologue
    .line 249
    array-length v0, p0

    if-nez v0, :cond_0

    .line 251
    .end local p0    # "inbuf":[B
    :goto_0
    return-object p0

    .restart local p0    # "inbuf":[B
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object p0

    goto :goto_0
.end method

.method private static encode([BII[B)[B
    .locals 8
    .param p0, "inbuf"    # [B
    .param p1, "off"    # I
    .param p2, "size"    # I
    .param p3, "outbuf"    # [B

    .prologue
    const/16 v7, 0x3d

    .line 261
    if-nez p3, :cond_0

    .line 262
    invoke-static {p2}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v4

    new-array p3, v4, [B

    .line 265
    :cond_0
    move v0, p1

    .local v0, "inpos":I
    const/4 v2, 0x0

    .local v2, "outpos":I
    move v1, v0

    .end local v0    # "inpos":I
    .local v1, "inpos":I
    :goto_0
    const/4 v4, 0x3

    if-ge p2, v4, :cond_1

    .line 280
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 281
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 282
    .local v3, "val":I
    shl-int/lit8 v3, v3, 0x4

    .line 283
    add-int/lit8 v4, v2, 0x3

    aput-byte v7, p3, v4

    .line 284
    add-int/lit8 v4, v2, 0x2

    aput-byte v7, p3, v4

    .line 285
    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v6, v3, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 286
    shr-int/lit8 v3, v3, 0x6

    .line 287
    add-int/lit8 v4, v2, 0x0

    sget-object v5, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v6, v3, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 300
    .end local v3    # "val":I
    :goto_1
    return-object p3

    .line 266
    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 267
    .restart local v3    # "val":I
    shl-int/lit8 v3, v3, 0x8

    .line 268
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 269
    shl-int/lit8 v3, v3, 0x8

    .line 270
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 271
    add-int/lit8 v4, v2, 0x3

    sget-object v5, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v6, v3, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 272
    shr-int/lit8 v3, v3, 0x6

    .line 273
    add-int/lit8 v4, v2, 0x2

    sget-object v5, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v6, v3, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 274
    shr-int/lit8 v3, v3, 0x6

    .line 275
    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v6, v3, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 276
    shr-int/lit8 v3, v3, 0x6

    .line 277
    add-int/lit8 v4, v2, 0x0

    sget-object v5, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v6, v3, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 265
    add-int/lit8 p2, p2, -0x3

    add-int/lit8 v2, v2, 0x4

    move v1, v0

    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    goto :goto_0

    .line 288
    .end local v3    # "val":I
    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    .line 289
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 290
    .restart local v3    # "val":I
    shl-int/lit8 v3, v3, 0x8

    .line 291
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 292
    shl-int/lit8 v3, v3, 0x2

    .line 293
    add-int/lit8 v4, v2, 0x3

    aput-byte v7, p3, v4

    .line 294
    add-int/lit8 v4, v2, 0x2

    sget-object v5, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v6, v3, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 295
    shr-int/lit8 v3, v3, 0x6

    .line 296
    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v6, v3, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 297
    shr-int/lit8 v3, v3, 0x6

    .line 298
    add-int/lit8 v4, v2, 0x0

    sget-object v5, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v6, v3, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .end local v3    # "val":I
    :cond_3
    move v0, v1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    goto/16 :goto_1
.end method

.method private static encodedSize(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 308
    add-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->flush()V

    .line 202
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 204
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-lez v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 176
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/BASE64EncoderStream;->write([BII)V

    .line 166
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    add-int v1, p2, p3

    .local v1, "end":I
    move v2, p2

    .line 121
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_0
    :try_start_0
    iget v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-eqz v5, :cond_0

    if-lt v2, v1, :cond_3

    .line 125
    :cond_0
    iget v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    iget v6, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v0, v5, 0x3

    .line 126
    .local v0, "blen":I
    add-int v5, v2, v0

    if-ge v5, v1, :cond_6

    .line 128
    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v3

    .line 129
    .local v3, "outlen":I
    iget-boolean v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v5, :cond_1

    .line 130
    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "outlen":I
    .local v4, "outlen":I
    const/16 v6, 0xd

    aput-byte v6, v5, v3

    .line 131
    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "outlen":I
    .restart local v3    # "outlen":I
    const/16 v6, 0xa

    aput-byte v6, v5, v4

    .line 133
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, v2, v0, v6}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    add-int p2, v2, v0

    .line 135
    .end local v2    # "off":I
    .restart local p2    # "off":I
    const/4 v5, 0x0

    :try_start_1
    iput v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 139
    .end local v3    # "outlen":I
    :goto_1
    iget v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    add-int/2addr v5, p2

    if-lt v5, v1, :cond_4

    .line 143
    add-int/lit8 v5, p2, 0x3

    if-ge v5, v1, :cond_2

    .line 144
    sub-int v0, v1, p2

    .line 145
    div-int/lit8 v5, v0, 0x3

    mul-int/lit8 v0, v5, 0x3

    .line 147
    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v3

    .line 148
    .restart local v3    # "outlen":I
    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v0, v6}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 149
    add-int/2addr p2, v0

    .line 150
    iget v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .end local v3    # "outlen":I
    :cond_2
    :goto_2
    if-lt p2, v1, :cond_5

    .line 156
    monitor-exit p0

    return-void

    .line 122
    .end local v0    # "blen":I
    .end local p2    # "off":I
    .restart local v2    # "off":I
    :cond_3
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    :try_start_2
    aget-byte v5, p1, v2

    invoke-virtual {p0, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V

    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 140
    .end local v2    # "off":I
    .restart local v0    # "blen":I
    .restart local p2    # "off":I
    :cond_4
    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget v6, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    iget-object v7, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v6, v7}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 139
    iget v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    add-int/2addr p2, v5

    goto :goto_1

    .line 155
    :cond_5
    aget-byte v5, p1, p2

    invoke-virtual {p0, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 118
    .end local v0    # "blen":I
    .end local p2    # "off":I
    .restart local v2    # "off":I
    :catchall_0
    move-exception v5

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    :goto_3
    monitor-exit p0

    throw v5

    :catchall_1
    move-exception v5

    goto :goto_3

    .end local p2    # "off":I
    .restart local v0    # "blen":I
    .restart local v2    # "off":I
    :cond_6
    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_1
.end method
