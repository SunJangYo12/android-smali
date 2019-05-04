.class public Lcom/sun/mail/imap/protocol/FetchResponse;
.super Lcom/sun/mail/imap/protocol/IMAPResponse;
.source "FetchResponse.java"


# static fields
.field private static final HEADER:[C

.field private static final TEXT:[C


# instance fields
.field private items:[Lcom/sun/mail/imap/protocol/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    .line 56
    return-void

    .line 109
    nop

    :array_0
    .array-data 2
        0x2es
        0x48s
        0x45s
        0x41s
        0x44s
        0x45s
        0x52s
    .end array-data

    .line 110
    nop

    :array_1
    .array-data 2
        0x2es
        0x54s
        0x45s
        0x58s
        0x54s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 0
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 62
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 0
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    .line 68
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    .line 69
    return-void
.end method

.method public static getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 5
    .param p0, "r"    # [Lcom/sun/mail/iap/Response;
    .param p1, "msgno"    # I
    .param p2, "c"    # Ljava/lang/Class;

    .prologue
    const/4 v4, 0x0

    .line 89
    if-nez p0, :cond_0

    move-object v3, v4

    .line 106
    :goto_0
    return-object v3

    .line 92
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_1

    move-object v3, v4

    .line 106
    goto :goto_0

    .line 94
    :cond_1
    aget-object v3, p0, v1

    if-eqz v3, :cond_2

    .line 95
    aget-object v3, p0, v1

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v3, :cond_2

    .line 96
    aget-object v3, p0, v1

    check-cast v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v3

    if-eq v3, p1, :cond_3

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_3
    aget-object v0, p0, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 100
    .local v0, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 101
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v3, v3, v2

    goto :goto_0

    .line 100
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private match([C)Z
    .locals 7
    .param p1, "itemName"    # [C

    .prologue
    .line 201
    array-length v4, p1

    .line 202
    .local v4, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 207
    const/4 v5, 0x1

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_1
    return v5

    .line 205
    .end local v0    # "i":I
    .end local v2    # "j":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_0
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-char v6, p1, v1

    if-eq v5, v6, :cond_1

    .line 206
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 115
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_0

    .line 116
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error in FETCH parsing, missing \'(\' at index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 120
    .local v1, "v":Ljava/util/Vector;
    const/4 v0, 0x0

    .line 122
    .local v0, "i":Lcom/sun/mail/imap/protocol/Item;
    :cond_1
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 124
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    if-lt v2, v3, :cond_2

    .line 125
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error in FETCH parsing, ran off end of buffer, size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 187
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 189
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 191
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 192
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/Item;

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    .line 193
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 194
    return-void

    .line 130
    :sswitch_0
    sget-object v2, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 132
    new-instance v0, Lcom/sun/mail/imap/protocol/ENVELOPE;

    .end local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    .line 134
    .restart local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    goto :goto_0

    .line 136
    :sswitch_1
    sget-object v2, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 138
    new-instance v0, Lcom/sun/mail/imap/protocol/FLAGS;

    .end local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    .line 140
    .restart local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    goto :goto_0

    .line 142
    :sswitch_2
    sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 144
    new-instance v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    .end local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/INTERNALDATE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    .line 146
    .restart local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    goto :goto_0

    .line 148
    :sswitch_3
    sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_5

    .line 150
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 151
    new-instance v0, Lcom/sun/mail/imap/protocol/BODY;

    .end local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODY;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    .restart local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    goto/16 :goto_0

    .line 154
    :cond_5
    sget-object v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 159
    :goto_1
    new-instance v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .end local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    .line 162
    .restart local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    goto/16 :goto_0

    .line 158
    :cond_6
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    goto :goto_1

    .line 164
    :sswitch_4
    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 166
    new-instance v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    .end local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/RFC822SIZE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    .restart local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    goto/16 :goto_0

    .line 169
    :cond_7
    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 171
    sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 175
    :cond_8
    :goto_2
    new-instance v0, Lcom/sun/mail/imap/protocol/RFC822DATA;

    .end local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/RFC822DATA;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    .line 178
    .restart local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    goto/16 :goto_0

    .line 173
    :cond_9
    sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 174
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    goto :goto_2

    .line 180
    :sswitch_5
    sget-object v2, Lcom/sun/mail/imap/protocol/UID;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/UID;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 182
    new-instance v0, Lcom/sun/mail/imap/protocol/UID;

    .end local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/UID;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    .restart local v0    # "i":Lcom/sun/mail/imap/protocol/Item;
    goto/16 :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x49 -> :sswitch_2
        0x52 -> :sswitch_4
        0x55 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getItem(I)Lcom/sun/mail/imap/protocol/Item;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 2
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 85
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v1, v1, v0

    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v0, v0

    return v0
.end method
