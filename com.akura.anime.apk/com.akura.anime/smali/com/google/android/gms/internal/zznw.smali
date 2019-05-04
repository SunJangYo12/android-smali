.class public Lcom/google/android/gms/internal/zznw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final zzakT:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzamk:I

.field private zzaml:Lcom/google/android/gms/internal/zzoh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzakT:Lcom/google/android/gms/common/api/Api;

    iput p2, p0, Lcom/google/android/gms/internal/zznw;->zzamk:I

    return-void
.end method

.method private zzrM()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaml:Lcom/google/android/gms/internal/zzoh;

    const-string v1, "Callbacks must be attached to a GoogleApiClient instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznw;->zzrM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaml:Lcom/google/android/gms/internal/zzoh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzoh;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznw;->zzrM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaml:Lcom/google/android/gms/internal/zzoh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zznw;->zzakT:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zznw;->zzamk:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzoh;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznw;->zzrM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaml:Lcom/google/android/gms/internal/zzoh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzoh;->onConnectionSuspended(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzoh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzaml:Lcom/google/android/gms/internal/zzoh;

    return-void
.end method
