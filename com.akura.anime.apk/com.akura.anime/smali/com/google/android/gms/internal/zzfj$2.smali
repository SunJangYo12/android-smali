.class Lcom/google/android/gms/internal/zzfj$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkt$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfj;->zzb(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzkt$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzfg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzDR:Lcom/google/android/gms/internal/zzfj;

.field final synthetic zzDY:Lcom/google/android/gms/internal/zzfj$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzfj$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDR:Lcom/google/android/gms/internal/zzfj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDY:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzfg;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDR:Lcom/google/android/gms/internal/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfj;->zzc(Lcom/google/android/gms/internal/zzfj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDR:Lcom/google/android/gms/internal/zzfj;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzfj;->zza(Lcom/google/android/gms/internal/zzfj;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDR:Lcom/google/android/gms/internal/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfj;->zzg(Lcom/google/android/gms/internal/zzfj;)Lcom/google/android/gms/internal/zzfj$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDY:Lcom/google/android/gms/internal/zzfj$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDR:Lcom/google/android/gms/internal/zzfj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfj;->zzg(Lcom/google/android/gms/internal/zzfj;)Lcom/google/android/gms/internal/zzfj$zzd;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDR:Lcom/google/android/gms/internal/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfj;->zzg(Lcom/google/android/gms/internal/zzfj;)Lcom/google/android/gms/internal/zzfj$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->zzfx()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDR:Lcom/google/android/gms/internal/zzfj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfj$2;->zzDY:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzfj;->zza(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzfj$zzd;)Lcom/google/android/gms/internal/zzfj$zzd;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfj$2;->zza(Lcom/google/android/gms/internal/zzfg;)V

    return-void
.end method
