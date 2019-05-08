.class public final Lcom/google/android/gms/internal/zzsh;
.super Ljava/lang/Object;


# static fields
.field private static zzaIH:Lcom/google/android/gms/internal/zzsh;


# instance fields
.field private final zzaII:Lcom/google/android/gms/internal/zzse;

.field private final zzaIJ:Lcom/google/android/gms/internal/zzsf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsh;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsh;->zza(Lcom/google/android/gms/internal/zzsh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzse;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzse;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsh;->zzaII:Lcom/google/android/gms/internal/zzse;

    new-instance v0, Lcom/google/android/gms/internal/zzsf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsh;->zzaIJ:Lcom/google/android/gms/internal/zzsf;

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzsh;)V
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/zzsh;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/internal/zzsh;->zzaIH:Lcom/google/android/gms/internal/zzsh;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zzyD()Lcom/google/android/gms/internal/zzsh;
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/zzsh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzaIH:Lcom/google/android/gms/internal/zzsh;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzyE()Lcom/google/android/gms/internal/zzse;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzsh;->zzyD()Lcom/google/android/gms/internal/zzsh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsh;->zzaII:Lcom/google/android/gms/internal/zzse;

    return-object v0
.end method

.method public static zzyF()Lcom/google/android/gms/internal/zzsf;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzsh;->zzyD()Lcom/google/android/gms/internal/zzsh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsh;->zzaIJ:Lcom/google/android/gms/internal/zzsf;

    return-object v0
.end method
