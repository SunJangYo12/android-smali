.class public abstract Lcom/google/android/gms/ads/internal/overlay/zzj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzla;IZLcom/google/android/gms/internal/zzdc;Lcom/google/android/gms/internal/zzda;)Lcom/google/android/gms/ads/internal/overlay/zzi;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected zzg(Lcom/google/android/gms/internal/zzla;)Z
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzla;->zzbi()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzvt:Z

    return v0
.end method

.method protected zzq(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzva()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
