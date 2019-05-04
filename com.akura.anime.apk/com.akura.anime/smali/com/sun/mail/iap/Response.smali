.class public Lcom/sun/mail/iap/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field public static final BAD:I = 0xc

.field public static final BYE:I = 0x10

.field public static final CONTINUATION:I = 0x1

.field public static final NO:I = 0x8

.field public static final OK:I = 0x4

.field public static final SYNTHETIC:I = 0x20

.field public static final TAGGED:I = 0x2

.field public static final TAG_MASK:I = 0x3

.field public static final TYPE_MASK:I = 0x1c

.field public static final UNTAGGED:I = 0x3

.field private static final increment:I = 0x64


# instance fields
.field protected buffer:[B

.field protected index:I

.field protected pindex:I

.field protected size:I

.field protected tag:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 4
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 60
    const/4 v2, 0x0

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 61
    iput-object v3, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getResponseBuffer()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    .line 96
    .local v0, "ba":Lcom/sun/mail/iap/ByteArray;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getInputStream()Lcom/sun/mail/iap/ResponseInputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v1

    .line 97
    .local v1, "response":Lcom/sun/mail/iap/ByteArray;
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 98
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 100
    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 61
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 107
    iget v0, p1, Lcom/sun/mail/iap/Response;->index:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 108
    iget v0, p1, Lcom/sun/mail/iap/Response;->size:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 109
    iget-object v0, p1, Lcom/sun/mail/iap/Response;->buffer:[B

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 110
    iget v0, p1, Lcom/sun/mail/iap/Response;->type:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 111
    iget-object v0, p1, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 61
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 85
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 86
    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    .line 87
    return-void
.end method

.method public static byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    .locals 5
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    const/16 v4, 0x20

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "* BYE JavaMail Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "err":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/sun/mail/iap/Response;

    invoke-direct {v1, v0}, Lcom/sun/mail/iap/Response;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "r":Lcom/sun/mail/iap/Response;
    iget v2, v1, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lcom/sun/mail/iap/Response;->type:I

    .line 123
    return-object v1
.end method

.method private parse()V
    .locals 4

    .prologue
    .line 127
    const/4 v2, 0x0

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 129
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    .line 130
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 131
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 157
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_2

    .line 134
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 135
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 141
    :goto_1
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 142
    .local v0, "mark":I
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 144
    const-string v1, ""

    .line 145
    :cond_1
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 156
    :goto_2
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iput v2, p0, Lcom/sun/mail/iap/Response;->pindex:I

    goto :goto_0

    .line 137
    .end local v0    # "mark":I
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 138
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    goto :goto_1

    .line 147
    .restart local v0    # "mark":I
    .restart local v1    # "s":Ljava/lang/String;
    :cond_3
    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_2

    .line 149
    :cond_4
    const-string v2, "BAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_2

    .line 151
    :cond_5
    const-string v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_2

    .line 154
    :cond_6
    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_2
.end method

.method private parseString(ZZ)Ljava/lang/Object;
    .locals 10
    .param p1, "parseAtoms"    # Z
    .param p2, "returnString"    # Z

    .prologue
    const/16 v9, 0x22

    const/4 v4, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 390
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v6, v7

    .line 391
    .local v0, "b":B
    if-ne v0, v9, :cond_5

    .line 392
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 393
    iget v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 394
    .local v5, "start":I
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 396
    .local v1, "copyto":I
    :goto_0
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v6, v7

    if-ne v0, v9, :cond_1

    .line 407
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 409
    if-eqz p2, :cond_4

    .line 410
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-static {v6, v5, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v4

    .line 446
    .end local v1    # "copyto":I
    .end local v5    # "start":I
    :cond_0
    :goto_1
    return-object v4

    .line 397
    .restart local v1    # "copyto":I
    .restart local v5    # "start":I
    :cond_1
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_2

    .line 398
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 399
    :cond_2
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eq v6, v1, :cond_3

    .line 402
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget-object v7, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v8, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v7, v7, v8

    aput-byte v7, v6, v1

    .line 404
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 405
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 412
    :cond_4
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    sub-int v7, v1, v5

    invoke-direct {v4, v6, v5, v7}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_1

    .line 413
    .end local v1    # "copyto":I
    .end local v5    # "start":I
    :cond_5
    const/16 v6, 0x7b

    if-ne v0, v6, :cond_8

    .line 414
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 416
    .restart local v5    # "start":I
    :goto_2
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v6, v6, v7

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_6

    .line 419
    const/4 v2, 0x0

    .line 421
    .local v2, "count":I
    :try_start_0
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v6, v5, v7}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 427
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v5, v6, 0x3

    .line 428
    add-int v6, v5, v2

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 430
    if-eqz p2, :cond_7

    .line 431
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    add-int v7, v5, v2

    invoke-static {v6, v5, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 417
    .end local v2    # "count":I
    :cond_6
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_2

    .line 422
    .restart local v2    # "count":I
    :catch_0
    move-exception v3

    .line 424
    .local v3, "nex":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 433
    .end local v3    # "nex":Ljava/lang/NumberFormatException;
    :cond_7
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-direct {v4, v6, v5, v2}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_1

    .line 434
    .end local v2    # "count":I
    .end local v5    # "start":I
    :cond_8
    if-eqz p1, :cond_9

    .line 435
    iget v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 437
    .restart local v5    # "start":I
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "s":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 441
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    .end local v4    # "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-direct {v4, v6, v5, v7}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_1

    .line 442
    .end local v5    # "start":I
    :cond_9
    const/16 v6, 0x4e

    if-eq v0, v6, :cond_a

    const/16 v6, 0x6e

    if-ne v0, v6, :cond_0

    .line 443
    :cond_a
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x3

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    goto/16 :goto_1
.end method


# virtual methods
.method public getRest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 499
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    return v0
.end method

.method public isBAD()Z
    .locals 2

    .prologue
    .line 474
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBYE()Z
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinuation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 454
    iget v1, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNO()Z
    .locals 2

    .prologue
    .line 470
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOK()Z
    .locals 2

    .prologue
    .line 466
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynthetic()Z
    .locals 2

    .prologue
    .line 482
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTagged()Z
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnTagged()Z
    .locals 2

    .prologue
    .line 462
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peekByte()B
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readAtom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Response;->readAtom(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAtom(C)Ljava/lang/String;
    .locals 4
    .param p1, "delim"    # C

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 211
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v2, v3, :cond_0

    .line 212
    const/4 v2, 0x0

    .line 226
    :goto_0
    return-object v2

    .line 219
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 220
    .local v1, "start":I
    :goto_1
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v2, v3

    .local v0, "b":B
    const/16 v2, 0x20

    if-le v0, v2, :cond_1

    .line 221
    const/16 v2, 0x28

    if-eq v0, v2, :cond_1

    const/16 v2, 0x29

    if-eq v0, v2, :cond_1

    const/16 v2, 0x25

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_1

    .line 222
    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_1

    .line 223
    if-eqz p1, :cond_2

    if-ne v0, p1, :cond_2

    .line 226
    .end local v0    # "b":B
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v2, v1, v3}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 224
    .restart local v0    # "b":B
    :cond_2
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_1
.end method

.method public readAtomString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-direct {p0, v0, v0}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readByte()B
    .locals 3

    .prologue
    .line 189
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByteArray()Lcom/sun/mail/iap/ByteArray;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 359
    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    .line 361
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/iap/ByteArray;

    goto :goto_0
.end method

.method public readBytes()Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    .line 338
    .local v0, "ba":Lcom/sun/mail/iap/ByteArray;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    .line 341
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readLong()J
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 303
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 304
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_2

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BII)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 313
    :goto_1
    return-wide v2

    .line 305
    :cond_1
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 313
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public readNumber()I
    .locals 3

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 279
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 280
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_2

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 289
    :goto_1
    return v1

    .line 281
    :cond_1
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    .line 289
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readString(C)Ljava/lang/String;
    .locals 3
    .param p1, "delim"    # C

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 237
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v1, v2, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 244
    :goto_0
    return-object v1

    .line 240
    :cond_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 241
    .local v0, "start":I
    :goto_1
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    if-ne v1, p1, :cond_2

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 242
    :cond_2
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_1
.end method

.method public readStringList()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 250
    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 254
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 256
    .local v2, "v":Ljava/util/Vector;
    :cond_2
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 257
    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x29

    if-ne v3, v4, :cond_2

    .line 259
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 260
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 261
    new-array v0, v1, [Ljava/lang/String;

    .line 262
    .local v0, "s":[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/sun/mail/iap/Response;->pindex:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 507
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 174
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 175
    return-void
.end method

.method public skipSpaces()V
    .locals 2

    .prologue
    .line 161
    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 163
    :cond_0
    return-void

    .line 162
    :cond_1
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0
.end method

.method public skipToken()V
    .locals 2

    .prologue
    .line 169
    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 171
    :cond_0
    return-void

    .line 170
    :cond_1
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
