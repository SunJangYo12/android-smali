.class public Lcom/google/android/gms/ads/internal/zzj;
.super Lcom/google/android/gms/ads/internal/client/zzr$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzpY:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzpp:Ljava/lang/Object;

.field private final zzqG:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final zzqH:Lcom/google/android/gms/internal/zzdt;

.field private final zzqI:Lcom/google/android/gms/internal/zzdu;

.field private final zzqJ:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqK:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqL:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final zzqM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqN:Lcom/google/android/gms/ads/internal/client/zzy;

.field private final zzqO:Ljava/lang/String;

.field private final zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzqQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/zzq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqc:Lcom/google/android/gms/internal/zzga;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/internal/zzdu;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/client/zzy;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzga;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/ads/internal/client/zzq;",
            "Lcom/google/android/gms/internal/zzdt;",
            "Lcom/google/android/gms/internal/zzdu;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdw;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdv;",
            ">;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Lcom/google/android/gms/ads/internal/client/zzy;",
            "Lcom/google/android/gms/ads/internal/zzd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzr$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpp:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqO:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqc:Lcom/google/android/gms/internal/zzga;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqG:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqI:Lcom/google/android/gms/internal/zzdu;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqH:Lcom/google/android/gms/internal/zzdt;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqJ:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqK:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqL:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzbK()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqM:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqN:Lcom/google/android/gms/ads/internal/client/zzy;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpY:Lcom/google/android/gms/ads/internal/zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzj;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqQ:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/internal/zzdt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqH:Lcom/google/android/gms/internal/zzdt;

    return-object v0
.end method

.method private zzbK()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqI:Lcom/google/android/gms/internal/zzdu;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqH:Lcom/google/android/gms/internal/zzdt;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/internal/zzdu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqI:Lcom/google/android/gms/internal/zzdu;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/zzj;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqJ:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/ads/internal/client/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqG:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/zzj;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqK:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/internal/zzj;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzbK()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqL:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/ads/internal/client/zzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqN:Lcom/google/android/gms/ads/internal/client/zzy;

    return-object v0
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpp:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqQ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLoading()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpp:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqQ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->isLoading()Z

    move-result v0

    :goto_0
    monitor-exit v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzka;->zzQu:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zzbL()Lcom/google/android/gms/ads/internal/zzq;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzpY:Lcom/google/android/gms/ads/internal/zzd;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzj;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzk(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqO:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqc:Lcom/google/android/gms/internal/zzga;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzj;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzj$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzj$1;-><init>(Lcom/google/android/gms/ads/internal/zzj;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzj;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
