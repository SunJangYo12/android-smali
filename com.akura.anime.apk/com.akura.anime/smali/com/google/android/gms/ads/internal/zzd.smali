.class public Lcom/google/android/gms/ads/internal/zzd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field public final zzqm:Lcom/google/android/gms/internal/zzew;

.field public final zzqn:Lcom/google/android/gms/ads/internal/overlay/zzj;

.field public final zzqo:Lcom/google/android/gms/ads/internal/overlay/zzm;

.field public final zzqp:Lcom/google/android/gms/internal/zzji;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/overlay/zzj;Lcom/google/android/gms/ads/internal/overlay/zzm;Lcom/google/android/gms/internal/zzji;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzd;->zzqm:Lcom/google/android/gms/internal/zzew;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzqn:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzqo:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzd;->zzqp:Lcom/google/android/gms/internal/zzji;

    return-void
.end method

.method public static zzbF()Lcom/google/android/gms/ads/internal/zzd;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzee;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzee;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/zzn;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzjg;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzjg;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/overlay/zzj;Lcom/google/android/gms/ads/internal/overlay/zzm;Lcom/google/android/gms/internal/zzji;)V

    return-object v0
.end method
