.class public Lcom/sun/mail/imap/protocol/MessageSet;
.super Ljava/lang/Object;
.source "MessageSet.java"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 56
    iput p2, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 57
    return-void
.end method

.method public static createMessageSets([I)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 7
    .param p0, "msgs"    # [I

    .prologue
    .line 70
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 73
    .local v4, "v":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-lt v0, v5, :cond_0

    .line 86
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v3, v5, [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 87
    .local v3, "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 88
    return-object v3

    .line 74
    .end local v3    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_0
    new-instance v2, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 75
    .local v2, "ms":Lcom/sun/mail/imap/protocol/MessageSet;
    aget v5, p0, v0

    iput v5, v2, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 78
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    array-length v5, p0

    if-lt v1, v5, :cond_2

    .line 82
    :cond_1
    add-int/lit8 v5, v1, -0x1

    aget v5, p0, v5

    iput v5, v2, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 83
    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 84
    add-int/lit8 v0, v1, -0x1

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_2
    aget v5, p0, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, p0, v6

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static size([Lcom/sun/mail/imap/protocol/MessageSet;)I
    .locals 3
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "count":I
    if-nez p0, :cond_0

    .line 129
    const/4 v2, 0x0

    .line 134
    :goto_0
    return v2

    .line 131
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-lt v1, v2, :cond_1

    move v2, v0

    .line 134
    goto :goto_0

    .line 132
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/MessageSet;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
    .locals 7
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 96
    :cond_0
    const/4 v5, 0x0

    .line 118
    :goto_0
    return-object v5

    .line 98
    :cond_1
    const/4 v1, 0x0

    .line 99
    .local v1, "i":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v2, "s":Ljava/lang/StringBuffer;
    array-length v3, p0

    .line 104
    .local v3, "size":I
    :goto_1
    aget-object v5, p0, v1

    iget v4, v5, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 105
    .local v4, "start":I
    aget-object v5, p0, v1

    iget v0, v5, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 107
    .local v0, "end":I
    if-le v0, v4, :cond_2

    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 113
    if-lt v1, v3, :cond_3

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 116
    :cond_3
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public size()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    iget v1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
