.class Lcom/sun/mail/imap/protocol/SearchSequence;
.super Ljava/lang/Object;
.source "SearchSequence.java"


# static fields
.field private static cal:Ljava/util/Calendar;

.field private static monthTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 357
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 358
    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "May"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 359
    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    .line 357
    sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    .line 363
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    .line 56
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 4
    .param p0, "term"    # Ljavax/mail/search/AndTerm;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v2

    .line 153
    .local v2, "terms":[Ljavax/mail/search/SearchTerm;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    .line 155
    .local v1, "result":Lcom/sun/mail/iap/Argument;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 157
    return-object v1

    .line 156
    :cond_0
    aget-object v3, v2, v0

    invoke-static {v3, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p0, "term"    # Ljavax/mail/search/BodyTerm;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 321
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "BODY"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Ljavax/mail/search/BodyTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-object v0
.end method

.method private static flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;
    .locals 8
    .param p0, "term"    # Ljavax/mail/search/FlagTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getTestSet()Z

    move-result v3

    .line 251
    .local v3, "set":Z
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 253
    .local v2, "result":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;

    move-result-object v0

    .line 254
    .local v0, "flags":Ljavax/mail/Flags;
    invoke-virtual {v0}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v4

    .line 255
    .local v4, "sf":[Ljavax/mail/Flags$Flag;
    invoke-virtual {v0}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "uf":[Ljava/lang/String;
    array-length v6, v4

    if-nez v6, :cond_0

    array-length v6, v5

    if-nez v6, :cond_0

    .line 257
    new-instance v6, Ljavax/mail/search/SearchException;

    const-string v7, "Invalid FlagTerm"

    invoke-direct {v6, v7}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 259
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-lt v1, v6, :cond_1

    .line 274
    const/4 v1, 0x0

    :goto_1
    array-length v6, v5

    if-lt v1, v6, :cond_e

    .line 279
    return-object v2

    .line 260
    :cond_1
    aget-object v6, v4, v1

    sget-object v7, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_4

    .line 261
    if-eqz v3, :cond_3

    const-string v6, "DELETED"

    :goto_2
    invoke-virtual {v2, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 259
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_3
    const-string v6, "UNDELETED"

    goto :goto_2

    .line 262
    :cond_4
    aget-object v6, v4, v1

    sget-object v7, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_6

    .line 263
    if-eqz v3, :cond_5

    const-string v6, "ANSWERED"

    :goto_4
    invoke-virtual {v2, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v6, "UNANSWERED"

    goto :goto_4

    .line 264
    :cond_6
    aget-object v6, v4, v1

    sget-object v7, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_8

    .line 265
    if-eqz v3, :cond_7

    const-string v6, "DRAFT"

    :goto_5
    invoke-virtual {v2, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v6, "UNDRAFT"

    goto :goto_5

    .line 266
    :cond_8
    aget-object v6, v4, v1

    sget-object v7, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_a

    .line 267
    if-eqz v3, :cond_9

    const-string v6, "FLAGGED"

    :goto_6
    invoke-virtual {v2, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v6, "UNFLAGGED"

    goto :goto_6

    .line 268
    :cond_a
    aget-object v6, v4, v1

    sget-object v7, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_c

    .line 269
    if-eqz v3, :cond_b

    const-string v6, "RECENT"

    :goto_7
    invoke-virtual {v2, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string v6, "OLD"

    goto :goto_7

    .line 270
    :cond_c
    aget-object v6, v4, v1

    sget-object v7, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_2

    .line 271
    if-eqz v3, :cond_d

    const-string v6, "SEEN"

    :goto_8
    invoke-virtual {v2, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string v6, "UNSEEN"

    goto :goto_8

    .line 275
    :cond_e
    if-eqz v3, :cond_f

    const-string v6, "KEYWORD"

    :goto_9
    invoke-virtual {v2, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 276
    aget-object v6, v5, v1

    invoke-virtual {v2, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_f
    const-string v6, "UNKEYWORD"

    goto :goto_9
.end method

.method private static from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 285
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "FROM"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-object v0
.end method

.method static generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 4
    .param p0, "term"    # Ljavax/mail/search/SearchTerm;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    instance-of v2, p0, Ljavax/mail/search/AndTerm;

    if-eqz v2, :cond_0

    .line 67
    check-cast p0, Ljavax/mail/search/AndTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    .line 107
    :goto_0
    return-object v2

    .line 68
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_0
    instance-of v2, p0, Ljavax/mail/search/OrTerm;

    if-eqz v2, :cond_1

    .line 69
    check-cast p0, Ljavax/mail/search/OrTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto :goto_0

    .line 70
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_1
    instance-of v2, p0, Ljavax/mail/search/NotTerm;

    if-eqz v2, :cond_2

    .line 71
    check-cast p0, Ljavax/mail/search/NotTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto :goto_0

    .line 72
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_2
    instance-of v2, p0, Ljavax/mail/search/HeaderTerm;

    if-eqz v2, :cond_3

    .line 73
    check-cast p0, Ljavax/mail/search/HeaderTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto :goto_0

    .line 74
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_3
    instance-of v2, p0, Ljavax/mail/search/FlagTerm;

    if-eqz v2, :cond_4

    .line 75
    check-cast p0, Ljavax/mail/search/FlagTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto :goto_0

    .line 76
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_4
    instance-of v2, p0, Ljavax/mail/search/FromTerm;

    if-eqz v2, :cond_5

    move-object v0, p0

    .line 77
    check-cast v0, Ljavax/mail/search/FromTerm;

    .line 78
    .local v0, "fterm":Ljavax/mail/search/FromTerm;
    invoke-virtual {v0}, Ljavax/mail/search/FromTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto :goto_0

    .line 80
    .end local v0    # "fterm":Ljavax/mail/search/FromTerm;
    :cond_5
    instance-of v2, p0, Ljavax/mail/search/FromStringTerm;

    if-eqz v2, :cond_6

    move-object v0, p0

    .line 81
    check-cast v0, Ljavax/mail/search/FromStringTerm;

    .line 82
    .local v0, "fterm":Ljavax/mail/search/FromStringTerm;
    invoke-virtual {v0}, Ljavax/mail/search/FromStringTerm;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto :goto_0

    .line 84
    .end local v0    # "fterm":Ljavax/mail/search/FromStringTerm;
    :cond_6
    instance-of v2, p0, Ljavax/mail/search/RecipientTerm;

    if-eqz v2, :cond_7

    move-object v1, p0

    .line 85
    check-cast v1, Ljavax/mail/search/RecipientTerm;

    .line 86
    .local v1, "rterm":Ljavax/mail/search/RecipientTerm;
    invoke-virtual {v1}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v2

    .line 87
    invoke-virtual {v1}, Ljavax/mail/search/RecipientTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v2, v3, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto :goto_0

    .line 90
    .end local v1    # "rterm":Ljavax/mail/search/RecipientTerm;
    :cond_7
    instance-of v2, p0, Ljavax/mail/search/RecipientStringTerm;

    if-eqz v2, :cond_8

    move-object v1, p0

    .line 91
    check-cast v1, Ljavax/mail/search/RecipientStringTerm;

    .line 92
    .local v1, "rterm":Ljavax/mail/search/RecipientStringTerm;
    invoke-virtual {v1}, Ljavax/mail/search/RecipientStringTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v2

    .line 93
    invoke-virtual {v1}, Ljavax/mail/search/RecipientStringTerm;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-static {v2, v3, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto :goto_0

    .line 96
    .end local v1    # "rterm":Ljavax/mail/search/RecipientStringTerm;
    :cond_8
    instance-of v2, p0, Ljavax/mail/search/SubjectTerm;

    if-eqz v2, :cond_9

    .line 97
    check-cast p0, Ljavax/mail/search/SubjectTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto/16 :goto_0

    .line 98
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_9
    instance-of v2, p0, Ljavax/mail/search/BodyTerm;

    if-eqz v2, :cond_a

    .line 99
    check-cast p0, Ljavax/mail/search/BodyTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto/16 :goto_0

    .line 100
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_a
    instance-of v2, p0, Ljavax/mail/search/SizeTerm;

    if-eqz v2, :cond_b

    .line 101
    check-cast p0, Ljavax/mail/search/SizeTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto/16 :goto_0

    .line 102
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_b
    instance-of v2, p0, Ljavax/mail/search/SentDateTerm;

    if-eqz v2, :cond_c

    .line 103
    check-cast p0, Ljavax/mail/search/SentDateTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto/16 :goto_0

    .line 104
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_c
    instance-of v2, p0, Ljavax/mail/search/ReceivedDateTerm;

    if-eqz v2, :cond_d

    .line 105
    check-cast p0, Ljavax/mail/search/ReceivedDateTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto/16 :goto_0

    .line 106
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_d
    instance-of v2, p0, Ljavax/mail/search/MessageIDTerm;

    if-eqz v2, :cond_e

    .line 107
    check-cast p0, Ljavax/mail/search/MessageIDTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    goto/16 :goto_0

    .line 109
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_e
    new-instance v2, Ljavax/mail/search/SearchException;

    const-string v3, "Search too complex"

    invoke-direct {v2, v3}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p0, "term"    # Ljavax/mail/search/HeaderTerm;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 232
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "HEADER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-object v0
.end method

.method private static isAscii(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 141
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 145
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 142
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    .line 143
    const/4 v2, 0x0

    goto :goto_1

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static isAscii(Ljavax/mail/search/SearchTerm;)Z
    .locals 3
    .param p0, "term"    # Ljavax/mail/search/SearchTerm;

    .prologue
    .line 117
    instance-of v2, p0, Ljavax/mail/search/AndTerm;

    if-nez v2, :cond_0

    instance-of v2, p0, Ljavax/mail/search/OrTerm;

    if-eqz v2, :cond_5

    .line 119
    :cond_0
    instance-of v2, p0, Ljavax/mail/search/AndTerm;

    if-eqz v2, :cond_2

    .line 120
    check-cast p0, Ljavax/mail/search/AndTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v1

    .line 124
    .local v1, "terms":[Ljavax/mail/search/SearchTerm;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 135
    .end local v0    # "i":I
    .end local v1    # "terms":[Ljavax/mail/search/SearchTerm;
    :cond_1
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 122
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_2
    check-cast p0, Ljavax/mail/search/OrTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v1

    .restart local v1    # "terms":[Ljavax/mail/search/SearchTerm;
    goto :goto_0

    .line 125
    .restart local v0    # "i":I
    :cond_3
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 126
    const/4 v2, 0x0

    goto :goto_2

    .line 124
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "i":I
    .end local v1    # "terms":[Ljavax/mail/search/SearchTerm;
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_5
    instance-of v2, p0, Ljavax/mail/search/NotTerm;

    if-eqz v2, :cond_6

    .line 128
    check-cast p0, Ljavax/mail/search/NotTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v2

    goto :goto_2

    .line 129
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_6
    instance-of v2, p0, Ljavax/mail/search/StringTerm;

    if-eqz v2, :cond_7

    .line 130
    check-cast p0, Ljavax/mail/search/StringTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-virtual {p0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    .line 131
    .restart local p0    # "term":Ljavax/mail/search/SearchTerm;
    :cond_7
    instance-of v2, p0, Ljavax/mail/search/AddressTerm;

    if-eqz v2, :cond_1

    .line 132
    check-cast p0, Ljavax/mail/search/AddressTerm;

    .end local p0    # "term":Ljavax/mail/search/SearchTerm;
    invoke-virtual {p0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2
.end method

.method private static messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p0, "term"    # Ljavax/mail/search/MessageIDTerm;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 241
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "HEADER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 242
    const-string v1, "Message-ID"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Ljavax/mail/search/MessageIDTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method private static not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p0, "term"    # Ljavax/mail/search/NotTerm;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 213
    .local v1, "result":Lcom/sun/mail/iap/Argument;
    const-string v2, "NOT"

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object v0

    .line 221
    .local v0, "nterm":Ljavax/mail/search/SearchTerm;
    instance-of v2, v0, Ljavax/mail/search/AndTerm;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljavax/mail/search/FlagTerm;

    if-eqz v2, :cond_1

    .line 222
    :cond_0
    invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    .line 226
    :goto_0
    return-object v1

    .line 224
    :cond_1
    invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto :goto_0
.end method

.method private static or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 9
    .param p0, "term"    # Ljavax/mail/search/OrTerm;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 162
    invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v4

    .line 168
    .local v4, "terms":[Ljavax/mail/search/SearchTerm;
    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 169
    aget-object v2, v4, v8

    .line 172
    .local v2, "t":Ljavax/mail/search/SearchTerm;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-lt v0, v5, :cond_5

    move-object p0, v2

    .line 175
    check-cast p0, Ljavax/mail/search/OrTerm;

    .line 177
    invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v4

    .line 181
    .end local v0    # "i":I
    .end local v2    # "t":Ljavax/mail/search/SearchTerm;
    :cond_0
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 184
    .local v1, "result":Lcom/sun/mail/iap/Argument;
    array-length v5, v4

    if-le v5, v7, :cond_1

    .line 185
    const-string v5, "OR"

    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 192
    :cond_1
    aget-object v5, v4, v8

    instance-of v5, v5, Ljavax/mail/search/AndTerm;

    if-nez v5, :cond_2

    aget-object v5, v4, v8

    instance-of v5, v5, Ljavax/mail/search/FlagTerm;

    if-eqz v5, :cond_6

    .line 193
    :cond_2
    aget-object v5, v4, v8

    invoke-static {v5, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    .line 198
    :goto_1
    array-length v5, v4

    if-le v5, v7, :cond_4

    .line 199
    aget-object v5, v4, v7

    instance-of v5, v5, Ljavax/mail/search/AndTerm;

    if-nez v5, :cond_3

    aget-object v5, v4, v7

    instance-of v5, v5, Ljavax/mail/search/FlagTerm;

    if-eqz v5, :cond_7

    .line 200
    :cond_3
    aget-object v5, v4, v7

    invoke-static {v5, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    .line 205
    :cond_4
    :goto_2
    return-object v1

    .line 173
    .end local v1    # "result":Lcom/sun/mail/iap/Argument;
    .restart local v0    # "i":I
    .restart local v2    # "t":Ljavax/mail/search/SearchTerm;
    :cond_5
    new-instance v3, Ljavax/mail/search/OrTerm;

    aget-object v5, v4, v0

    invoke-direct {v3, v2, v5}, Ljavax/mail/search/OrTerm;-><init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V

    .line 172
    .end local v2    # "t":Ljavax/mail/search/SearchTerm;
    .local v3, "t":Ljavax/mail/search/SearchTerm;
    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    .end local v3    # "t":Ljavax/mail/search/SearchTerm;
    .restart local v2    # "t":Ljavax/mail/search/SearchTerm;
    goto :goto_0

    .line 195
    .end local v0    # "i":I
    .end local v2    # "t":Ljavax/mail/search/SearchTerm;
    .restart local v1    # "result":Lcom/sun/mail/iap/Argument;
    :cond_6
    aget-object v5, v4, v8

    invoke-static {v5, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto :goto_1

    .line 202
    :cond_7
    aget-object v5, v4, v7

    invoke-static {v5, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto :goto_2
.end method

.method private static receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .locals 4
    .param p0, "term"    # Ljavax/mail/search/DateTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 410
    .local v1, "result":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 432
    new-instance v2, Ljavax/mail/search/SearchException;

    const-string v3, "Cannot handle Date Comparison"

    invoke-direct {v2, v3}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 435
    :goto_0
    return-object v1

    .line 417
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR SINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR BEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NOT ON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p0, "type"    # Ljavax/mail/Message$RecipientType;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 295
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_0

    .line 296
    const-string v1, "TO"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 304
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-object v0

    .line 297
    :cond_0
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_1

    .line 298
    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_1
    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_2

    .line 300
    const-string v1, "BCC"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_2
    new-instance v1, Ljavax/mail/search/SearchException;

    const-string v2, "Illegal Recipient type"

    invoke-direct {v1, v2}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .locals 4
    .param p0, "term"    # Ljavax/mail/search/DateTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 379
    .local v1, "result":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 401
    new-instance v2, Ljavax/mail/search/SearchException;

    const-string v3, "Cannot handle Date Comparison"

    invoke-direct {v2, v3}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENTSINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 404
    :goto_0
    return-object v1

    .line 386
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENTON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENTBEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR SENTSINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SENTON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR SENTBEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SENTON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NOT SENTON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p0, "term"    # Ljavax/mail/search/SizeTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 330
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getComparison()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 339
    :pswitch_0
    new-instance v1, Ljavax/mail/search/SearchException;

    const-string v2, "Cannot handle Comparison"

    invoke-direct {v1, v2}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :pswitch_1
    const-string v1, "LARGER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 342
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeNumber(I)V

    .line 343
    return-object v0

    .line 335
    :pswitch_2
    const-string v1, "SMALLER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p0, "term"    # Ljavax/mail/search/SubjectTerm;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 312
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "SUBJECT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Ljavax/mail/search/SubjectTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-object v0
.end method

.method private static toIMAPDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v0, "s":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 369
    sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    sget-object v2, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
