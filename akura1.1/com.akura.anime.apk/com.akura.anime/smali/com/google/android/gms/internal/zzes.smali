.class public Lcom/google/android/gms/internal/zzes;
.super Lcom/google/android/gms/internal/zzjv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field final zzBb:Lcom/google/android/gms/internal/zzla;

.field final zzCu:Lcom/google/android/gms/internal/zzeu;

.field private final zzCv:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/internal/zzeu;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzes;->zzBb:Lcom/google/android/gms/internal/zzla;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzes;->zzCu:Lcom/google/android/gms/internal/zzeu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzes;->zzCv:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcD()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzes;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzes;->zzCu:Lcom/google/android/gms/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeu;->abort()V

    return-void
.end method

.method public zzbQ()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzes;->zzCu:Lcom/google/android/gms/internal/zzeu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzes;->zzCv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeu;->zzY(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzka;->zzQu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzes$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzes$1;-><init>(Lcom/google/android/gms/internal/zzes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzka;->zzQu:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzes$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzes$1;-><init>(Lcom/google/android/gms/internal/zzes;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
