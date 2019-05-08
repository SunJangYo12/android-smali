.class public final Lcom/sun/mail/imap/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Utility$Condition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 8
    .param p0, "msgs"    # [Ljavax/mail/Message;
    .param p1, "cond"    # Lcom/sun/mail/imap/Utility$Condition;

    .prologue
    .line 76
    new-instance v6, Ljava/util/Vector;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    .line 80
    .local v6, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p0

    if-lt v1, v7, :cond_0

    .line 120
    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 121
    const/4 v5, 0x0

    .line 125
    :goto_1
    return-object v5

    .line 81
    :cond_0
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    .line 82
    .local v2, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    .line 87
    .local v0, "current":I
    if-eqz p1, :cond_3

    invoke-interface {p1, v2}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    :cond_3
    new-instance v4, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v4}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 91
    .local v4, "set":Lcom/sun/mail/imap/protocol/MessageSet;
    iput v0, v4, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 94
    add-int/lit8 v1, v1, 0x1

    :goto_3
    array-length v7, p0

    if-lt v1, v7, :cond_4

    .line 116
    :goto_4
    iput v0, v4, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 117
    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 96
    :cond_4
    aget-object v2, p0, v1

    .end local v2    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    .line 98
    .restart local v2    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 94
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 100
    :cond_6
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 103
    .local v3, "next":I
    if-eqz p1, :cond_7

    invoke-interface {p1, v2}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 106
    :cond_7
    add-int/lit8 v7, v0, 0x1

    if-ne v3, v7, :cond_8

    .line 107
    move v0, v3

    goto :goto_5

    .line 112
    :cond_8
    add-int/lit8 v1, v1, -0x1

    .line 113
    goto :goto_4

    .line 123
    .end local v0    # "current":I
    .end local v2    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v3    # "next":I
    .end local v4    # "set":Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_9
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v5, v7, [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 124
    .local v5, "sets":[Lcom/sun/mail/imap/protocol/MessageSet;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 12
    .param p0, "msgs"    # [Ljavax/mail/Message;

    .prologue
    .line 134
    new-instance v8, Ljava/util/Vector;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    .line 138
    .local v8, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, p0

    if-lt v2, v9, :cond_0

    .line 171
    invoke-virtual {v8}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 172
    const/4 v7, 0x0

    .line 176
    :goto_1
    return-object v7

    .line 139
    :cond_0
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 140
    .local v3, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 138
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v0

    .line 145
    .local v0, "current":J
    new-instance v6, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v6}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 146
    .local v6, "set":Lcom/sun/mail/imap/protocol/UIDSet;
    iput-wide v0, v6, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 149
    add-int/lit8 v2, v2, 0x1

    :goto_3
    array-length v9, p0

    if-lt v2, v9, :cond_2

    .line 167
    :goto_4
    iput-wide v0, v6, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 168
    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 151
    :cond_2
    aget-object v3, p0, v2

    .end local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 153
    .restart local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 149
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 155
    :cond_3
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v4

    .line 157
    .local v4, "next":J
    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    cmp-long v9, v4, v10

    if-nez v9, :cond_4

    .line 158
    move-wide v0, v4

    goto :goto_5

    .line 163
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 164
    goto :goto_4

    .line 174
    .end local v0    # "current":J
    .end local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v4    # "next":J
    .end local v6    # "set":Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_5
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v7, v9, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 175
    .local v7, "sets":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v8, v7}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_1
.end method
