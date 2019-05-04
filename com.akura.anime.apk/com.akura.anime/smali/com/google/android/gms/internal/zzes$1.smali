.class Lcom/google/android/gms/internal/zzes$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzes;->zzbQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCw:Lcom/google/android/gms/internal/zzes;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzes;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzes$1;->zzCw:Lcom/google/android/gms/internal/zzes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcD()Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzes$1;->zzCw:Lcom/google/android/gms/internal/zzes;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzet;->zzb(Lcom/google/android/gms/internal/zzes;)V

    return-void
.end method
