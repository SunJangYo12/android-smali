.class Lcom/google/android/gms/internal/zzez$6$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzez$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzez$6;->onRewardedVideoAdClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCW:Lcom/google/android/gms/internal/zzez$6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzez$6;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzez$6$4;->zzCW:Lcom/google/android/gms/internal/zzez$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfa;->zzDe:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfa;->zzDe:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method
