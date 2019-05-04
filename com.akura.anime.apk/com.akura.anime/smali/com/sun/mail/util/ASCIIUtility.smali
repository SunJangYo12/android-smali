.class public Lcom/sun/mail/util/ASCIIUtility;
.super Ljava/lang/Object;
.source "ASCIIUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 247
    const/16 v3, 0x400

    .line 251
    .local v3, "size":I
    instance-of v4, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 253
    new-array v1, v3, [B

    .line 254
    .local v1, "buf":[B
    invoke-virtual {p0, v1, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 263
    .local v2, "len":I
    :goto_0
    return-object v1

    .line 257
    .end local v1    # "buf":[B
    .end local v2    # "len":I
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v1, v3, [B

    .line 259
    .restart local v1    # "buf":[B
    :goto_1
    invoke-virtual {p0, v1, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .restart local v2    # "len":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 261
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 236
    .local v1, "chars":[C
    array-length v4, v1

    .line 237
    .local v4, "size":I
    new-array v0, v4, [B

    .line 239
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 241
    return-object v0

    .line 240
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-char v5, v1, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0
.end method

.method public static parseInt([BII)I
    .locals 1
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 126
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v0

    return v0
.end method

.method public static parseInt([BIII)I
    .locals 10
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "null"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 64
    :cond_0
    const/4 v6, 0x0

    .line 65
    .local v6, "result":I
    const/4 v5, 0x0

    .line 66
    .local v5, "negative":Z
    move v1, p1

    .line 71
    .local v1, "i":I
    if-le p2, p1, :cond_7

    .line 72
    aget-byte v7, p0, v1

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    .line 73
    const/4 v5, 0x1

    .line 74
    const/high16 v3, -0x80000000

    .line 75
    .local v3, "limit":I
    add-int/lit8 v1, v1, 0x1

    .line 79
    :goto_0
    div-int v4, v3, p3

    .line 80
    .local v4, "multmin":I
    if-ge v1, p2, :cond_a

    .line 81
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v7, p0, v1

    int-to-char v7, v7

    invoke-static {v7, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 82
    .local v0, "digit":I
    if-gez v0, :cond_2

    .line 83
    new-instance v7, Ljava/lang/NumberFormatException;

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "illegal number: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 77
    .end local v0    # "digit":I
    .end local v2    # "i":I
    .end local v3    # "limit":I
    .end local v4    # "multmin":I
    .restart local v1    # "i":I
    :cond_1
    const v3, -0x7fffffff

    .restart local v3    # "limit":I
    goto :goto_0

    .line 87
    .end local v1    # "i":I
    .restart local v0    # "digit":I
    .restart local v2    # "i":I
    .restart local v4    # "multmin":I
    :cond_2
    neg-int v6, v0

    .line 90
    .end local v0    # "digit":I
    :goto_1
    if-lt v2, p2, :cond_3

    .line 108
    if-eqz v5, :cond_9

    .line 109
    add-int/lit8 v7, p1, 0x1

    if-le v2, v7, :cond_8

    .line 115
    .end local v6    # "result":I
    :goto_2
    return v6

    .line 92
    .restart local v6    # "result":I
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v7, p0, v2

    int-to-char v7, v7

    invoke-static {v7, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 93
    .restart local v0    # "digit":I
    if-gez v0, :cond_4

    .line 94
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 96
    :cond_4
    if-ge v6, v4, :cond_5

    .line 97
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 99
    :cond_5
    mul-int/2addr v6, p3

    .line 100
    add-int v7, v3, v0

    if-ge v6, v7, :cond_6

    .line 101
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 103
    :cond_6
    sub-int/2addr v6, v0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 106
    .end local v0    # "digit":I
    .end local v2    # "i":I
    .end local v3    # "limit":I
    .end local v4    # "multmin":I
    .restart local v1    # "i":I
    :cond_7
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 112
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local v3    # "limit":I
    .restart local v4    # "multmin":I
    :cond_8
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "illegal number"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 115
    :cond_9
    neg-int v6, v6

    goto :goto_2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_a
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method public static parseLong([BII)J
    .locals 2
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 203
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong([BIII)J
    .locals 15
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "null"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 141
    :cond_0
    const-wide/16 v10, 0x0

    .line 142
    .local v10, "result":J
    const/4 v5, 0x0

    .line 143
    .local v5, "negative":Z
    move/from16 v3, p1

    .line 148
    .local v3, "i":I
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_7

    .line 149
    aget-byte v12, p0, v3

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_1

    .line 150
    const/4 v5, 0x1

    .line 151
    const-wide/high16 v6, -0x8000000000000000L

    .line 152
    .local v6, "limit":J
    add-int/lit8 v3, v3, 0x1

    .line 156
    :goto_0
    move/from16 v0, p3

    int-to-long v12, v0

    div-long v8, v6, v12

    .line 157
    .local v8, "multmin":J
    move/from16 v0, p2

    if-ge v3, v0, :cond_a

    .line 158
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v12, p0, v3

    int-to-char v12, v12

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 159
    .local v2, "digit":I
    if-gez v2, :cond_2

    .line 160
    new-instance v12, Ljava/lang/NumberFormatException;

    .line 161
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "illegal number: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 160
    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 154
    .end local v2    # "digit":I
    .end local v4    # "i":I
    .end local v6    # "limit":J
    .end local v8    # "multmin":J
    .restart local v3    # "i":I
    :cond_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    goto :goto_0

    .line 164
    .end local v3    # "i":I
    .restart local v2    # "digit":I
    .restart local v4    # "i":I
    .restart local v8    # "multmin":J
    :cond_2
    neg-int v12, v2

    int-to-long v10, v12

    .line 167
    .end local v2    # "digit":I
    :goto_1
    move/from16 v0, p2

    if-lt v4, v0, :cond_3

    .line 185
    if-eqz v5, :cond_9

    .line 186
    add-int/lit8 v12, p1, 0x1

    if-le v4, v12, :cond_8

    .line 192
    .end local v10    # "result":J
    :goto_2
    return-wide v10

    .line 169
    .restart local v10    # "result":J
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v12, p0, v4

    int-to-char v12, v12

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 170
    .restart local v2    # "digit":I
    if-gez v2, :cond_4

    .line 171
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 173
    :cond_4
    cmp-long v12, v10, v8

    if-gez v12, :cond_5

    .line 174
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 176
    :cond_5
    move/from16 v0, p3

    int-to-long v12, v0

    mul-long/2addr v10, v12

    .line 177
    int-to-long v12, v2

    add-long/2addr v12, v6

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 178
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 180
    :cond_6
    int-to-long v12, v2

    sub-long/2addr v10, v12

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 183
    .end local v2    # "digit":I
    .end local v4    # "i":I
    .end local v6    # "limit":J
    .end local v8    # "multmin":J
    .restart local v3    # "i":I
    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 189
    .end local v3    # "i":I
    .restart local v4    # "i":I
    .restart local v6    # "limit":J
    .restart local v8    # "multmin":J
    :cond_8
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "illegal number"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 192
    :cond_9
    neg-long v10, v10

    goto :goto_2

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_a
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1
.end method

.method public static toString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 223
    .local v3, "size":I
    new-array v4, v3, [C

    .line 224
    .local v4, "theChars":[C
    new-array v0, v3, [B

    .line 226
    .local v0, "bytes":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 230
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 228
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v4, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 212
    sub-int v4, p2, p1

    .line 213
    .local v4, "size":I
    new-array v5, v4, [C

    .line 215
    .local v5, "theChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, p1

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 218
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    return-object v6

    .line 216
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    aput-char v6, v5, v1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method
