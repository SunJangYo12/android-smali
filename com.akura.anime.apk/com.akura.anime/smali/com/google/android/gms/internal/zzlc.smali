.class public Lcom/google/android/gms/internal/zzlc;
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
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzaq;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzla;
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzlc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzaq;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdc;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzla;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzaq;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdc;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzla;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzld;

    invoke-static/range {p1 .. p9}, Lcom/google/android/gms/internal/zzle;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzaq;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdc;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzld;-><init>(Lcom/google/android/gms/internal/zzla;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcm()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lcom/google/android/gms/internal/zzkb;->zzb(Lcom/google/android/gms/internal/zzla;Z)Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzla;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcm()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzkb;->zzk(Lcom/google/android/gms/internal/zzla;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzla;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
