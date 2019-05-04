.class public final Lcom/google/android/gms/internal/zzbo;
.super Ljava/lang/Object;


# instance fields
.field private final zzpt:Lcom/google/android/gms/internal/zzbs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzbr;->zzb(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzbs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpt:Lcom/google/android/gms/internal/zzbs;

    return-void
.end method


# virtual methods
.method public zza(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpt:Lcom/google/android/gms/internal/zzbs;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbs;->zzd(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public zzc(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbp;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbo;->zzpt:Lcom/google/android/gms/internal/zzbs;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzbs;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbp;-><init>()V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public zzd(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbp;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbo;->zzpt:Lcom/google/android/gms/internal/zzbs;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzbs;->zzb(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbp;-><init>()V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzx(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method
