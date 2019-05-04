.class public Lcom/google/android/gms/internal/zzjq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjy$zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzCy:Ljava/lang/String;

.field private zzNH:Z

.field private zzNx:Z

.field private zzNy:Z

.field private final zzPE:Ljava/lang/String;

.field private final zzPF:Lcom/google/android/gms/internal/zzjr;

.field private zzPG:Ljava/math/BigInteger;

.field private final zzPH:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzPI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzjt;",
            ">;"
        }
    .end annotation
.end field

.field private zzPJ:Z

.field private zzPK:I

.field private zzPL:Lcom/google/android/gms/internal/zzcw;

.field private zzPM:Lcom/google/android/gms/internal/zzcg;

.field private zzPN:Ljava/lang/String;

.field private zzPO:Ljava/lang/Boolean;

.field private zzPP:Z

.field private zzPQ:Z

.field private zzPR:Z

.field private zzPS:Ljava/lang/String;

.field private zzPT:J

.field private zzpX:Lcom/google/android/gms/internal/zzby;

.field private final zzpp:Ljava/lang/Object;

.field private zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzru:Z

.field private zzul:Lcom/google/android/gms/internal/zzcf;

.field private zzum:Lcom/google/android/gms/internal/zzce;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzka;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPG:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPH:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPI:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPJ:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjq;->zzNx:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPK:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjq;->zzru:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzPL:Lcom/google/android/gms/internal/zzcw;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjq;->zzNy:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzul:Lcom/google/android/gms/internal/zzcf;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzPM:Lcom/google/android/gms/internal/zzcg;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzum:Lcom/google/android/gms/internal/zzce;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzPO:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPP:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPQ:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjq;->zzNH:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPR:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPS:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPT:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzka;->zzja()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPE:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzjr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzjr;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPF:Lcom/google/android/gms/internal/zzjr;

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzRE:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/internal/zzqi;->zzaCo:Lcom/google/android/gms/internal/zzqi$zzb;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzqi;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqi$zzb;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqi;->zzxi()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzqi$zza; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzjw;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPE:Ljava/lang/String;

    return-object v0
.end method

.method public zzD(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNy:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzjy;->zze(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjq;->zzNy:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjq;->zzz(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcg;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "start fetching content..."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzjw;->zzaV(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcg;->zzdt()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzE(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjq;->zzPR:Z

    return-void
.end method

.method public zzF(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjq;->zzPP:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjs;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPF:Lcom/google/android/gms/internal/zzjr;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/zzjr;->zze(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPI:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPI:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjt;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPH:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjo;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPH:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzjs;->zza(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPH:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public zza(Lcom/google/android/gms/internal/zzjo;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPH:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzjt;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPI:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Ljava/lang/Thread;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzif;->zza(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzif;

    return-void
.end method

.method public zzaL(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjq;->zzPN:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzjy;->zzf(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzru:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjq;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzjy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzjy;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzjy;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzjy;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzjy;->zze(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzjy;->zzf(Landroid/content/Context;Lcom/google/android/gms/internal/zzjy$zzb;)Ljava/util/concurrent/Future;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjq;->zza(Ljava/lang/Thread;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzka;->zzg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzCy:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzvh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPQ:Z

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzby;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjq;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzka;->zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzfj;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzby;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzfj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzpX:Lcom/google/android/gms/internal/zzby;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjq;->zziR()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcu()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzs(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzru:Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzjq;->zzPO:Ljava/lang/Boolean;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzif;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzif;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzif;->zza(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public zzb(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjo;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPH:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNx:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzjq;->zzNx:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzjy;->zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzd(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzco()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPT:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjq;->zzPS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjq;->zzPT:J

    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzjy;->zza(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzd(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNH:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzjq;->zzNH:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzjy;->zzf(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzg(Landroid/os/Bundle;)V
    .locals 3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNx:Z

    const-string v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPK:I

    const-string v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjq;->zzD(Z)V

    :cond_0
    const-string v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPN:Ljava/lang/String;

    :cond_1
    const-string v0, "auto_collect_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "auto_collect_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNH:Z

    const-string v0, "app_settings_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "app_settings_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPS:Ljava/lang/String;

    const-string v0, "app_settings_last_update_ms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "app_settings_last_update_ms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_4
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPT:J

    monitor-exit v2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNx:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPK:I

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNH:Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPS:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziD()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNy:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziE()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPG:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzPG:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzPG:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziF()Lcom/google/android/gms/internal/zzjr;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPF:Lcom/google/android/gms/internal/zzjr;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziG()Lcom/google/android/gms/internal/zzcw;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPL:Lcom/google/android/gms/internal/zzcw;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziH()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPJ:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzjq;->zzPJ:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziI()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNx:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPQ:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziJ()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzCy:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziK()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPN:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziL()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPO:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziM()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzNH:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPR:Z

    return v0
.end method

.method public zziO()Lcom/google/android/gms/internal/zzjp;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzjp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzPS:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjq;->zzPT:J

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/gms/internal/zzjp;-><init>(Ljava/lang/String;J)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zziP()Lcom/google/android/gms/internal/zzby;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzpX:Lcom/google/android/gms/internal/zzby;

    return-object v0
.end method

.method public zziQ()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPP:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zziR()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzcv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzcv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcp()Lcom/google/android/gms/internal/zzcx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcx;->zza(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/internal/zzcw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjq;->zzPL:Lcom/google/android/gms/internal/zzcw;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Cannot initialize CSI reporter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzjw;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzz(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcg;
    .locals 10

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzcu;->zzxI:Lcom/google/android/gms/internal/zzcq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcq;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzva()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjq;->zziD()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzjq;->zzpp:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_3

    :cond_2
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzul:Lcom/google/android/gms/internal/zzcf;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/google/android/gms/internal/zzcf;

    if-nez v1, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    move-object v1, v0

    :cond_4
    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/zzcf;-><init>(Landroid/app/Application;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzul:Lcom/google/android/gms/internal/zzcf;

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzum:Lcom/google/android/gms/internal/zzce;

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/zzce;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzce;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzum:Lcom/google/android/gms/internal/zzce;

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPM:Lcom/google/android/gms/internal/zzcg;

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/zzcg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjq;->zzul:Lcom/google/android/gms/internal/zzcf;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjq;->zzum:Lcom/google/android/gms/internal/zzce;

    new-instance v5, Lcom/google/android/gms/internal/zzif;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzjq;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzjq;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/zzif;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzcg;-><init>(Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/internal/zzif;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPM:Lcom/google/android/gms/internal/zzcg;

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPM:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcg;->zzdt()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjq;->zzPM:Lcom/google/android/gms/internal/zzcg;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
