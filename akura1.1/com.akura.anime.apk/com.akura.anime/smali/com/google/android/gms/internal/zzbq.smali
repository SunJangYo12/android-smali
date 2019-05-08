.class public final Lcom/google/android/gms/internal/zzbq;
.super Lcom/google/android/gms/internal/zzbs$zza;


# instance fields
.field private final zzpu:Lcom/google/android/gms/internal/zzap;

.field private final zzpv:Lcom/google/android/gms/internal/zzaq;

.field private final zzpw:Lcom/google/android/gms/internal/zzan;

.field private zzpx:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbs$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpx:Z

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzap;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpu:Lcom/google/android/gms/internal/zzap;

    new-instance v0, Lcom/google/android/gms/internal/zzaq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpu:Lcom/google/android/gms/internal/zzap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaq;-><init>(Lcom/google/android/gms/internal/zzal;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpv:Lcom/google/android/gms/internal/zzaq;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpw:Lcom/google/android/gms/internal/zzan;

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzan;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/zzan;

    move-result-object v0

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;Z)Lcom/google/android/gms/dynamic/zzd;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpv:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaq;->zza(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpv:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaq;->zzb(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzar; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbq;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;Z)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpu:Lcom/google/android/gms/internal/zzap;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/zzap;->zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpv:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaq;->zza(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbq;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;Z)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpv:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaq;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/dynamic/zzd;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpv:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaq;->zzc(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public zzb(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpw:Lcom/google/android/gms/internal/zzan;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpw:Lcom/google/android/gms/internal/zzan;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzan;->zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpx:Z

    goto :goto_0
.end method

.method public zzba()Ljava/lang/String;
    .locals 1

    const-string v0, "ms"

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpu:Lcom/google/android/gms/internal/zzap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzap;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpw:Lcom/google/android/gms/internal/zzan;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpx:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpw:Lcom/google/android/gms/internal/zzan;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzan;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpw:Lcom/google/android/gms/internal/zzan;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpx:Z

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public zzd(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpv:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaq;->zza(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public zzk(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpv:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaq;->zzk(Ljava/lang/String;)V

    return-void
.end method
