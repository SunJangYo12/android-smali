.class Lcom/google/android/gms/internal/zzpn$1;
.super Lcom/google/android/gms/internal/zzpo$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpn;->zzf(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzasy:Lcom/google/android/gms/internal/zzpn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpn;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpn$1;->zzasy:Lcom/google/android/gms/internal/zzpn;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpo$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzpp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpn$1;->zza(Lcom/google/android/gms/internal/zzpp;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpp;->zztm()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr;

    new-instance v1, Lcom/google/android/gms/internal/zzpn$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzpn$zza;-><init>(Lcom/google/android/gms/internal/zznt$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr;->zza(Lcom/google/android/gms/internal/zzpq;)V

    return-void
.end method
