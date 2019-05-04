.class public Lcom/google/android/gms/internal/zzgv;
.super Lcom/google/android/gms/internal/zzgw;

# interfaces
.implements Lcom/google/android/gms/internal/zzeh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzBb:Lcom/google/android/gms/internal/zzla;

.field private zzGA:I

.field zzGB:I

.field zzGC:I

.field zzGD:I

.field zzGE:I

.field private final zzGv:Lcom/google/android/gms/internal/zzcm;

.field zzGw:Landroid/util/DisplayMetrics;

.field private zzGx:F

.field zzGy:I

.field zzGz:I

.field private final zztn:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzla;Landroid/content/Context;Lcom/google/android/gms/internal/zzcm;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgw;-><init>(Lcom/google/android/gms/internal/zzla;)V

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGy:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGz:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGB:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGC:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGE:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgv;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgv;->zzGv:Lcom/google/android/gms/internal/zzcm;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zztn:Landroid/view/WindowManager;

    return-void
.end method

.method private zzfT()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGw:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zztn:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGw:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGw:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGx:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGA:I

    return-void
.end method

.method private zzfY()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzla;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgv;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgv;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzgv;->zze(II)V

    return-void
.end method

.method private zzgb()Lcom/google/android/gms/internal/zzgu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzgu$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgu$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGv:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcm;->zzej()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgu$zza;->zzt(Z)Lcom/google/android/gms/internal/zzgu$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGv:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcm;->zzek()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgu$zza;->zzs(Z)Lcom/google/android/gms/internal/zzgu$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGv:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcm;->zzeo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgu$zza;->zzu(Z)Lcom/google/android/gms/internal/zzgu$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGv:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcm;->zzel()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgu$zza;->zzv(Z)Lcom/google/android/gms/internal/zzgu$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGv:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcm;->zzem()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgu$zza;->zzw(Z)Lcom/google/android/gms/internal/zzgu$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgu$zza;->zzfS()Lcom/google/android/gms/internal/zzgu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzla;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzla;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgv;->zzfW()V

    return-void
.end method

.method public zze(II)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzka;->zzk(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGD:I

    iget v2, p0, Lcom/google/android/gms/internal/zzgv;->zzGE:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzgv;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjD()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzlb;->zzd(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method zzfU()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGw:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgv;->zzGw:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGy:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGw:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgv;->zzGw:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGz:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjy()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGy:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGB:I

    iget v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGz:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGC:I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzka;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgv;->zzGw:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGB:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgv;->zzGw:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGC:I

    goto :goto_0
.end method

.method zzfV()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzbi()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzvt:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGy:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGD:I

    iget v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGz:I

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGE:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/zzla;->measure(II)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzla;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGD:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzla;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgv;->zzGE:I

    goto :goto_0
.end method

.method public zzfW()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgv;->zzfT()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgv;->zzfU()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgv;->zzfV()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgv;->zzfZ()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgv;->zzga()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgv;->zzfY()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgv;->zzfX()V

    return-void
.end method

.method zzfX()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzX(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaV(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjG()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgv;->zzat(Ljava/lang/String;)V

    return-void
.end method

.method zzfZ()V
    .locals 7

    iget v1, p0, Lcom/google/android/gms/internal/zzgv;->zzGy:I

    iget v2, p0, Lcom/google/android/gms/internal/zzgv;->zzGz:I

    iget v3, p0, Lcom/google/android/gms/internal/zzgv;->zzGB:I

    iget v4, p0, Lcom/google/android/gms/internal/zzgv;->zzGC:I

    iget v5, p0, Lcom/google/android/gms/internal/zzgv;->zzGx:F

    iget v6, p0, Lcom/google/android/gms/internal/zzgv;->zzGA:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzgv;->zza(IIIIFI)V

    return-void
.end method

.method zzga()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgv;->zzgb()Lcom/google/android/gms/internal/zzgu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv;->zzBb:Lcom/google/android/gms/internal/zzla;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgu;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzla;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
