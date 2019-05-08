.class public Lcom/google/android/gms/internal/zzfj$zzd;
.super Lcom/google/android/gms/internal/zzku;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzku",
        "<",
        "Lcom/google/android/gms/internal/zzfg;",
        ">;"
    }
.end annotation


# instance fields
.field private zzDM:Lcom/google/android/gms/internal/zzke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzke",
            "<",
            "Lcom/google/android/gms/internal/zzfg;",
            ">;"
        }
    .end annotation
.end field

.field private zzEe:Z

.field private zzEf:I

.field private final zzpp:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzke;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzke",
            "<",
            "Lcom/google/android/gms/internal/zzfg;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzku;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzpp:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzDM:Lcom/google/android/gms/internal/zzke;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEe:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfj$zzd;)Lcom/google/android/gms/internal/zzke;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzDM:Lcom/google/android/gms/internal/zzke;

    return-object v0
.end method


# virtual methods
.method public zzfv()Lcom/google/android/gms/internal/zzfj$zzc;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzfj$zzc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfj$zzc;-><init>(Lcom/google/android/gms/internal/zzfj$zzd;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzpp:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzfj$zzd$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzfj$zzd$1;-><init>(Lcom/google/android/gms/internal/zzfj$zzd;Lcom/google/android/gms/internal/zzfj$zzc;)V

    new-instance v3, Lcom/google/android/gms/internal/zzfj$zzd$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzfj$zzd$2;-><init>(Lcom/google/android/gms/internal/zzfj$zzd;Lcom/google/android/gms/internal/zzfj$zzc;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/zzfj$zzd;->zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzai(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzfw()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    if-lt v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzai(Z)V

    const-string v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->v(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfj$zzd;->zzfy()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzfx()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzai(Z)V

    const-string v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEe:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfj$zzd;->zzfy()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzfy()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzai(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEe:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzfj$zzd;->zzEf:I

    if-nez v0, :cond_1

    const-string v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfj$zzd$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfj$zzd$3;-><init>(Lcom/google/android/gms/internal/zzfj$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzkt$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzkt$zzb;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzfj$zzd;->zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->v(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
