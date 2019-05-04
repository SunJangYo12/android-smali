.class public Lcom/google/android/gms/internal/zzoj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzoj$zzb;,
        Lcom/google/android/gms/internal/zzoj$zza;,
        Lcom/google/android/gms/internal/zzoj$zzd;,
        Lcom/google/android/gms/internal/zzoj$zzc;
    }
.end annotation


# static fields
.field private static zzanL:Lcom/google/android/gms/internal/zzoj;

.field private static final zzrs:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzaln:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private zzanK:J

.field private zzanM:I

.field private final zzanN:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzanO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzoj$zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzanP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zznq",
            "<*>;",
            "Lcom/google/android/gms/internal/zzoj$zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzanQ:Lcom/google/android/gms/internal/zzny;

.field private final zzanR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zznq",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzanS:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzanT:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzoj$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzanU:Lcom/google/android/gms/internal/zzoj$zzb;

.field private zzanj:J

.field private zzank:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzoj;->zzrs:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzoj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzoj;->zzank:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanj:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanK:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanM:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanN:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanO:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanQ:Lcom/google/android/gms/internal/zzny;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanR:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanS:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanT:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoj;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GoogleApiHandler"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoj;->zzaln:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/zzc;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanN:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzoj;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzoj;->zzanM:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/common/api/zzc;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/internal/zzoj;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/zzoj;->zzrs:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzoj;->zzanL:Lcom/google/android/gms/internal/zzoj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzoj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzoj;->zzanL:Lcom/google/android/gms/internal/zzoj;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzoj;->zzanL:Lcom/google/android/gms/internal/zzoj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/common/api/zzc;)I

    move-result v0

    sget-object v2, Lcom/google/android/gms/internal/zzoj;->zzanL:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zza(Lcom/google/android/gms/common/api/zzc;I)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzrn()Lcom/google/android/gms/internal/zznq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/zzoj$zzc;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzoj$zzc;-><init>(Lcom/google/android/gms/internal/zzoj;Lcom/google/android/gms/common/api/zzc;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoj$zzc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzoj$zzc;->zzbL(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzanO:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zza(Lcom/google/android/gms/internal/zzoj$zzc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanT:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/zzoj$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj;->zzanS:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/internal/zzoj$zza;-><init>(Lcom/google/android/gms/internal/zzoj;Lcom/google/android/gms/common/api/zzc;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanU:Lcom/google/android/gms/internal/zzoj$zzb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanU:Lcom/google/android/gms/internal/zzoj$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj$zzb;->zza(Lcom/google/android/gms/internal/zzoj$zzb;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzoj$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzanS:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj;->zzanT:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzoj$zzb;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanU:Lcom/google/android/gms/internal/zzoj$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanU:Lcom/google/android/gms/internal/zzoj$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj$zzb;->start()V

    :cond_2
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zznp;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanO:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/zznp;->zzalC:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoj$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzoj$zzc;->zzb(Lcom/google/android/gms/internal/zznp;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzoj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzoj;->zzank:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzoj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanj:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/internal/zzny;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzoj;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanR:Ljava/util/Set;

    return-object v0
.end method

.method private zze(IZ)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanO:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoj$zzc;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzanO:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzoj$zzc;->zzf(IZ)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onRelease received for unknown instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzoj;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanT:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzoj;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzoj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaln:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzoj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanK:J

    return-wide v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzoj;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanM:I

    return v0
.end method

.method public static zzsq()Lcom/google/android/gms/internal/zzoj;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzoj;->zzrs:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzoj;->zzanL:Lcom/google/android/gms/internal/zzoj;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzsr()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/gms/internal/zzoj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsv()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zza(Lcom/google/android/gms/internal/zzoj$zzc;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic zzss()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzoj;->zzrs:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v1, "GoogleApiManager"

    iget v2, p1, Landroid/os/Message;->what:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown message id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzns;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzns;)V

    :cond_0
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/common/api/zzc;I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj;->zzsr()V

    goto :goto_1

    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/zzoj;->zze(IZ)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zznp;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zznp;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanO:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanO:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoj$zzc;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x11

    const-string v4, "Error resolution was canceled by the user."

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzoj$zzc;->zza(Lcom/google/android/gms/internal/zzoj$zzc;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoj$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzb(Lcom/google/android/gms/internal/zzoj$zzc;)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoj$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzc(Lcom/google/android/gms/internal/zzoj$zzc;)V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoj$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzd(Lcom/google/android/gms/internal/zzoj$zzc;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzoj;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zznt$zza;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;I",
            "Lcom/google/android/gms/internal/zznt$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zznp$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getInstanceId()I

    move-result v1

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/gms/internal/zznp$zza;-><init>(IILcom/google/android/gms/internal/zznt$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzpd;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;I",
            "Lcom/google/android/gms/internal/zzpd",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zznp$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getInstanceId()I

    move-result v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/zznp$zzb;-><init>(IILcom/google/android/gms/internal/zzpd;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzns;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->zzrC()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzanP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzoj$zzc;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->cancel()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoj$zzc;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->zzakj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zznq;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsw()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsw()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zznq;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzoj$zzc;->zzb(Lcom/google/android/gms/internal/zzns;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzny;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzoj;->zzrs:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanQ:Lcom/google/android/gms/internal/zzny;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzanR:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

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

.method zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaln:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzaln:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzd(IZ)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public zzrA()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
