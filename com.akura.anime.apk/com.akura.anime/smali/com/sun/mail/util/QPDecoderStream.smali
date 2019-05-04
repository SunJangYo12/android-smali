.class public Lcom/sun/mail/util/QPDecoderStream;
.super Ljava/io/FilterInputStream;
.source "QPDecoderStream.java"


# instance fields
.field protected ba:[B

.field protected spaces:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x2

    .line 64
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    .line 65
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v4, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 80
    iget v6, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    if-lez v6, :cond_1

    .line 82
    iget v5, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    move v2, v4

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 86
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 88
    .local v2, "c":I
    if-ne v2, v4, :cond_5

    .line 90
    :goto_1
    iget-object v6, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 93
    if-eq v2, v9, :cond_2

    if-eq v2, v8, :cond_2

    if-ne v2, v5, :cond_4

    .line 96
    :cond_2
    iput v7, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    goto :goto_0

    .line 91
    :cond_3
    iget v6, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    goto :goto_1

    .line 99
    :cond_4
    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v4, Ljava/io/PushbackInputStream;

    invoke-virtual {v4, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 100
    const/16 v2, 0x20

    goto :goto_0

    .line 104
    :cond_5
    const/16 v4, 0x3d

    if-ne v2, v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 108
    .local v0, "a":I
    if-ne v0, v8, :cond_6

    .line 114
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v2

    goto :goto_0

    .line 115
    :cond_6
    if-ne v0, v9, :cond_8

    .line 117
    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 118
    .local v1, "b":I
    if-eq v1, v8, :cond_7

    .line 122
    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v4, Ljava/io/PushbackInputStream;

    invoke-virtual {v4, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 123
    :cond_7
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v2

    goto :goto_0

    .line 124
    .end local v1    # "b":I
    :cond_8
    if-ne v0, v5, :cond_9

    move v2, v5

    .line 126
    goto :goto_0

    .line 128
    :cond_9
    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    int-to-byte v5, v0

    aput-byte v5, v4, v7

    .line 129
    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 131
    :try_start_0
    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x10

    invoke-static {v4, v5, v6, v7}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    .line 140
    .local v3, "nex":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v4, Ljava/io/PushbackInputStream;

    iget-object v5, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    invoke-virtual {v4, v5}, Ljava/io/PushbackInputStream;->unread([B)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_1

    .line 172
    :cond_0
    :goto_1
    return v1

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 166
    if-nez v1, :cond_0

    .line 167
    const/4 v1, -0x1

    .line 168
    goto :goto_1

    .line 170
    :cond_2
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
