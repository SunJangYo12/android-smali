.class public final Ljavax/mail/search/HeaderTerm;
.super Ljavax/mail/search/StringTerm;
.source "HeaderTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x73c690dfba9d2142L


# instance fields
.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p2}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 109
    instance-of v2, p1, Ljavax/mail/search/HeaderTerm;

    if-nez v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 111
    check-cast v0, Ljavax/mail/search/HeaderTerm;

    .line 113
    .local v0, "ht":Ljavax/mail/search/HeaderTerm;
    iget-object v2, v0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    iget-object v3, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, v0}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 122
    invoke-super {p0}, Ljavax/mail/search/StringTerm;->hashCode()I

    move-result v1

    .line 121
    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    const/4 v3, 0x0

    .line 91
    :try_start_0
    iget-object v4, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    .local v1, "headers":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 102
    .end local v1    # "headers":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "headers":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 100
    aget-object v4, v1, v2

    invoke-super {p0, v4}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const/4 v3, 0x1

    goto :goto_0

    .line 99
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
