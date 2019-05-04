.class Lcom/google/android/gms/internal/zzhr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhr;->zzhp()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJO:Lcom/google/android/gms/internal/zzhr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhr$1;->zzJO:Lcom/google/android/gms/internal/zzhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhr$1;->zzJO:Lcom/google/android/gms/internal/zzhr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhr;->zza(Lcom/google/android/gms/internal/zzhr;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Timed out waiting for WebView to finish loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhr$1;->zzJO:Lcom/google/android/gms/internal/zzhr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhr;->cancel()V

    goto :goto_0
.end method
