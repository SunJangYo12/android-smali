.class Lcom/google/android/gms/internal/zznu$zza$1;
.super Lcom/google/android/gms/internal/zzol$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznu$zza;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzalV:Landroid/app/Dialog;

.field final synthetic zzalW:Lcom/google/android/gms/internal/zznu$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznu$zza;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznu$zza$1;->zzalW:Lcom/google/android/gms/internal/zznu$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznu$zza$1;->zzalV:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzol$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzrG()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznu$zza$1;->zzalW:Lcom/google/android/gms/internal/zznu$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zznu$zza;->zzalU:Lcom/google/android/gms/internal/zznu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznu;->zzrF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zznu$zza$1;->zzalV:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznu$zza$1;->zzalV:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
