.class public Lcom/google/android/gms/internal/zzia;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzia$zza;
    }
.end annotation


# static fields
.field private static final zzKl:J

.field private static zzKm:Z

.field private static zzKn:Lcom/google/android/gms/internal/zzfj;

.field private static final zzrs:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzAT:Lcom/google/android/gms/ads/internal/zzq;

.field private final zzAZ:Lcom/google/android/gms/internal/zzaq;

.field private final zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

.field private zzKo:Lcom/google/android/gms/internal/zzfh;

.field private zzKp:Lcom/google/android/gms/internal/zzfj$zze;

.field private zzKq:Lcom/google/android/gms/internal/zzfg;

.field private zzKr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzia;->zzKl:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzia;->zzrs:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzia;->zzKm:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzia;->zzKn:Lcom/google/android/gms/internal/zzfj;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzaq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzia;->zzKr:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzia;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzia;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzia;->zzAT:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzia;->zzAZ:Lcom/google/android/gms/internal/zzaq;

    sget-object v0, Lcom/google/android/gms/internal/zzcu;->zzze:Lcom/google/android/gms/internal/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzia;->zzKr:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/ads/internal/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzAT:Lcom/google/android/gms/ads/internal/zzq;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzjn$zza;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzcu;->zzyd:Lcom/google/android/gms/internal/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHH:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https:"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "http:"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private zzhC()V
    .locals 7

    sget-object v6, Lcom/google/android/gms/internal/zzia;->zzrs:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzia;->zzKm:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzfj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzia;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzia;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzia;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjn$zza;->zzPh:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzsx:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzia;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzia;->zzd(Lcom/google/android/gms/internal/zzjn$zza;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzia$3;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzia$3;-><init>(Lcom/google/android/gms/internal/zzia;)V

    new-instance v5, Lcom/google/android/gms/internal/zzfj$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzfj$zzb;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/internal/zzke;)V

    sput-object v0, Lcom/google/android/gms/internal/zzia;->zzKn:Lcom/google/android/gms/internal/zzfj;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzia;->zzKm:Z

    :cond_0
    monitor-exit v6

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzia;->mContext:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzhD()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfj$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzia;->zzhI()Lcom/google/android/gms/internal/zzfj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzia;->zzAZ:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzfj;->zzc(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfj$zze;-><init>(Lcom/google/android/gms/internal/zzfj$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzKp:Lcom/google/android/gms/internal/zzfj$zze;

    return-void
.end method

.method private zzhE()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzKo:Lcom/google/android/gms/internal/zzfh;

    return-void
.end method

.method private zzhF()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzia;->zzhG()Lcom/google/android/gms/internal/zzfh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzia;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzia;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjn$zza;->zzPh:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzsx:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzia;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzia;->zzd(Lcom/google/android/gms/internal/zzjn$zza;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzia;->zzAZ:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfh;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzaq;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-wide v2, Lcom/google/android/gms/internal/zzia;->zzKl:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzKq:Lcom/google/android/gms/internal/zzfg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzKq:Lcom/google/android/gms/internal/zzfg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzia;->zzAT:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzia;->zzAT:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzia;->zzAT:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzia;->zzAT:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v5, 0x0

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/zzfg;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzej;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzgx;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzia$zza;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzia;->zzKr:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzia;->zzhJ()Lcom/google/android/gms/internal/zzfj$zze;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SharedJavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaW(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzia$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzia$1;-><init>(Lcom/google/android/gms/internal/zzia;Lcom/google/android/gms/internal/zzia$zza;)V

    new-instance v2, Lcom/google/android/gms/internal/zzia$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzia$2;-><init>(Lcom/google/android/gms/internal/zzia;Lcom/google/android/gms/internal/zzia$zza;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfj$zze;->zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzia;->zzhH()Lcom/google/android/gms/internal/zzfg;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "JavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaW(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzia$zza;->zze(Lcom/google/android/gms/internal/zzfk;)V

    goto :goto_0
.end method

.method public zzhA()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzia;->zzKr:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzia;->zzhC()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzia;->zzhE()V

    goto :goto_0
.end method

.method public zzhB()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzia;->zzKr:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzia;->zzhD()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzia;->zzhF()V

    goto :goto_0
.end method

.method protected zzhG()Lcom/google/android/gms/internal/zzfh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzKo:Lcom/google/android/gms/internal/zzfh;

    return-object v0
.end method

.method protected zzhH()Lcom/google/android/gms/internal/zzfg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzKq:Lcom/google/android/gms/internal/zzfg;

    return-object v0
.end method

.method protected zzhI()Lcom/google/android/gms/internal/zzfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzia;->zzKn:Lcom/google/android/gms/internal/zzfj;

    return-object v0
.end method

.method protected zzhJ()Lcom/google/android/gms/internal/zzfj$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzKp:Lcom/google/android/gms/internal/zzfj$zze;

    return-object v0
.end method
