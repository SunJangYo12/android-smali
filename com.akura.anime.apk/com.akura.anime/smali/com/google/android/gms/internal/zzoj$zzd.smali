.class Lcom/google/android/gms/internal/zzoj$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzd$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation


# instance fields
.field private final zzakV:Lcom/google/android/gms/internal/zznq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zznq",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic zzanV:Lcom/google/android/gms/internal/zzoj;

.field private final zzanY:Lcom/google/android/gms/common/api/Api$zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzoj;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zznq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zznq",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoj$zzd;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoj$zzd;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoj$zzd;->zzakV:Lcom/google/android/gms/internal/zznq;

    return-void
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzd;->zzanY:Lcom/google/android/gms/common/api/Api$zze;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj$zzd;->zzanV:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zzg(Lcom/google/android/gms/internal/zzoj;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj$zzd;->zzakV:Lcom/google/android/gms/internal/zznq;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoj$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzoj$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
