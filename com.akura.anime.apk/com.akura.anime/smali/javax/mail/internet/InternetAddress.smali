.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    const-string v0, "()<>@,;:\\\"\t .[]"

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 323
    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 105
    invoke-static {p1, v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 107
    .local v0, "a":[Ljavax/mail/internet/InternetAddress;
    array-length v1, v0

    if-eq v1, v3, :cond_0

    .line 108
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal address"

    invoke-direct {v1, v2, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_0
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 117
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 118
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 160
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 134
    if-eqz p2, :cond_0

    .line 135
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 136
    :cond_0
    return-void
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .locals 7
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "routeAddr"    # Z
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x40

    .line 886
    const/4 v3, 0x0

    .line 887
    .local v3, "start":I
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 949
    :cond_0
    return-void

    .line 889
    :cond_1
    if-eqz p1, :cond_2

    .line 894
    const/4 v3, 0x0

    :goto_0
    const-string v4, ",:"

    invoke-static {p0, v4, v3}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .local v1, "i":I
    if-gez v1, :cond_3

    .line 911
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .restart local v1    # "i":I
    if-ltz v1, :cond_8

    .line 912
    if-ne v1, v3, :cond_6

    .line 913
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing local name"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 896
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_4

    .line 897
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal route-addr"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 898
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_5

    .line 900
    add-int/lit8 v3, v1, 0x1

    .line 901
    goto :goto_1

    .line 895
    :cond_5
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 914
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_7

    .line 915
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing domain"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 916
    :cond_7
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "local":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "domain":Ljava/lang/String;
    :goto_2
    const-string v4, " \t\n\r"

    invoke-static {p0, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_a

    .line 940
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal whitespace in address"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 928
    .end local v0    # "domain":Ljava/lang/String;
    .end local v2    # "local":Ljava/lang/String;
    :cond_8
    if-eqz p2, :cond_9

    .line 929
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing final \'@domain\'"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 935
    :cond_9
    move-object v2, p0

    .line 936
    .restart local v2    # "local":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "domain":Ljava/lang/String;
    goto :goto_2

    .line 942
    :cond_a
    const-string v4, "()<>,;:\\\"[]@"

    invoke-static {v2, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_b

    .line 943
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal character in local name"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 945
    :cond_b
    if-eqz v0, :cond_0

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 946
    const-string v4, "()<>,;:\\\"[]@"

    invoke-static {v0, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 947
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal character in domain"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 6
    .param p0, "session"    # Ljavax/mail/Session;

    .prologue
    .line 502
    const/4 v3, 0x0

    .local v3, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "host":Ljava/lang/String;
    const/4 v0, 0x0

    .line 504
    .local v0, "address":Ljava/lang/String;
    if-nez p0, :cond_2

    .line 505
    :try_start_0
    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 524
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    :cond_1
    if-eqz v0, :cond_8

    .line 529
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 533
    :goto_1
    return-object v4

    .line 508
    :cond_2
    const-string v4, "mail.from"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    if-nez v0, :cond_0

    .line 510
    const-string v4, "mail.user"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 511
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 512
    :cond_3
    const-string v4, "user.name"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 514
    :cond_5
    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    :cond_6
    const-string v4, "mail.host"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 517
    :cond_7
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    .line 518
    .local v2, "me":Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    .line 519
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 532
    .end local v2    # "me":Ljava/net/InetAddress;
    :catch_0
    move-exception v4

    .line 533
    :cond_8
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 531
    :catch_1
    move-exception v4

    goto :goto_2

    .line 530
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .prologue
    .line 1007
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 1012
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1013
    .local v2, "len":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    move v1, v3

    .line 1019
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    :goto_1
    return v1

    .line 1014
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gez v4, :cond_0

    .line 1013
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    move v1, v3

    .line 1019
    goto :goto_1
.end method

.method private isSimple()Z
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 472
    .end local v0    # "pos":I
    :goto_0
    return v0

    .restart local v0    # "pos":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "used"    # I

    .prologue
    .line 482
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 485
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 546
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .locals 22
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .param p2, "parseHdr"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 608
    const/16 v18, -0x1

    .local v18, "start_personal":I
    const/4 v7, -0x1

    .line 609
    .local v7, "end_personal":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 610
    .local v11, "length":I
    const/4 v8, 0x0

    .line 611
    .local v8, "in_group":Z
    const/4 v15, 0x0

    .line 612
    .local v15, "route_addr":Z
    const/4 v14, 0x0

    .line 614
    .local v14, "rfc822":Z
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 617
    .local v19, "v":Ljava/util/Vector;
    const/4 v6, -0x1

    .local v6, "end":I
    move/from16 v17, v6

    .local v17, "start":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_0
    if-lt v9, v11, :cond_6

    .line 822
    if-ltz v17, :cond_5

    .line 828
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_0

    .line 829
    move v6, v9

    .line 830
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 831
    .local v4, "addr":Ljava/lang/String;
    if-nez v14, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_25

    .line 832
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_3

    .line 833
    :cond_2
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v15, v0}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 834
    :cond_3
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 835
    .local v12, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 836
    if-ltz v18, :cond_4

    .line 838
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 837
    invoke-static/range {v20 .. v20}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 840
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 854
    .end local v4    # "addr":Ljava/lang/String;
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v3, v0, [Ljavax/mail/internet/InternetAddress;

    .line 855
    .local v3, "a":[Ljavax/mail/internet/InternetAddress;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 856
    return-object v3

    .line 618
    .end local v3    # "a":[Ljavax/mail/internet/InternetAddress;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 620
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    .line 816
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 817
    move/from16 v17, v9

    .line 617
    :cond_7
    :goto_1
    :sswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 624
    :sswitch_1
    const/4 v14, 0x1

    .line 625
    if-ltz v17, :cond_8

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_8

    .line 626
    move v6, v9

    .line 627
    :cond_8
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 628
    add-int/lit8 v18, v9, 0x1

    .line 629
    :cond_9
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x1

    .local v13, "nesting":I
    :goto_2
    if-ge v9, v11, :cond_a

    if-gtz v13, :cond_b

    .line 646
    :cond_a
    if-lez v13, :cond_c

    .line 647
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \')\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 631
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 632
    sparse-switch v5, :sswitch_data_1

    .line 630
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 634
    :sswitch_2
    add-int/lit8 v9, v9, 0x1

    .line 635
    goto :goto_3

    .line 637
    :sswitch_3
    add-int/lit8 v13, v13, 0x1

    .line 638
    goto :goto_3

    .line 640
    :sswitch_4
    add-int/lit8 v13, v13, -0x1

    .line 641
    goto :goto_3

    .line 648
    :cond_c
    add-int/lit8 v9, v9, -0x1

    .line 649
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_7

    .line 650
    move v7, v9

    .line 651
    goto :goto_1

    .line 654
    .end local v13    # "nesting":I
    :sswitch_5
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'(\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 657
    :sswitch_6
    const/4 v14, 0x1

    .line 658
    if-eqz v15, :cond_d

    .line 659
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Extra route-addr"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 660
    :cond_d
    if-nez v8, :cond_f

    .line 661
    move/from16 v18, v17

    .line 662
    if-ltz v18, :cond_e

    .line 663
    move v7, v9

    .line 664
    :cond_e
    add-int/lit8 v17, v9, 0x1

    .line 667
    :cond_f
    const/4 v10, 0x0

    .line 669
    .local v10, "inquote":Z
    add-int/lit8 v9, v9, 0x1

    :goto_4
    if-lt v9, v11, :cond_11

    .line 686
    :cond_10
    if-lt v9, v11, :cond_14

    .line 687
    if-eqz v10, :cond_13

    .line 688
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'\"\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 670
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 671
    sparse-switch v5, :sswitch_data_2

    .line 669
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 673
    :sswitch_7
    add-int/lit8 v9, v9, 0x1

    .line 674
    goto :goto_5

    .line 676
    :sswitch_8
    if-eqz v10, :cond_12

    const/4 v10, 0x0

    .line 677
    :goto_6
    goto :goto_5

    .line 676
    :cond_12
    const/4 v10, 0x1

    goto :goto_6

    .line 679
    :sswitch_9
    if-eqz v10, :cond_10

    goto :goto_5

    .line 690
    :cond_13
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'>\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 692
    :cond_14
    const/4 v15, 0x1

    .line 693
    move v6, v9

    .line 694
    goto/16 :goto_1

    .line 696
    .end local v10    # "inquote":Z
    :sswitch_a
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'<\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 699
    :sswitch_b
    const/4 v14, 0x1

    .line 700
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 701
    move/from16 v17, v9

    .line 703
    :cond_15
    add-int/lit8 v9, v9, 0x1

    :goto_7
    if-lt v9, v11, :cond_16

    .line 715
    :sswitch_c
    if-lt v9, v11, :cond_7

    .line 716
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'\"\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 704
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 705
    sparse-switch v5, :sswitch_data_3

    .line 703
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 707
    :sswitch_d
    add-int/lit8 v9, v9, 0x1

    .line 708
    goto :goto_8

    .line 720
    :sswitch_e
    const/4 v14, 0x1

    .line 722
    add-int/lit8 v9, v9, 0x1

    :goto_9
    if-lt v9, v11, :cond_17

    .line 734
    :pswitch_0
    if-lt v9, v11, :cond_7

    .line 735
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \']\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 723
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 724
    packed-switch v5, :pswitch_data_0

    .line 722
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 726
    :pswitch_1
    add-int/lit8 v9, v9, 0x1

    .line 727
    goto :goto_a

    .line 739
    :sswitch_f
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 740
    const/4 v15, 0x0

    .line 741
    const/4 v14, 0x0

    .line 742
    const/4 v6, -0x1

    move/from16 v17, v6

    .line 743
    goto/16 :goto_1

    .line 745
    :cond_18
    if-eqz v8, :cond_19

    .line 746
    const/4 v15, 0x0

    .line 747
    goto/16 :goto_1

    .line 750
    :cond_19
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_1a

    .line 751
    move v6, v9

    .line 752
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 753
    .restart local v4    # "addr":Ljava/lang/String;
    if-nez v14, :cond_1b

    if-nez p1, :cond_1b

    if-eqz p2, :cond_20

    .line 754
    :cond_1b
    if-nez p1, :cond_1c

    if-nez p2, :cond_1d

    .line 755
    :cond_1c
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v15, v0}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 756
    :cond_1d
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 757
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 758
    if-ltz v18, :cond_1e

    .line 760
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 759
    invoke-static/range {v20 .. v20}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 761
    const/4 v7, -0x1

    move/from16 v18, v7

    .line 763
    :cond_1e
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 776
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_1f
    const/4 v15, 0x0

    .line 777
    const/4 v14, 0x0

    .line 778
    const/4 v6, -0x1

    move/from16 v17, v6

    .line 779
    goto/16 :goto_1

    .line 766
    :cond_20
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 767
    .local v16, "st":Ljava/util/StringTokenizer;
    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 768
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "a":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 770
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 771
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 772
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_b

    .line 782
    .end local v3    # "a":Ljava/lang/String;
    .end local v4    # "addr":Ljava/lang/String;
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v16    # "st":Ljava/util/StringTokenizer;
    :sswitch_10
    const/4 v14, 0x1

    .line 783
    if-eqz v8, :cond_21

    .line 784
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Nested group"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 785
    :cond_21
    const/4 v8, 0x1

    .line 786
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 787
    move/from16 v17, v9

    .line 788
    goto/16 :goto_1

    .line 791
    :sswitch_11
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    .line 792
    move/from16 v17, v9

    .line 793
    :cond_22
    if-nez v8, :cond_23

    .line 794
    new-instance v20, Ljavax/mail/internet/AddressException;

    .line 795
    const-string v21, "Illegal semicolon, not in group"

    .line 794
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 796
    :cond_23
    const/4 v8, 0x0

    .line 797
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_24

    .line 798
    move/from16 v17, v9

    .line 799
    :cond_24
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 800
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    add-int/lit8 v6, v9, 0x1

    .line 801
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 804
    const/4 v15, 0x0

    .line 805
    const/4 v6, -0x1

    move/from16 v17, v6

    .line 806
    goto/16 :goto_1

    .line 843
    .end local v5    # "c":C
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    .restart local v4    # "addr":Ljava/lang/String;
    :cond_25
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 844
    .restart local v16    # "st":Ljava/util/StringTokenizer;
    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 845
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 846
    .restart local v3    # "a":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 847
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 848
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_c

    .line 620
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_b
        0x28 -> :sswitch_1
        0x29 -> :sswitch_5
        0x2c -> :sswitch_f
        0x3a -> :sswitch_10
        0x3b -> :sswitch_11
        0x3c -> :sswitch_6
        0x3e -> :sswitch_a
        0x5b -> :sswitch_e
    .end sparse-switch

    .line 632
    :sswitch_data_1
    .sparse-switch
        0x28 -> :sswitch_3
        0x29 -> :sswitch_4
        0x5c -> :sswitch_2
    .end sparse-switch

    .line 671
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_8
        0x3e -> :sswitch_9
        0x5c -> :sswitch_7
    .end sparse-switch

    .line 705
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch

    .line 724
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "phrase"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 328
    .local v4, "len":I
    const/4 v5, 0x0

    .line 330
    .local v5, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 351
    if-eqz v5, :cond_0

    .line 352
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 353
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 356
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local p0    # "phrase":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 331
    .restart local p0    # "phrase":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 332
    .local v0, "c":C
    if-eq v0, v8, :cond_2

    if-ne v0, v9, :cond_6

    .line 334
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x3

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 335
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v4, :cond_3

    .line 343
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 337
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 338
    .local v1, "cc":C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 340
    :cond_4
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 345
    .end local v1    # "cc":C
    .end local v3    # "j":I
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    const/16 v7, 0x20

    if-ge v0, v7, :cond_7

    const/16 v7, 0xd

    if-eq v0, v7, :cond_7

    const/16 v7, 0xa

    if-eq v0, v7, :cond_7

    const/16 v7, 0x9

    if-ne v0, v7, :cond_8

    .line 346
    :cond_7
    const/16 v7, 0x7f

    if-ge v0, v7, :cond_8

    sget-object v7, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_9

    .line 348
    :cond_8
    const/4 v5, 0x1

    .line 330
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 6
    .param p0, "addresses"    # [Ljavax/mail/Address;
    .param p1, "used"    # I

    .prologue
    .line 440
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 441
    :cond_0
    const/4 v4, 0x0

    .line 461
    :goto_0
    return-object v4

    .line 443
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 445
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    if-lt v0, v4, :cond_2

    .line 461
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 446
    :cond_2
    if-eqz v0, :cond_3

    .line 447
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    add-int/lit8 p1, p1, 0x2

    .line 451
    :cond_3
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v1

    .line 453
    .local v1, "len":I
    add-int v4, p1, v1

    const/16 v5, 0x4c

    if-le v4, v5, :cond_4

    .line 454
    const-string v4, "\r\n\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    const/16 p1, 0x8

    .line 457
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 360
    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 364
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 365
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 371
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 374
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return-object p0

    .line 366
    .restart local v1    # "i":I
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 367
    .local v0, "c":C
    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 368
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 369
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "a":Ljavax/mail/internet/InternetAddress;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 381
    instance-of v3, p1, Ljavax/mail/internet/InternetAddress;

    if-nez v3, :cond_1

    .line 390
    .end local p1    # "a":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 384
    .restart local p1    # "a":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljavax/mail/internet/InternetAddress;

    .end local p1    # "a":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "s":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-ne v0, v3, :cond_2

    move v1, v2

    .line 386
    goto :goto_0

    .line 387
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 388
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 6
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 986
    const/4 v1, 0x0

    .line 987
    .local v1, "groups":Ljava/util/Vector;
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "addr":Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-object v4

    .line 991
    :cond_1
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 992
    .local v2, "ix":I
    if-ltz v2, :cond_0

    .line 995
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 997
    .local v3, "list":Ljava/lang/String;
    invoke-static {v3, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    goto :goto_0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 266
    :goto_0
    return-object v1

    .line 254
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 256
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 266
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isGroup()Z
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 970
    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 208
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_1
    return-object v0

    .line 284
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    :cond_2
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_1

    .line 287
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 301
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_0

    .line 304
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 870
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 871
    return-void
.end method
