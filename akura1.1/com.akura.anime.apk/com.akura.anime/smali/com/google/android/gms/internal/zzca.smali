.class public Lcom/google/android/gms/internal/zzca;
.super Lcom/google/android/gms/internal/zzbv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final zztQ:Lcom/google/android/gms/internal/zzfk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzcc;Lcom/google/android/gms/internal/zzfk;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzbv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzcc;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/zzca;->zztQ:Lcom/google/android/gms/internal/zzfk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzca;->zztQ:Lcom/google/android/gms/internal/zzfk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzca;->zzc(Lcom/google/android/gms/internal/zzfk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzca;->zzcQ()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzca;->zzi(I)V

    const-string v1, "Tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzca;->zztl:Lcom/google/android/gms/internal/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbx;->zzdh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaU(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected destroy()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzca;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzbv;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzca;->zztQ:Lcom/google/android/gms/internal/zzfk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzca;->zzd(Lcom/google/android/gms/internal/zzfk;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzb(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzca;->zztQ:Lcom/google/android/gms/internal/zzfk;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzfk;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzcS()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzca;->destroy()V

    return-void
.end method

.method protected zzcY()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
