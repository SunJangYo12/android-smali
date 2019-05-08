.class public final Lcom/google/android/gms/internal/zzdh;
.super Lcom/google/android/gms/internal/zzdg$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final zzwj:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdg$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdh;->zzwj:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzdf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdh;->zzwj:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zzde;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzde;-><init>(Lcom/google/android/gms/internal/zzdf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
