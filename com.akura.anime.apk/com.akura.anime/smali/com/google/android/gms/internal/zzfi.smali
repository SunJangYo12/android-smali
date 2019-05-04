.class public Lcom/google/android/gms/internal/zzfi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final zzBb:Lcom/google/android/gms/internal/zzla;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzaq;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcl()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzlc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzaq;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzla;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzjs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzka;->zzQu:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfi;)Lcom/google/android/gms/internal/zzla;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->destroy()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzej;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzgx;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjD()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzla;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;Z)V

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzej;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzgx;Lcom/google/android/gms/internal/zzjh;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzfg$zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjD()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfi$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzfi$6;-><init>(Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/internal/zzfg$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/internal/zzlb$zza;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjD()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzlb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfi$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzfi$1;-><init>(Lcom/google/android/gms/internal/zzfi;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfi;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzaf(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfi$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzfi$3;-><init>(Lcom/google/android/gms/internal/zzfi;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzfi;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzag(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfi$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzfi$5;-><init>(Lcom/google/android/gms/internal/zzfi;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfi;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzah(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfi$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzfi$4;-><init>(Lcom/google/android/gms/internal/zzfi;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfi;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjD()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzlb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzla;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzfs()Lcom/google/android/gms/internal/zzfl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfm;-><init>(Lcom/google/android/gms/internal/zzfk;)V

    return-object v0
.end method

.method public zzh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfi$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzfi$2;-><init>(Lcom/google/android/gms/internal/zzfi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfi;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
