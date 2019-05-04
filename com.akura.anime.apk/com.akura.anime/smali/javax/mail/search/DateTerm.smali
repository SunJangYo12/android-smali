.class public abstract Ljavax/mail/search/DateTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source "DateTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x42e013da6884266bL


# instance fields
.field protected date:Ljava/util/Date;


# direct methods
.method protected constructor <init>(ILjava/util/Date;)V
    .locals 0
    .param p1, "comparison"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 66
    invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V

    .line 67
    iput p1, p0, Ljavax/mail/search/DateTerm;->comparison:I

    .line 68
    iput-object p2, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 114
    instance-of v2, p1, Ljavax/mail/search/DateTerm;

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 116
    check-cast v0, Ljavax/mail/search/DateTerm;

    .line 117
    .local v0, "dt":Ljavax/mail/search/DateTerm;
    iget-object v2, v0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    iget-object v3, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getComparison()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Ljavax/mail/search/DateTerm;->comparison:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected match(Ljava/util/Date;)Z
    .locals 3
    .param p1, "d"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    iget v2, p0, Ljavax/mail/search/DateTerm;->comparison:I

    packed-switch v2, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 94
    :pswitch_0
    iget-object v2, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v2, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 102
    :pswitch_4
    iget-object v0, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    goto :goto_0

    .line 104
    :pswitch_5
    iget-object v2, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ljavax/mail/search/DateTerm;->date:Ljava/util/Date;

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
