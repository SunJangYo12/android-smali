.class public final Lcom/google/android/gms/internal/zznp$zza;
.super Lcom/google/android/gms/internal/zznp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final zzalD:Lcom/google/android/gms/internal/zznt$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zznt$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/google/android/gms/internal/zznt$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/gms/internal/zznt$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zznp;-><init>(II)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zznp$zza;->zzalD:Lcom/google/android/gms/internal/zznt$zza;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$zza;->zzalD:Lcom/google/android/gms/internal/zznt$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznt$zza;->zzrH()Z

    move-result v0

    return v0
.end method

.method public zza(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzpf;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zznp$zza;->zzalC:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznp$zza;->zzalD:Lcom/google/android/gms/internal/zznt$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpf;->zzg(Lcom/google/android/gms/internal/zznt$zza;)V

    :cond_0
    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$zza;->zzalD:Lcom/google/android/gms/internal/zznt$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznt$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    return-void
.end method

.method public zzv(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$zza;->zzalD:Lcom/google/android/gms/internal/zznt$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznt$zza;->zzx(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
