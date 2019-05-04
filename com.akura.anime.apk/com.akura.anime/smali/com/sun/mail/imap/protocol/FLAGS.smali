.class public Lcom/sun/mail/imap/protocol/FLAGS;
.super Ljavax/mail/Flags;
.source "FLAGS.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C

.field private static final serialVersionUID:J = 0x617d1827c5428feL


# instance fields
.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    .line 53
    return-void

    .line 56
    nop

    :array_0
    .array-data 2
        0x46s
        0x4cs
        0x41s
        0x47s
        0x53s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 64
    invoke-direct {p0}, Ljavax/mail/Flags;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v4

    iput v4, p0, Lcom/sun/mail/imap/protocol/FLAGS;->msgno:I

    .line 67
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 68
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readSimpleList()[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "flags":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 70
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 107
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 71
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, v1, v2

    .line 72
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_7

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 100
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    .line 70
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :sswitch_0
    sget-object v4, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 78
    :sswitch_1
    sget-object v4, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 81
    :sswitch_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_6

    .line 82
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 83
    .local v0, "c":C
    const/16 v4, 0x65

    if-eq v0, v4, :cond_3

    const/16 v4, 0x45

    if-ne v0, v4, :cond_4

    .line 84
    :cond_3
    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 85
    :cond_4
    const/16 v4, 0x72

    if-eq v0, v4, :cond_5

    const/16 v4, 0x52

    if-ne v0, v4, :cond_2

    .line 86
    :cond_5
    sget-object v4, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 88
    .end local v0    # "c":C
    :cond_6
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :sswitch_3
    sget-object v4, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 94
    :sswitch_4
    sget-object v4, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 97
    :sswitch_5
    sget-object v4, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 104
    :cond_7
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_5
        0x41 -> :sswitch_3
        0x44 -> :sswitch_2
        0x46 -> :sswitch_4
        0x52 -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method
