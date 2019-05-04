.class Lcom/google/android/gms/internal/zzez$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzez$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzez$4;->zza(Lcom/google/android/gms/internal/zzdf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCT:Lcom/google/android/gms/internal/zzdf;

.field final synthetic zzCU:Lcom/google/android/gms/internal/zzez$4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzez$4;Lcom/google/android/gms/internal/zzdf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzez$4$1;->zzCU:Lcom/google/android/gms/internal/zzez$4;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzez$4$1;->zzCT:Lcom/google/android/gms/internal/zzdf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfa;->zzDc:Lcom/google/android/gms/internal/zzdg;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfa;->zzDc:Lcom/google/android/gms/internal/zzdg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzez$4$1;->zzCT:Lcom/google/android/gms/internal/zzdf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdf;)V

    :cond_0
    return-void
.end method
