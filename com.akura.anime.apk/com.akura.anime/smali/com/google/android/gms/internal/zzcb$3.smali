.class Lcom/google/android/gms/internal/zzcb$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkt$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzcc;Lcom/google/android/gms/internal/zzfj;)V
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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcb$3;->zztU:Lcom/google/android/gms/internal/zzcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb$3;->zztU:Lcom/google/android/gms/internal/zzcb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/internal/zzcb;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb$3;->zztU:Lcom/google/android/gms/internal/zzcb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcb;->zzc(Lcom/google/android/gms/internal/zzfk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb$3;->zztU:Lcom/google/android/gms/internal/zzcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcb;->zzcQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb$3;->zztU:Lcom/google/android/gms/internal/zzcb;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcb;->zzi(I)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzfk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcb$3;->zzb(Lcom/google/android/gms/internal/zzfk;)V

    return-void
.end method
