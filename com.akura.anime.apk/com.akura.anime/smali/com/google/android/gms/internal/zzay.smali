.class public Lcom/google/android/gms/internal/zzay;
.super Lcom/google/android/gms/internal/zzbm;


# static fields
.field private static final zznS:Ljava/lang/Object;

.field private static volatile zzoM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzay;->zzoM:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzay;->zznS:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzav;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzbm;-><init>(Lcom/google/android/gms/internal/zzav;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;II)V

    return-void
.end method


# virtual methods
.method protected zzaQ()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzay;->zzoY:Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;

    const-string v1, "E"

    iput-object v1, v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;->cerSignal:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzay;->zzoM:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzay;->zznS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzay;->zzoM:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzay;->zzoU:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzay;->zznO:Lcom/google/android/gms/internal/zzav;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzav;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzay;->zzoM:Ljava/lang/String;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzay;->zzoY:Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;

    sget-object v1, Lcom/google/android/gms/internal/zzay;->zzoM:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzah;->zza([BZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;->cerSignal:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
