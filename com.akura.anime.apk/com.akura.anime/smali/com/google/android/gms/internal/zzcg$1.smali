.class Lcom/google/android/gms/internal/zzcg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcg;->zze(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzur:Landroid/view/View;

.field final synthetic zzus:Lcom/google/android/gms/internal/zzcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcg;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcg$1;->zzus:Lcom/google/android/gms/internal/zzcg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcg$1;->zzur:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg$1;->zzus:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg$1;->zzur:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcg;->zzf(Landroid/view/View;)V

    return-void
.end method
