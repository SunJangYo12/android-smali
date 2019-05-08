.class public Lcom/google/android/gms/internal/zzlf;
.super Lcom/google/android/gms/ads/internal/client/zzab$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final zzBb:Lcom/google/android/gms/internal/zzla;

.field private final zzSP:F

.field private zzSQ:I

.field private zzSR:Lcom/google/android/gms/ads/internal/client/zzac;

.field private zzSS:Z

.field private zzST:Z

.field private zzSU:F

.field private final zzpp:Ljava/lang/Object;

.field private zzps:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzla;F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzab$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzpp:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzps:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlf;->zzBb:Lcom/google/android/gms/internal/zzla;

    iput p2, p0, Lcom/google/android/gms/internal/zzlf;->zzSP:F

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlf;->zzSS:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlf;)Lcom/google/android/gms/internal/zzla;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBb:Lcom/google/android/gms/internal/zzla;

    return-object v0
.end method

.method private zzbc(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlf;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzlf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzpp:Ljava/lang/Object;

    return-object v0
.end method

.method private zzc(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlf$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzlf$1;-><init>(Lcom/google/android/gms/internal/zzlf;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzka;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzlf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzSS:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzlf;)Lcom/google/android/gms/ads/internal/client/zzac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzSR:Lcom/google/android/gms/ads/internal/client/zzac;

    return-object v0
.end method

.method private zzi(II)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzlf$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzlf$2;-><init>(Lcom/google/android/gms/internal/zzlf;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzka;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getPlaybackState()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzlf;->zzSQ:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMuted()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzST:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 1

    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlf;->zzbc(Ljava/lang/String;)V

    return-void
.end method

.method public play()V
    .locals 1

    const-string v0, "play"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlf;->zzbc(Ljava/lang/String;)V

    return-void
.end method

.method public zzL(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlf;->zzps:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "initialState"

    const-string v2, "muteStart"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v2, v0}, Lcom/google/android/gms/common/util/zzf;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzlf;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public zza(FIZ)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzlf;->zzSU:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzlf;->zzST:Z

    iget v0, p0, Lcom/google/android/gms/internal/zzlf;->zzSQ:I

    iput p2, p0, Lcom/google/android/gms/internal/zzlf;->zzSQ:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzlf;->zzi(II)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzac;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlf;->zzSR:Lcom/google/android/gms/ads/internal/client/zzac;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdT()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlf;->zzSP:F

    return v0
.end method

.method public zzdU()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzlf;->zzSU:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzl(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "mute"

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlf;->zzbc(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "unmute"

    goto :goto_0
.end method
