.class public final Lcom/google/android/gms/internal/zzns;
.super Lcom/google/android/gms/internal/zznv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zznv",
        "<",
        "Lcom/google/android/gms/common/api/zzb;",
        ">;"
    }
.end annotation


# instance fields
.field private zzalM:I

.field private zzalN:Z


# direct methods
.method private zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznq;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zznq;Lcom/google/android/gms/common/ConnectionResult;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zznq;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zznq",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter v0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/zzns;->zzalM:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzns;->zzalM:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzns;->zzalN:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzns;->zzalM:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzns;->zzalN:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/util/ArrayMap;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzns;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :cond_1
    const/4 v0, 0x0

    monitor-exit v0

    return-void

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzalw:Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/api/zzb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/zzb;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzns;->zzw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzrC()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zznq",
            "<*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected zzw(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zzb;
    .locals 2

    const/4 v0, 0x0

    monitor-enter v0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/util/ArrayMap;)V

    :goto_0
    const/4 v1, 0x0

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/zzb;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
