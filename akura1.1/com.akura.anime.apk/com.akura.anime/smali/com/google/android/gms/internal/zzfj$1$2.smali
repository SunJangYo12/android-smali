.class Lcom/google/android/gms/internal/zzfj$1$2;
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


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfj$1;Lcom/google/android/gms/internal/zzfg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDS:Lcom/google/android/gms/internal/zzfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzla;Ljava/util/Map;)V
    .locals 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDR:Lcom/google/android/gms/internal/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfj;->zzc(Lcom/google/android/gms/internal/zzfj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDQ:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDQ:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDR:Lcom/google/android/gms/internal/zzfj;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzfj;->zza(Lcom/google/android/gms/internal/zzfj;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDR:Lcom/google/android/gms/internal/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfj;->zzd(Lcom/google/android/gms/internal/zzfj;)Lcom/google/android/gms/internal/zzke;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDS:Lcom/google/android/gms/internal/zzfg;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzke;->zzc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDQ:Lcom/google/android/gms/internal/zzfj$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDS:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzfj$zzd;->zzf(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$1;->zzDR:Lcom/google/android/gms/internal/zzfj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfj$1$2;->zzDT:Lcom/google/android/gms/internal/zzfj$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfj$1;->zzDQ:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzfj;->zza(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzfj$zzd;)Lcom/google/android/gms/internal/zzfj$zzd;

    const-string v0, "Successfully loaded JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->v(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
