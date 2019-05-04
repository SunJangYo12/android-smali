.class public final Lcom/google/android/gms/internal/zzft;
.super Lcom/google/android/gms/internal/zzgc$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private zzET:Lcom/google/android/gms/internal/zzfv$zza;

.field private zzEU:Lcom/google/android/gms/internal/zzfs;

.field private final zzpp:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgc$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfs;->zzbu()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfs;->zzbv()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzfv$zza;->zzw(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdImpression()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfs;->zzbz()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfs;->zzbw()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLoaded()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzfv$zza;->zzw(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfs;->zzby()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdOpened()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfs;->zzbx()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzfs;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/zzfs;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzfv$zza;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgd;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzft;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/zzfv$zza;->zza(ILcom/google/android/gms/internal/zzgd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzET:Lcom/google/android/gms/internal/zzfv$zza;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzEU:Lcom/google/android/gms/internal/zzfs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfs;->zzby()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
