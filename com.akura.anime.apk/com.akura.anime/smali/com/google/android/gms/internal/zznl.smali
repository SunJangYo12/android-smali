.class public Lcom/google/android/gms/internal/zznl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/zzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zznl$zze;,
        Lcom/google/android/gms/internal/zznl$zzd;,
        Lcom/google/android/gms/internal/zznl$zzb;,
        Lcom/google/android/gms/internal/zznl$zza;,
        Lcom/google/android/gms/internal/zznl$zzc;
    }
.end annotation


# static fields
.field private static final zzajR:Ljava/lang/Object;

.field private static zzajS:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final zzajT:Lcom/google/android/gms/internal/zznl$zze;

.field private static final zzajU:J


# instance fields
.field private zzaeN:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzajV:Lcom/google/android/gms/internal/zznl$zza;

.field private final zzajW:Ljava/lang/Object;

.field private zzajX:J

.field private final zzajY:J

.field private zzajZ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzaka:Ljava/lang/Runnable;

.field private final zzsd:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zznl;->zzajR:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zznl$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zznl$zze;-><init>(Lcom/google/android/gms/internal/zznl$1;)V

    sput-object v0, Lcom/google/android/gms/internal/zznl;->zzajT:Lcom/google/android/gms/internal/zznl$zze;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zznl;->zzajU:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/util/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zzh;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/zznl;->zzajU:J

    new-instance v1, Lcom/google/android/gms/internal/zznl$zzb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zznl$zzb;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zznl;-><init>(Lcom/google/android/gms/common/util/zze;JLcom/google/android/gms/internal/zznl$zza;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/util/zze;JLcom/google/android/gms/internal/zznl$zza;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznl;->zzajW:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zznl;->zzajX:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zznl;->zzajZ:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/internal/zznl;->zzaeN:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v0, Lcom/google/android/gms/internal/zznl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zznl$1;-><init>(Lcom/google/android/gms/internal/zznl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznl;->zzaka:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/zznl;->zzsd:Lcom/google/android/gms/common/util/zze;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zznl;->zzajY:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zznl;->zzajV:Lcom/google/android/gms/internal/zznl$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zznl;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznl;->zzaeN:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zznl$zzc;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/internal/zznl$zzc",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznl;->zzqQ()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zznl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zznl$3;-><init>(Lcom/google/android/gms/internal/zznl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zznl$zzc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zznl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznl;->zzajW:Ljava/lang/Object;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajP:Lcom/google/android/gms/clearcut/zzb$zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajO:Lcom/google/android/gms/internal/zzamo$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzamo$zzd;->zzcaM:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajO:Lcom/google/android/gms/internal/zzamo$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajP:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/zzb$zzb;->zzqP()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzamo$zzd;->zzcaM:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajQ:Lcom/google/android/gms/clearcut/zzb$zzb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajO:Lcom/google/android/gms/internal/zzamo$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzamo$zzd;->zzcaT:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajO:Lcom/google/android/gms/internal/zzamo$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajQ:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/zzb$zzb;->zzqP()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzamo$zzd;->zzcaT:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajO:Lcom/google/android/gms/internal/zzamo$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamj;->toByteArray(Lcom/google/android/gms/internal/zzamj;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzajM:[B

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zznl;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zznl$zzd;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznl;->zzajT:Lcom/google/android/gms/internal/zznl$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznl$zze;->zzqS()V

    new-instance v0, Lcom/google/android/gms/internal/zznl$zzd;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/zznl$zzd;-><init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v1, Lcom/google/android/gms/internal/zznl$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zznl$4;-><init>(Lcom/google/android/gms/internal/zznl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zznl$zzd;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zznl;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zznl;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznl;->zzsd:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zznl;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznl;->zzaeN:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private zzqQ()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zznl;->zzajR:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zznl;->zzajS:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zznl$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zznl$2;-><init>(Lcom/google/android/gms/internal/zznl;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zznl;->zzajS:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zznl;->zzajS:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic zzqR()Lcom/google/android/gms/internal/zznl$zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zznl;->zzajT:Lcom/google/android/gms/internal/zznl$zze;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zznl;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zznl$zzd;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zznl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zznl$zzc;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method
