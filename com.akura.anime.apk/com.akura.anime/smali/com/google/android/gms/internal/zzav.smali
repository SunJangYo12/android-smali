.class public Lcom/google/android/gms/internal/zzav;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final zzoF:Ljava/lang/Object;

.field private static zzoH:Lcom/google/android/gms/common/zzc;


# instance fields
.field private volatile zzoA:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private zzoB:Ljava/util/concurrent/Future;

.field private zzoC:Lcom/google/android/gms/internal/zzak;

.field private zzoD:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected zzoE:Z

.field protected zzoG:Z

.field protected zzoI:Z

.field private zzoJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzbl;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzod:Z

.field protected zzov:Landroid/content/Context;

.field private zzow:Ljava/util/concurrent/ExecutorService;

.field private zzox:Ldalvik/system/DexClassLoader;

.field private zzoy:Lcom/google/android/gms/internal/zzas;

.field private zzoz:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzav;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzav;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzav;->zzoF:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzav;->zzoH:Lcom/google/android/gms/common/zzc;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzav;->zzoA:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzod:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzav;->zzoB:Ljava/util/concurrent/Future;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzav;->zzoD:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoE:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoI:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoJ:Ljava/util/Map;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzav;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzav;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzav;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzav;->zzc(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzau; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zza(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzas$zza;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s.jar"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzav;->zzoy:Lcom/google/android/gms/internal/zzas;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzav;->zzoz:[B

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzas;->zzc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v3, v1

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    return-object v0
.end method

.method private zza(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzav;->TAG:Ljava/lang/String;

    const-string v1, "File %s not found. No need for deletion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private zza(Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/io/File;

    const-string v0, "%s/%s.tmp"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v0, "%s/%s.dex"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    long-to-int v0, v4

    new-array v4, v0, [B

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/gms/internal/zzas$zza; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/google/android/gms/internal/zzas$zza; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-gtz v1, :cond_3

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v1, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;

    invoke-direct {v1}, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;-><init>()V

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iput-object v5, v1, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->osVersion:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iput-object v5, v1, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->timestamp:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzav;->zzoy:Lcom/google/android/gms/internal/zzas;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzav;->zzoz:[B

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/zzas;->zzd([B[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v1, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->data:[B

    invoke-static {v4}, Lcom/google/android/gms/internal/zzai;->zze([B)[B

    move-result-object v4

    iput-object v4, v1, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->hash:[B

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamj;->toByteArray(Lcom/google/android/gms/internal/zzamj;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v5, v1

    invoke-virtual {v4, v1, v2, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/google/android/gms/internal/zzas$zza; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_6
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_3
.end method

.method private zzaL()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoA:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoA:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoA:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private zzaM()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzqV()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzav;->zzoH:Lcom/google/android/gms/common/zzc;

    sget-object v0, Lcom/google/android/gms/internal/zzav;->zzoH:Lcom/google/android/gms/common/zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzc;->zzae(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoE:Z

    sget-object v0, Lcom/google/android/gms/internal/zzav;->zzoH:Lcom/google/android/gms/common/zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzav;->zzoG:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/clearcut/zzb;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoD:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcu;->initialize(Landroid/content/Context;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzav;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzav;->zzaL()V

    return-void
.end method

.method private zzb(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzav;->zzod:Z

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzow:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzav$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzav$1;-><init>(Lcom/google/android/gms/internal/zzav;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoB:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private zzb(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "%s/%s.tmp"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "%s/%s.dex"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object p2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    long-to-int v4, v4

    new-array v4, v4, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/zzav;->TAG:Ljava/lang/String;

    const-string v3, "Cannot read the cache data."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->parseFrom([B)Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->timestamp:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->hash:[B

    iget-object v6, v4, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->data:[B

    invoke-static {v6}, Lcom/google/android/gms/internal/zzai;->zze([B)[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->osVersion:[B

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzav;->zzoy:Lcom/google/android/gms/internal/zzas;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzav;->zzoz:[B

    new-instance v6, Ljava/lang/String;

    iget-object v4, v4, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$Cache;->data:[B

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/zzas;->zzc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    array-length v5, v2

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/zzas$zza; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v1

    goto/16 :goto_0
.end method

.method private zzc(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzau;
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzow:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzav;->zzb(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzav;->zzaM()V

    new-instance v0, Lcom/google/android/gms/internal/zzas;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzas;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoy:Lcom/google/android/gms/internal/zzas;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoy:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzas;->zzl(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoz:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzas$zza; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzav;->zzm(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/zzak;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzak;-><init>(Lcom/google/android/gms/internal/zzav;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzav;->zzoC:Lcom/google/android/gms/internal/zzak;

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzau;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzm(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzau;
        }
    .end annotation

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzau;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/zzas$zza; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzau;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v1, v0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzat;->zzX()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzav;->zzb(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/zzas$zza; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v4, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzox:Ldalvik/system/DexClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "%s/%s.dex"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzav;->zzn(Ljava/lang/String;)V

    return v8

    :catchall_0
    move-exception v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "%s/%s.dex"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzav;->zzn(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/gms/internal/zzas$zza; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzau;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzau;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzau;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzn(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzov:Landroid/content/Context;

    return-object v0
.end method

.method public zzT()I
    .locals 2

    const/high16 v0, -0x80000000

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzav;->zzaK()Lcom/google/android/gms/internal/zzak;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzak;->zzT()I

    move-result v0

    :cond_0
    return v0
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoJ:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoJ:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbl;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbl;-><init>(Lcom/google/android/gms/internal/zzav;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaD()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzow:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public zzaE()Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzox:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public zzaF()Lcom/google/android/gms/internal/zzas;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoy:Lcom/google/android/gms/internal/zzas;

    return-object v0
.end method

.method public zzaG()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoz:[B

    return-object v0
.end method

.method public zzaH()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoD:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public zzaI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoE:Z

    return v0
.end method

.method public zzaJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoI:Z

    return v0
.end method

.method public zzaK()Lcom/google/android/gms/internal/zzak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoC:Lcom/google/android/gms/internal/zzak;

    return-object v0
.end method

.method public zzaN()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzav;->zzod:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoA:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoA:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoB:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoB:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoB:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoA:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoB:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public zzaO()V
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzav;->zzoF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoI:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoD:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoI:Z

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoI:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public zzaP()V
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzav;->zzoF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoD:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzoI:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzav;->zzoJ:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbl;->zzaU()Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method
