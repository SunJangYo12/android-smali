.class public Lcom/sun/mail/util/BASE64DecoderStream;
.super Ljava/io/FilterInputStream;
.source "BASE64DecoderStream.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private ignoreErrors:Z

.field private index:I

.field private input_buffer:[B

.field private input_len:I

.field private input_pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 198
    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    .line 209
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    .line 214
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 55
    return-void

    .line 213
    :cond_0
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    nop

    :array_0
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

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    const/4 v2, 0x3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    .line 58
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 59
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 63
    const/16 v2, 0x1ffe

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 64
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 65
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 67
    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 80
    :try_start_0
    const-string v2, "mail.mime.base64.ignoreerrors"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "ignoreErrors"    # Z

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    .line 58
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 59
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 63
    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 64
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 65
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 67
    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 96
    iput-boolean p2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 97
    return-void
.end method

.method private decode([BII)I
    .locals 12
    .param p1, "outbuf"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 233
    move v3, p2

    .line 234
    .local v3, "pos0":I
    :goto_0
    const/4 v6, 0x3

    if-ge p3, v6, :cond_0

    .line 334
    sub-int v6, p2, v3

    :goto_1
    return v6

    .line 240
    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, "got":I
    const/4 v5, 0x0

    .line 242
    .local v5, "val":I
    :goto_2
    if-lt v1, v11, :cond_1

    .line 326
    add-int/lit8 v6, p2, 0x2

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 327
    shr-int/lit8 v5, v5, 0x8

    .line 328
    add-int/lit8 v6, p2, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 329
    shr-int/lit8 v5, v5, 0x8

    .line 330
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 331
    add-int/lit8 p3, p3, -0x3

    .line 332
    add-int/lit8 p2, p2, 0x3

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v2

    .line 244
    .local v2, "i":I
    if-eq v2, v8, :cond_2

    if-ne v2, v9, :cond_d

    .line 246
    :cond_2
    if-ne v2, v8, :cond_7

    .line 247
    if-nez v1, :cond_3

    .line 248
    sub-int v6, p2, v3

    goto :goto_1

    .line 249
    :cond_3
    iget-boolean v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v6, :cond_4

    .line 250
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " before EOF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 253
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 250
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 254
    :cond_4
    const/4 v0, 0x1

    .line 275
    .local v0, "atEOF":Z
    :goto_3
    add-int/lit8 v4, v1, -0x1

    .line 276
    .local v4, "size":I
    if-nez v4, :cond_5

    .line 277
    const/4 v4, 0x1

    .line 280
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 281
    shl-int/lit8 v5, v5, 0x6

    .line 283
    :goto_4
    if-lt v1, v11, :cond_a

    .line 309
    shr-int/lit8 v5, v5, 0x8

    .line 310
    if-ne v4, v10, :cond_6

    .line 311
    add-int/lit8 v6, p2, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 312
    :cond_6
    shr-int/lit8 v5, v5, 0x8

    .line 313
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 315
    add-int/2addr p2, v4

    .line 316
    sub-int v6, p2, v3

    goto :goto_1

    .line 258
    .end local v0    # "atEOF":Z
    .end local v4    # "size":I
    :cond_7
    if-ge v1, v10, :cond_8

    iget-boolean v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v6, :cond_8

    .line 259
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 262
    const-string v8, " before padding character (=)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 263
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 259
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 266
    :cond_8
    if-nez v1, :cond_9

    .line 267
    sub-int v6, p2, v3

    goto/16 :goto_1

    .line 268
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "atEOF":Z
    goto :goto_3

    .line 284
    .restart local v4    # "size":I
    :cond_a
    if-nez v0, :cond_c

    .line 287
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v2

    .line 288
    if-ne v2, v8, :cond_b

    .line 289
    iget-boolean v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v6, :cond_c

    .line 290
    new-instance v6, Ljava/io/IOException;

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 291
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 290
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 295
    :cond_b
    if-eq v2, v9, :cond_c

    .line 296
    iget-boolean v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v6, :cond_c

    .line 297
    new-instance v6, Ljava/io/IOException;

    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 298
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 304
    :cond_c
    shl-int/lit8 v5, v5, 0x6

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 319
    .end local v0    # "atEOF":Z
    .end local v4    # "size":I
    :cond_d
    shl-int/lit8 v5, v5, 0x6

    .line 320
    add-int/lit8 v1, v1, 0x1

    .line 321
    or-int/2addr v5, v2

    goto/16 :goto_2
.end method

.method public static decode([B)[B
    .locals 10
    .param p0, "inbuf"    # [B

    .prologue
    const/16 v9, 0x3d

    .line 409
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v5, v7, 0x3

    .line 410
    .local v5, "size":I
    if-nez v5, :cond_0

    .line 448
    .end local p0    # "inbuf":[B
    :goto_0
    return-object p0

    .line 413
    .restart local p0    # "inbuf":[B
    :cond_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v9, :cond_1

    .line 414
    add-int/lit8 v5, v5, -0x1

    .line 415
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v9, :cond_1

    .line 416
    add-int/lit8 v5, v5, -0x1

    .line 418
    :cond_1
    new-array v3, v5, [B

    .line 420
    .local v3, "outbuf":[B
    const/4 v0, 0x0

    .local v0, "inpos":I
    const/4 v4, 0x0

    .line 421
    .local v4, "outpos":I
    array-length v5, p0

    move v1, v0

    .line 422
    .end local v0    # "inpos":I
    .local v1, "inpos":I
    :goto_1
    if-gtz v5, :cond_2

    move-object p0, v3

    .line 448
    goto :goto_0

    .line 424
    :cond_2
    const/4 v2, 0x3

    .line 425
    .local v2, "osize":I
    sget-object v7, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    aget-byte v6, v7, v8

    .line 426
    .local v6, "val":I
    shl-int/lit8 v6, v6, 0x6

    .line 427
    sget-object v7, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    or-int/2addr v6, v7

    .line 428
    shl-int/lit8 v6, v6, 0x6

    .line 429
    aget-byte v7, p0, v1

    if-eq v7, v9, :cond_5

    .line 430
    sget-object v7, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    or-int/2addr v6, v7

    .line 433
    :goto_2
    shl-int/lit8 v6, v6, 0x6

    .line 434
    aget-byte v7, p0, v0

    if-eq v7, v9, :cond_6

    .line 435
    sget-object v7, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    or-int/2addr v6, v7

    move v0, v1

    .line 438
    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    :goto_3
    const/4 v7, 0x2

    if-le v2, v7, :cond_3

    .line 439
    add-int/lit8 v7, v4, 0x2

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 440
    :cond_3
    shr-int/lit8 v6, v6, 0x8

    .line 441
    const/4 v7, 0x1

    if-le v2, v7, :cond_4

    .line 442
    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 443
    :cond_4
    shr-int/lit8 v6, v6, 0x8

    .line 444
    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    .line 445
    add-int/2addr v4, v2

    .line 446
    add-int/lit8 v5, v5, -0x4

    move v1, v0

    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    goto :goto_1

    .line 432
    :cond_5
    add-int/lit8 v2, v2, -0x1

    move v0, v1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    goto :goto_2

    .line 437
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method private getByte()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 348
    :cond_0
    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    if-lt v3, v4, :cond_2

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    if-gtz v3, :cond_1

    move v0, v2

    .line 367
    :goto_0
    return v0

    .line 351
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/EOFException;
    move v0, v2

    .line 352
    goto :goto_0

    .line 356
    .end local v1    # "ex":Ljava/io/EOFException;
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 359
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 361
    .local v0, "c":I
    const/16 v3, 0x3d

    if-ne v0, v3, :cond_3

    .line 362
    const/4 v0, -0x2

    goto :goto_0

    .line 364
    :cond_3
    sget-object v3, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-byte v0, v3, v0

    .line 366
    if-eq v0, v2, :cond_0

    goto :goto_0
.end method

.method private recentChars()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v3, 0xa

    .line 376
    const-string v1, ""

    .line 377
    .local v1, "errstr":Ljava/lang/String;
    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-le v4, v3, :cond_1

    .line 378
    .local v3, "nc":I
    :goto_0
    if-lez v3, :cond_0

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 380
    const-string v5, " most recent characters were: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 379
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    sub-int v2, v4, v3

    .local v2, "k":I
    :goto_1
    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-lt v2, v4, :cond_2

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    .end local v2    # "k":I
    :cond_0
    return-object v1

    .line 377
    .end local v3    # "nc":I
    :cond_1
    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    goto :goto_0

    .line 382
    .restart local v2    # "k":I
    .restart local v3    # "nc":I
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-char v0, v4

    .line 383
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 388
    :pswitch_0
    const/16 v4, 0x20

    if-lt v0, v4, :cond_3

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_3

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 384
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 385
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 386
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 391
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 383
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    array-length v1, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 115
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-gtz v0, :cond_0

    .line 116
    const/4 v0, -0x1

    .line 119
    :goto_0
    return v0

    .line 117
    :cond_0
    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 138
    move v3, p2

    .line 139
    .local v3, "off0":I
    :goto_0
    iget v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v7, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-ge v6, v7, :cond_0

    if-gtz p3, :cond_2

    .line 143
    :cond_0
    iget v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v7, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v6, v7, :cond_1

    .line 144
    const/4 v6, 0x0

    iput v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iput v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 146
    :cond_1
    div-int/lit8 v6, p3, 0x3

    mul-int/lit8 v0, v6, 0x3

    .line 147
    .local v0, "bsize":I
    if-lez v0, :cond_7

    .line 148
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v4

    .line 149
    .local v4, "size":I
    add-int/2addr p2, v4

    .line 150
    sub-int/2addr p3, v4

    .line 152
    if-eq v4, v0, :cond_7

    .line 153
    if-ne p2, v3, :cond_3

    .line 171
    .end local v4    # "size":I
    :goto_1
    return v5

    .line 140
    .end local v0    # "bsize":I
    :cond_2
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    iget-object v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v7, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v6, v6, v7

    aput-byte v6, p1, p2

    .line 141
    add-int/lit8 p3, p3, -0x1

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_0

    .line 156
    .restart local v0    # "bsize":I
    .restart local v4    # "size":I
    :cond_3
    sub-int v5, p2, v3

    goto :goto_1

    .line 162
    .end local v4    # "size":I
    .end local p2    # "off":I
    .restart local v2    # "off":I
    :cond_4
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result v1

    .line 163
    .local v1, "c":I
    if-ne v1, v5, :cond_5

    .line 168
    .end local v1    # "c":I
    :goto_2
    if-ne v2, v3, :cond_6

    move p2, v2

    .line 169
    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    .line 165
    .end local p2    # "off":I
    .restart local v1    # "c":I
    .restart local v2    # "off":I
    :cond_5
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    int-to-byte v6, v1

    aput-byte v6, p1, v2

    .line 161
    add-int/lit8 p3, p3, -0x1

    move v2, p2

    .end local v1    # "c":I
    .end local p2    # "off":I
    .restart local v2    # "off":I
    :goto_3
    if-gtz p3, :cond_4

    goto :goto_2

    .line 171
    :cond_6
    sub-int v5, v2, v3

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    :cond_7
    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_3
.end method
