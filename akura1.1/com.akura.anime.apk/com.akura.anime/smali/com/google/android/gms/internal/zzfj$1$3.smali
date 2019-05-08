.class Lcom/google/android/gms/internal/zzfj$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfj$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzDS:Lcom/google/android/gms/internal/zzfg;

.field final synthetic zzDT:Lcom/google/android/gms/internal/zzfj$1;

.field final synthetic zzDW:Lcom/google/android/gms/internal/zzkl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfj$1;Lcom/google/android/gms/internal/zzfg;Lcom/google/android/gms/internal/zzkl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDS:Lcom/google/android/gms/internal/zzfg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDW:Lcom/google/android/gms/internal/zzkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzla;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzla;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDR:Lcom/google/android/gms/internal/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfj;->zzc(Lcom/google/android/gms/internal/zzfj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaV(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDR:Lcom/google/android/gms/internal/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfj;->zze(Lcom/google/android/gms/internal/zzfj;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaV(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDR:Lcom/google/android/gms/internal/zzfj;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzfj;->zza(Lcom/google/android/gms/internal/zzfj;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDR:Lcom/google/android/gms/internal/zzfj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfj$1;->zzDP:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzfj;->zzb(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzd;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDS:Lcom/google/android/gms/internal/zzfg;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$3;->zzDW:Lcom/google/android/gms/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkl;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeh;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/zzfg;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
