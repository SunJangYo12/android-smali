.class Lcom/google/android/gms/internal/zzcb$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkt$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcb;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzkt$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzfk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zztU:Lcom/google/android/gms/internal/zzcb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcb$6;->zztU:Lcom/google/android/gms/internal/zzcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb$6;->zztU:Lcom/google/android/gms/internal/zzcb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcb;->zzd(Lcom/google/android/gms/internal/zzfk;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzfk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcb$6;->zzb(Lcom/google/android/gms/internal/zzfk;)V

    return-void
.end method
