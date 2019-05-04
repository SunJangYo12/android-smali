.class final Lcom/google/android/gms/internal/zzou$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaow:Lcom/google/android/gms/internal/zzou;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzou;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzou$zza;->zzaow:Lcom/google/android/gms/internal/zzou;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzaj(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzou$zza;->zzaow:Lcom/google/android/gms/internal/zzou;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzou$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzou;->zzb(Lcom/google/android/gms/internal/zzou$zzb;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
