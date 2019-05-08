.class Lcom/google/android/gms/internal/zzlb$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private zzSe:Lcom/google/android/gms/ads/internal/overlay/zzg;

.field private zzSq:Lcom/google/android/gms/internal/zzla;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/ads/internal/overlay/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlb$zzc;->zzSq:Lcom/google/android/gms/internal/zzla;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlb$zzc;->zzSe:Lcom/google/android/gms/ads/internal/overlay/zzg;

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public zzbs()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$zzc;->zzSe:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzbs()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$zzc;->zzSq:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjw()V

    return-void
.end method

.method public zzbt()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$zzc;->zzSe:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzbt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$zzc;->zzSq:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzgu()V

    return-void
.end method
