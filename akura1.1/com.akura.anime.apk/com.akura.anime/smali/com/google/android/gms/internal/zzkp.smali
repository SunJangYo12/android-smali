.class public Lcom/google/android/gms/internal/zzkp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzkr",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzRF:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzRH:Lcom/google/android/gms/internal/zzks;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzRF:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzks;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzks;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzRH:Lcom/google/android/gms/internal/zzks;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzRH:Lcom/google/android/gms/internal/zzks;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzks;->zzjt()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzRF:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzRF:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzb(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzRH:Lcom/google/android/gms/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzks;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method
