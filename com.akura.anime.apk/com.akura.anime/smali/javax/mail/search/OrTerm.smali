.class public final Ljavax/mail/search/OrTerm;
.super Ljavax/mail/search/SearchTerm;
.source "OrTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x4aab7f3a24a275d8L


# instance fields
.field protected terms:[Ljavax/mail/search/SearchTerm;


# direct methods
.method public constructor <init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V
    .locals 2
    .param p1, "t1"    # Ljavax/mail/search/SearchTerm;
    .param p2, "t2"    # Ljavax/mail/search/SearchTerm;

    .prologue
    .line 69
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/mail/search/SearchTerm;

    iput-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    .line 71
    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 72
    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 73
    return-void
.end method

.method public constructor <init>([Ljavax/mail/search/SearchTerm;)V
    .locals 3
    .param p1, "t"    # [Ljavax/mail/search/SearchTerm;

    .prologue
    .line 80
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 81
    array-length v1, p1

    new-array v1, v1, [Ljavax/mail/search/SearchTerm;

    iput-object v1, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 84
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 115
    instance-of v3, p1, Ljavax/mail/search/OrTerm;

    if-nez v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 117
    check-cast v1, Ljavax/mail/search/OrTerm;

    .line 118
    .local v1, "ot":Ljavax/mail/search/OrTerm;
    iget-object v3, v1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v3, v3

    iget-object v4, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 123
    const/4 v2, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget-object v3, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v3, v3, v0

    iget-object v4, v1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTerms()[Ljavax/mail/search/SearchTerm;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0}, [Ljavax/mail/search/SearchTerm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/search/SearchTerm;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 133
    return v0

    .line 132
    :cond_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 108
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 106
    :cond_0
    iget-object v1, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x1

    goto :goto_1

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
