.class Lcom/google/android/gms/internal/zzlb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlb;->zzjU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzSp:Lcom/google/android/gms/internal/zzlb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlb$1;->zzSp:Lcom/google/android/gms/internal/zzlb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$1;->zzSp:Lcom/google/android/gms/internal/zzlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlb;->zzSk:Lcom/google/android/gms/internal/zzjh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$1;->zzSp:Lcom/google/android/gms/internal/zzlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlb;->zzSk:Lcom/google/android/gms/internal/zzjh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlb$1;->zzSp:Lcom/google/android/gms/internal/zzlb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzlb;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzla;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjh;->zzk(Landroid/view/View;)V

    :cond_0
    return-void
.end method
