.class Lcom/google/android/gms/internal/zzoj$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field private final zzakV:Lcom/google/android/gms/internal/zznq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zznq",
            "<TO;>;"
        }
    .end annotation
.end field

.field final synthetic zzanV:Lcom/google/android/gms/internal/zzoj;

.field private final zzanX:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zznp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzanY:Lcom/google/android/gms/common/api/Api$zze;

.field private final zzanZ:Lcom/google/android/gms/common/api/Api$zzb;

.field private zzani:Z

.field private final zzaoa:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzpf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaob:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzns;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaoc:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zznt$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzaod:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzoj;Lcom/google/android/gms/common/api/zzc;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanX:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaob:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoc:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaod:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzoj$zzc;->zzb(Lcom/google/android/gms/common/api/zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/zzag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    check-cast v0, Lcom/google/android/gms/common/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzag;->zztX()Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanZ:Lcom/google/android/gms/common/api/Api$zzb;

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->zzrn()Lcom/google/android/gms/internal/zznq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanZ:Lcom/google/android/gms/common/api/Api$zzb;

    goto :goto_0
.end method

.method private connect()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzrg()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zzk(Lcom/google/android/gms/internal/zzoj;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoj;->zzi(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zzh(Lcom/google/android/gms/internal/zzoj;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zzk(Lcom/google/android/gms/internal/zzoj;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoj;->zzk(Lcom/google/android/gms/internal/zzoj;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoj$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    new-instance v1, Lcom/google/android/gms/internal/zzoj$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzoj$zzd;-><init>(Lcom/google/android/gms/internal/zzoj;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zznq;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V

    goto :goto_0
.end method

.method private resume()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzani:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->connect()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzoj$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->connect()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzoj$zzc;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzoj$zzc;->zzz(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/common/api/zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzrl()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzrf()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzrd()Lcom/google/android/gms/common/api/Api$zzh;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/common/internal/zzag;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api$zzh;->zzri()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzg;->zzau(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzrm()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/Api$zzh;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v7

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzag;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zzg;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzrl()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzrc()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzg;->zzau(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzrm()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzoj$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->resume()V

    return-void
.end method

.method private zzc(Lcom/google/android/gms/internal/zznp;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zznp;->zza(Landroid/util/SparseArray;)V

    iget v1, p1, Lcom/google/android/gms/internal/zznp;->zzagd:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoc:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/zznp;->zzalC:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoc:Landroid/util/SparseArray;

    iget v3, p1, Lcom/google/android/gms/internal/zznp;->zzalC:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v1

    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zznp$zza;

    move-object v1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zznp$zza;->zzalD:Lcom/google/android/gms/internal/zznt$zza;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzot;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzot;->zzsG()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanZ:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zznp;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener registration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p1, Lcom/google/android/gms/internal/zznp;->zzagd:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoc:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/zznp;->zzalC:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zznp$zza;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/zznp$zza;->zzalD:Lcom/google/android/gms/internal/zznt$zza;

    check-cast v2, Lcom/google/android/gms/internal/zzot;

    if-eqz v1, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzot;->zzsG()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener unregistration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_3
    const-string v1, "GoogleApiManager"

    const-string v2, "Received call to unregister a listener without a matching registration call."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_2
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzoj$zzc;->onConnectionSuspended(I)V

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzoj$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsh()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzoj$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsz()V

    return-void
.end method

.method private zzj(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaob:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzns;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zznq;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaob:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private zzsh()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzani:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zzi(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoj;->zzh(Lcom/google/android/gms/internal/zzoj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzz(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private zzsx()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzani:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzani:Z

    :cond_0
    return-void
.end method

.method private zzsy()V
    .locals 4

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zzj(Lcom/google/android/gms/internal/zzoj;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private zzsz()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoc:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpf;->zzsM()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsy()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_1
.end method

.method private zzz(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanX:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznp;->zzv(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanX:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method


# virtual methods
.method isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsv()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzakj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsx()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoc:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoc:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoc:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznt$zza;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanZ:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zznt$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoj$zzc;->onConnectionSuspended(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsu()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsy()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzoj$zzc;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanX:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaod:Lcom/google/android/gms/common/ConnectionResult;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzoj;->zzss()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zzd(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/internal/zzny;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zze(Lcom/google/android/gms/internal/zzoj;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zzd(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/internal/zzny;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/zzny;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzoj;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzani:Z

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzani:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zzb(Lcom/google/android/gms/internal/zzoj;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zznq;->zzrz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzz(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsv()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzani:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zzb(Lcom/google/android/gms/internal/zzoj;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzoj;->zzc(Lcom/google/android/gms/internal/zzoj;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;I)I

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zznp;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzoj$zzc;->zzc(Lcom/google/android/gms/internal/zznp;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsy()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanX:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaod:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaod:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaod:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoj$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->connect()V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzns;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaob:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzbL(I)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/zzpf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zznq;->zzre()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzpf;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/Api$zze;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public zzf(IZ)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanX:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznp;

    iget v2, v0, Lcom/google/android/gms/internal/zznp;->zzalC:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/zznp;->zzagd:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznp;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpf;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoc:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zzf(Lcom/google/android/gms/internal/zzoj;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaoa:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanX:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzsx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zzg(Lcom/google/android/gms/internal/zzoj;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzoj;->zzss()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zze(Lcom/google/android/gms/internal/zzoj;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzsu()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanX:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzanX:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznp;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzoj$zzc;->zzc(Lcom/google/android/gms/internal/zznp;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzsv()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaod:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method zzsw()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzc;->zzaod:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method
