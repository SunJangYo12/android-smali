.class public Lcom/google/android/gms/internal/zziy;
.super Lcom/google/android/gms/ads/internal/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/zzjb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# static fields
.field private static final zzOy:Lcom/google/android/gms/internal/zzfz;


# instance fields
.field private zzOA:Z

.field private final zzOz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzjf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zziy;->zzOy:Lcom/google/android/gms/internal/zzfz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    return-void
.end method

.method private zze(Lcom/google/android/gms/internal/zzjn$zza;)Lcom/google/android/gms/internal/zzjn$zza;
    .locals 23

    const-string v2, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzjw;->v(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzij;->zzc(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pubid"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzjn$zza;->zzPh:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzsv:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/zzfq;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.google.ads.mediation.admob.AdMobAdapter"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/zzfq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    new-instance v22, Lcom/google/android/gms/internal/zzfr;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzfq;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, ""

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object/from16 v2, v22

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzfr;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v2, Lcom/google/android/gms/internal/zzjn$zza;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzjn$zza;->zzPh:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzjn$zza;->zzsB:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/internal/zzjn$zza;->errorCode:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzjn$zza;->zzPc:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzjn$zza;->zzPd:J

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/internal/zzjn$zza;->zzOW:Lorg/json/JSONObject;

    move-object/from16 v5, v22

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/zzjn$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzfr;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzjw;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zziy;->zzf(Lcom/google/android/gms/internal/zzjn$zza;)Lcom/google/android/gms/internal/zzjn$zza;

    move-result-object v2

    goto :goto_0
.end method

.method private zzf(Lcom/google/android/gms/internal/zzjn$zza;)Lcom/google/android/gms/internal/zzjn$zza;
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzjn$zza;->zzPh:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/gms/internal/zzjn$zza;->zzsB:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzjn$zza;->zzPc:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/zzjn$zza;->zzPd:J

    iget-object v10, p1, Lcom/google/android/gms/internal/zzjn$zza;->zzOW:Lorg/json/JSONObject;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzjn$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzfr;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzdc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgb;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Fail to destroy adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaW(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzdc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsz:Lcom/google/android/gms/internal/zzjv;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsA:Lcom/google/android/gms/internal/zzkc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zziy;->zzOA:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextChanged(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjf;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgb;->zzj(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to call Adapter.onContextChanged."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzjw;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziy;->zzbm()V

    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziy;->zzbn()V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zziy;->zza(Lcom/google/android/gms/internal/zzjn;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziy;->zzbo()V

    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzFg:Lcom/google/android/gms/internal/zzfq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcz()Lcom/google/android/gms/internal/zzfw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzov:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzsx:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v4, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzsv:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn;->zzFg:Lcom/google/android/gms/internal/zzfq;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzfq;->zzEw:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzfw;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziy;->zzbq()V

    return-void
.end method

.method public pause()V
    .locals 4

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzdc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgb;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Fail to pause adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaW(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 4

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzdc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgb;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Fail to resume adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaW(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .locals 2

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzdc(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzsv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Invalid ad unit id. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaW(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zziy;->zzOA:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzsv:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsv:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->zzLi:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/zzb;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zzdc;)V
    .locals 4

    iget v0, p1, Lcom/google/android/gms/internal/zzjn$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzka;->zzQu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zziy$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zziy$1;-><init>(Lcom/google/android/gms/internal/zziy;Lcom/google/android/gms/internal/zzjn$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsD:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjn$zza;->zzOY:Lcom/google/android/gms/internal/zzfr;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zziy;->zze(Lcom/google/android/gms/internal/zzjn$zza;)Lcom/google/android/gms/internal/zzjn$zza;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsD:Lcom/google/android/gms/internal/zzjn$zza;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsX:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcj()Lcom/google/android/gms/internal/zzhv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzov:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzsD:Lcom/google/android/gms/internal/zzjn$zza;

    invoke-virtual {v1, v2, v3, p0}, Lcom/google/android/gms/internal/zzhv;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zziy;)Lcom/google/android/gms/internal/zzkc;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsA:Lcom/google/android/gms/internal/zzkc;

    goto :goto_0
.end method

.method protected zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzjn;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzjn;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzaE(Ljava/lang/String;)Lcom/google/android/gms/internal/zzjf;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjf;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzqc:Lcom/google/android/gms/internal/zzga;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/zziy;->zzOy:Lcom/google/android/gms/internal/zzfz;

    move-object v2, v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzjf;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzga;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/zzgb;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/zzjf;-><init>(Lcom/google/android/gms/internal/zzgb;Lcom/google/android/gms/internal/zzjb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzOz:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    const-string v3, "Fail to instantiate adapter "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzjw;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzFg:Lcom/google/android/gms/internal/zzfq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcz()Lcom/google/android/gms/internal/zzfw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzov:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzsx:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v4, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzsv:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn;->zzFg:Lcom/google/android/gms/internal/zzfq;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzfq;->zzEx:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzfw;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzOY:Lcom/google/android/gms/internal/zzfr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzOY:Lcom/google/android/gms/internal/zzfr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfr;->zzEM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzOY:Lcom/google/android/gms/internal/zzfr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfr;->zzEM:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjn;->zzOY:Lcom/google/android/gms/internal/zzfr;

    iget v1, v1, Lcom/google/android/gms/internal/zzfr;->zzEN:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;-><init>(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zziy;->zza(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    return-void
.end method

.method public zzil()V
    .locals 2

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzdc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziy;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaW(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zziy;->zzOA:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzpV:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzFi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zziy;->zzaE(Ljava/lang/String;)Lcom/google/android/gms/internal/zzjf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgb;->showVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call showVideo."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzjw;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzim()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziy;->onAdClicked()V

    return-void
.end method
