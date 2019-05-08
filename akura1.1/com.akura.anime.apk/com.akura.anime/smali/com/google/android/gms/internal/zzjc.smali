.class public Lcom/google/android/gms/internal/zzjc;
.super Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private zzOF:Lcom/google/android/gms/internal/zzjd;

.field private zzOM:Lcom/google/android/gms/internal/zzja;

.field private zzON:Lcom/google/android/gms/internal/zzjb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzjb;->zzc(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjc;->zzOM:Lcom/google/android/gms/internal/zzja;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzjd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjc;->zzOF:Lcom/google/android/gms/internal/zzjd;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/dynamic/zzd;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzOM:Lcom/google/android/gms/internal/zzja;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzOM:Lcom/google/android/gms/internal/zzja;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzja;->zzU(I)V

    :cond_0
    return-void
.end method

.method public zzc(Lcom/google/android/gms/dynamic/zzd;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzOF:Lcom/google/android/gms/internal/zzjd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzOF:Lcom/google/android/gms/internal/zzjd;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzjd;->zza(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public zzo(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzOM:Lcom/google/android/gms/internal/zzja;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzOM:Lcom/google/android/gms/internal/zzja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzja;->zzin()V

    :cond_0
    return-void
.end method

.method public zzp(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzOF:Lcom/google/android/gms/internal/zzjd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzOF:Lcom/google/android/gms/internal/zzjd;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjd;->zzaF(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zzq(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjb;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public zzr(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjb;->onRewardedVideoStarted()V

    :cond_0
    return-void
.end method

.method public zzs(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjb;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public zzt(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjb;->zzim()V

    :cond_0
    return-void
.end method

.method public zzu(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzON:Lcom/google/android/gms/internal/zzjb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjb;->onRewardedVideoAdLeftApplication()V

    :cond_0
    return-void
.end method
