.class public final Lcom/google/android/gms/internal/zzaki;
.super Lcom/google/android/gms/internal/zzakf;


# instance fields
.field private final zzbWs:Lcom/google/android/gms/internal/zzald;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzald",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzakf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakf;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzald;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzald;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzbWs:Lcom/google/android/gms/internal/zzald;

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzakf;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzbWs:Lcom/google/android/gms/internal/zzald;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzald;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaki;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzaki;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaki;->zzbWs:Lcom/google/android/gms/internal/zzald;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaki;->zzbWs:Lcom/google/android/gms/internal/zzald;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzald;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzbWs:Lcom/google/android/gms/internal/zzald;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzald;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzbWs:Lcom/google/android/gms/internal/zzald;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzald;->hashCode()I

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzakf;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/zzakh;->zzbWr:Lcom/google/android/gms/internal/zzakh;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzbWs:Lcom/google/android/gms/internal/zzald;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzald;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zziQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzakf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzbWs:Lcom/google/android/gms/internal/zzald;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzald;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzakf;

    return-object v0
.end method
