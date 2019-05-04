.class public Lcom/google/android/gms/ads/internal/request/zzd$zzb;
.super Lcom/google/android/gms/ads/internal/request/zzd;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzd$zzb;
.implements Lcom/google/android/gms/common/internal/zzd$zzc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzLa:Lcom/google/android/gms/internal/zzkt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzkt",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final zzLb:Lcom/google/android/gms/ads/internal/request/zzc$zza;

.field protected zzLe:Lcom/google/android/gms/ads/internal/request/zze;

.field private zzLf:Z

.field private final zzpp:Ljava/lang/Object;

.field private zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzkt;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/zzkt",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/ads/internal/request/zzd;-><init>(Lcom/google/android/gms/internal/zzkt;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzpp:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLa:Lcom/google/android/gms/internal/zzkt;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLb:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzcu;->zzxz:Lcom/google/android/gms/internal/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLf:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcw()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkh;->zzjl()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/request/zze;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzRD:I

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/request/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLe:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->connect()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLe:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->zztj()V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzhs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaU(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzhS()Lcom/google/android/gms/internal/zzkc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkc;->zzhs()Ljava/lang/Object;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzka;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaU(Ljava/lang/String;)V

    return-void
.end method

.method public zzhQ()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLe:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLe:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLe:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->disconnect()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLf:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcw()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkh;->zzjm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLf:Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzhR()Lcom/google/android/gms/ads/internal/request/zzk;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLe:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->zzhV()Lcom/google/android/gms/ads/internal/request/zzk;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method zzhS()Lcom/google/android/gms/internal/zzkc;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzd$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLa:Lcom/google/android/gms/internal/zzkt;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzLb:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/zzd$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkt;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    return-object v0
.end method

.method public synthetic zzhs()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzhp()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
