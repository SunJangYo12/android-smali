.class public abstract Lcom/google/android/gms/internal/zzoi;
.super Ljava/lang/Object;


# static fields
.field private static final zzanJ:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-instance v1, Lcom/google/android/gms/internal/zzpt;

    const-string v2, "GAC_Executor"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzpt;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzoi;->zzanJ:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zzsp()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzoi;->zzanJ:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
