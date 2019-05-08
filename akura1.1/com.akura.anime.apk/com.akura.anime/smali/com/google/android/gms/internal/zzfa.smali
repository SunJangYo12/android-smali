.class Lcom/google/android/gms/internal/zzfa;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfa$zza;
    }
.end annotation


# instance fields
.field zzDa:Lcom/google/android/gms/ads/internal/client/zzw;

.field zzDb:Lcom/google/android/gms/internal/zzhh;

.field zzDc:Lcom/google/android/gms/internal/zzdg;

.field zzDd:Lcom/google/android/gms/ads/internal/client/zzp;

.field zzDe:Lcom/google/android/gms/ads/internal/reward/client/zzd;

.field zzqG:Lcom/google/android/gms/ads/internal/client/zzq;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method zzc(Lcom/google/android/gms/ads/internal/zzl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzqG:Lcom/google/android/gms/ads/internal/client/zzq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzfa$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfa;->zzqG:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzfa$zza;-><init>(Lcom/google/android/gms/internal/zzfa;Lcom/google/android/gms/ads/internal/client/zzq;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDa:Lcom/google/android/gms/ads/internal/client/zzw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDa:Lcom/google/android/gms/ads/internal/client/zzw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDb:Lcom/google/android/gms/internal/zzhh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDb:Lcom/google/android/gms/internal/zzhh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzhh;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDc:Lcom/google/android/gms/internal/zzdg;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDc:Lcom/google/android/gms/internal/zzdg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzdg;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDd:Lcom/google/android/gms/ads/internal/client/zzp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDd:Lcom/google/android/gms/ads/internal/client/zzp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDe:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfa;->zzDe:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    :cond_5
    return-void
.end method
