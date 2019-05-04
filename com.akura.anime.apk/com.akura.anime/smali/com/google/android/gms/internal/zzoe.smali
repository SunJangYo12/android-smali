.class public Lcom/google/android/gms/internal/zzoe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzog;


# instance fields
.field private final zzamB:Lcom/google/android/gms/internal/zzoh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzoh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoe;->zzamB:Lcom/google/android/gms/internal/zzoh;

    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzamB:Lcom/google/android/gms/internal/zzoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoh;->zzso()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzamB:Lcom/google/android/gms/internal/zzoh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzoh;->zzamm:Lcom/google/android/gms/internal/zzof;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzof;->zzano:Ljava/util/Set;

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzamB:Lcom/google/android/gms/internal/zzoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoh;->zzsm()V

    return-void
.end method

.method public disconnect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zznt$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzamB:Lcom/google/android/gms/internal/zzoh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzoh;->zzamm:Lcom/google/android/gms/internal/zzof;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzof;->zzanh:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public zzd(Lcom/google/android/gms/internal/zznt$zza;)Lcom/google/android/gms/internal/zznt$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zznt$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
