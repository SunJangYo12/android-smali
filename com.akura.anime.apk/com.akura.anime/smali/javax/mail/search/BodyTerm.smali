.class public final Ljavax/mail/search/BodyTerm;
.super Ljavax/mail/search/StringTerm;
.source "BodyTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x43d8ba911c34ab19L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private matchPart(Ljavax/mail/Part;)Z
    .locals 6
    .param p1, "p"    # Ljavax/mail/Part;

    .prologue
    const/4 v5, 0x0

    .line 85
    :try_start_0
    const-string v4, "text/*"

    invoke-interface {p1, v4}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87
    .local v3, "s":Ljava/lang/String;
    if-nez v3, :cond_0

    move v4, v5

    .line 109
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return v4

    .line 97
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    invoke-super {p0, v3}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 98
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const-string v4, "multipart/*"

    invoke-interface {p1, v4}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 99
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/Multipart;

    .line 100
    .local v2, "mp":Ljavax/mail/Multipart;
    invoke-virtual {v2}, Ljavax/mail/Multipart;->getCount()I

    move-result v0

    .line 101
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_3

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "mp":Ljavax/mail/Multipart;
    :cond_2
    :goto_2
    move v4, v5

    .line 109
    goto :goto_0

    .line 102
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "mp":Ljavax/mail/Multipart;
    :cond_3
    invoke-virtual {v2, v1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 103
    const/4 v4, 0x1

    goto :goto_0

    .line 101
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "mp":Ljavax/mail/Multipart;
    :cond_5
    const-string v4, "message/rfc822"

    invoke-interface {p1, v4}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Part;

    invoke-direct {p0, v4}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 107
    :catch_0
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 116
    instance-of v0, p1, Ljavax/mail/search/BodyTerm;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 1
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result v0

    return v0
.end method
