.class Lcom/google/android/gms/internal/zzka$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzka;->zzg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQz:Lcom/google/android/gms/internal/zzka;

.field final synthetic zzqB:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzka;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzka$2;->zzQz:Lcom/google/android/gms/internal/zzka;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzka$2;->zzqB:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$2;->zzQz:Lcom/google/android/gms/internal/zzka;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzka;->zza(Lcom/google/android/gms/internal/zzka;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$2;->zzQz:Lcom/google/android/gms/internal/zzka;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzka$2;->zzQz:Lcom/google/android/gms/internal/zzka;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzka$2;->zzqB:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzka;->zzD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzka;->zza(Lcom/google/android/gms/internal/zzka;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$2;->zzQz:Lcom/google/android/gms/internal/zzka;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzka;->zza(Lcom/google/android/gms/internal/zzka;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
