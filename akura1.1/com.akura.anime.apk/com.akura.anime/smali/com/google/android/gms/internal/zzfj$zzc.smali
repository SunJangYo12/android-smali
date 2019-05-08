.class public Lcom/google/android/gms/internal/zzfj$zzc;
.super Lcom/google/android/gms/internal/zzku;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzku",
        "<",
        "Lcom/google/android/gms/internal/zzfk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzEb:Lcom/google/android/gms/internal/zzfj$zzd;

.field private zzEc:Z

.field private final zzpp:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfj$zzd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzku;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfj$zzc;->zzpp:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$zzc;->zzEb:Lcom/google/android/gms/internal/zzfj$zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfj$zzc;)Lcom/google/android/gms/internal/zzfj$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zzc;->zzEb:Lcom/google/android/gms/internal/zzfj$zzd;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfj$zzc;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfj$zzc;->zzEc:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfj$zzc;->zzEc:Z

    new-instance v0, Lcom/google/android/gms/internal/zzfj$zzc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfj$zzc$1;-><init>(Lcom/google/android/gms/internal/zzfj$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzkt$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzkt$zzb;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzfj$zzc;->zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfj$zzc$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfj$zzc$2;-><init>(Lcom/google/android/gms/internal/zzfj$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzfj$zzc$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzfj$zzc$3;-><init>(Lcom/google/android/gms/internal/zzfj$zzc;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzfj$zzc;->zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
