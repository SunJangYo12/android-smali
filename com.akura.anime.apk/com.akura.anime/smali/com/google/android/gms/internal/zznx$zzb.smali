.class Lcom/google/android/gms/internal/zznx$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzoo$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzamy:Lcom/google/android/gms/internal/zznx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zznx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zznx;Lcom/google/android/gms/internal/zznx$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zznx$zzb;-><init>(Lcom/google/android/gms/internal/zznx;)V

    return-void
.end method


# virtual methods
.method public zzc(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzc(Lcom/google/android/gms/internal/zznx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzf(Lcom/google/android/gms/internal/zznx;)Lcom/google/android/gms/internal/zzoh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzoh;->onConnectionSuspended(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zznx;->zzb(Lcom/google/android/gms/internal/zznx;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzb(Lcom/google/android/gms/internal/zznx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzk(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->zzakj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zznx;->zzb(Lcom/google/android/gms/internal/zznx;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzb(Lcom/google/android/gms/internal/zznx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznx$zzb;->zzamy:Lcom/google/android/gms/internal/zznx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/internal/zznx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
