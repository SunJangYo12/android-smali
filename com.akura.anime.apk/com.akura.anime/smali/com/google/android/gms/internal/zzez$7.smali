.class Lcom/google/android/gms/internal/zzez$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzez;->zza(Lcom/google/android/gms/internal/zzfa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCM:Lcom/google/android/gms/internal/zzez;

.field final synthetic zzCY:Lcom/google/android/gms/internal/zzez$zza;

.field final synthetic zzCZ:Lcom/google/android/gms/internal/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzez;Lcom/google/android/gms/internal/zzez$zza;Lcom/google/android/gms/internal/zzfa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzez$7;->zzCM:Lcom/google/android/gms/internal/zzez;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzez$7;->zzCY:Lcom/google/android/gms/internal/zzez$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzez$7;->zzCZ:Lcom/google/android/gms/internal/zzfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez$7;->zzCY:Lcom/google/android/gms/internal/zzez$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzez$7;->zzCZ:Lcom/google/android/gms/internal/zzfa;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzez$zza;->zzb(Lcom/google/android/gms/internal/zzfa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzjw;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
