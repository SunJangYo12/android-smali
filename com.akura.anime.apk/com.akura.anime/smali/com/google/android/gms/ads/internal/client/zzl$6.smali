.class Lcom/google/android/gms/ads/internal/client/zzl$6;
.super Lcom/google/android/gms/ads/internal/client/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/client/zzl$zza",
        "<",
        "Lcom/google/android/gms/internal/zzdl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzqB:Landroid/content/Context;

.field final synthetic zzvK:Lcom/google/android/gms/ads/internal/client/zzl;

.field final synthetic zzvL:Landroid/widget/FrameLayout;

.field final synthetic zzvM:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzvK:Lcom/google/android/gms/ads/internal/client/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzvL:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzvM:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzqB:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/ads/internal/client/zzl$1;)V

    return-void
.end method


# virtual methods
.method public synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$6;->zze(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/zzdl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzdH()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzdK()Lcom/google/android/gms/internal/zzdl;

    move-result-object v0

    return-object v0
.end method

.method public zzdK()Lcom/google/android/gms/internal/zzdl;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzvK:Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zze(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/zzdx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzqB:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzvL:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzvM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzdx;->zzb(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzdl;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzvK:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzqB:Landroid/content/Context;

    const-string v2, "native_ad_view_delegate"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzam;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzam;-><init>()V

    goto :goto_0
.end method

.method public zze(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/zzdl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzvL:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl$6;->zzvM:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzx;->createNativeAdViewDelegate(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/internal/zzdl;

    move-result-object v0

    return-object v0
.end method
