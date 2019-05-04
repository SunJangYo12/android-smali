.class public abstract Lcom/google/android/gms/internal/zzamd;
.super Lcom/google/android/gms/internal/zzamj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzamd",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/zzamj;"
    }
.end annotation


# instance fields
.field protected zzcaa:Lcom/google/android/gms/internal/zzamf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamj;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/android/gms/internal/zzamd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzamj;->clone()Lcom/google/android/gms/internal/zzamj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamd;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzamh;->zza(Lcom/google/android/gms/internal/zzamd;Lcom/google/android/gms/internal/zzamd;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/android/gms/internal/zzamj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamd;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamd;->clone()Lcom/google/android/gms/internal/zzamd;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/google/android/gms/internal/zzame;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzame",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    iget v2, p1, Lcom/google/android/gms/internal/zzame;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzamm;->zzoo(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzamf;->zzok(I)Lcom/google/android/gms/internal/zzamg;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzamg;->zza(Lcom/google/android/gms/internal/zzame;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getUnknownFieldArray()Lcom/google/android/gms/internal/zzamf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    return-object v0
.end method

.method public final hasExtension(Lcom/google/android/gms/internal/zzame;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzame",
            "<TM;*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    iget v2, p1, Lcom/google/android/gms/internal/zzame;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzamm;->zzoo(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzamf;->zzok(I)Lcom/google/android/gms/internal/zzamg;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setExtension(Lcom/google/android/gms/internal/zzame;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzamd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzame",
            "<TM;TT;>;TT;)TM;"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/internal/zzame;->tag:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamm;->zzoo(I)I

    move-result v1

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzamf;->remove(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamf;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/zzamf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzamf;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    new-instance v2, Lcom/google/android/gms/internal/zzamg;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzamg;-><init>(Lcom/google/android/gms/internal/zzame;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzamf;->zza(ILcom/google/android/gms/internal/zzamg;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamf;->zzok(I)Lcom/google/android/gms/internal/zzamg;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzamg;->zza(Lcom/google/android/gms/internal/zzame;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzamc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamf;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzamf;->zzol(I)Lcom/google/android/gms/internal/zzamg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzamg;->writeTo(Lcom/google/android/gms/internal/zzamc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzamb;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzamb;->zznU(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzamm;->zzoo(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzamb;->zzD(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzaml;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/zzaml;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/zzamf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzamf;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzamg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzamg;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/zzamf;->zza(ILcom/google/android/gms/internal/zzamg;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzamg;->zza(Lcom/google/android/gms/internal/zzaml;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamf;->zzok(I)Lcom/google/android/gms/internal/zzamg;

    move-result-object v0

    goto :goto_1
.end method

.method protected zzy()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzamf;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzamf;->zzol(I)Lcom/google/android/gms/internal/zzamg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzamg;->zzy()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method
