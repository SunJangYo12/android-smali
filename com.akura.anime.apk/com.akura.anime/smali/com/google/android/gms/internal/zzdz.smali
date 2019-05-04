.class public Lcom/google/android/gms/internal/zzdz;
.super Lcom/google/android/gms/internal/zzdu$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final zzBE:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdu$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz;->zzBE:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzdp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzBE:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdz;->zzb(Lcom/google/android/gms/internal/zzdp;)Lcom/google/android/gms/internal/zzdq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;->onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzdp;)Lcom/google/android/gms/internal/zzdq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdq;-><init>(Lcom/google/android/gms/internal/zzdp;)V

    return-object v0
.end method
