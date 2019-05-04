.class Lcom/google/android/gms/internal/zzfj$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfj;->zzb(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzDR:Lcom/google/android/gms/internal/zzfj;

.field final synthetic zzDY:Lcom/google/android/gms/internal/zzfj$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzfj$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$3;->zzDR:Lcom/google/android/gms/internal/zzfj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfj$3;->zzDY:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$3;->zzDR:Lcom/google/android/gms/internal/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfj;->zzc(Lcom/google/android/gms/internal/zzfj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$3;->zzDR:Lcom/google/android/gms/internal/zzfj;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzfj;->zza(Lcom/google/android/gms/internal/zzfj;I)I

    const-string v0, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$3;->zzDY:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->zzfx()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
