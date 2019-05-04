.class Lcom/google/android/gms/internal/zzfj$zzd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkt$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfj$zzd;->zzfy()V
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
        "Lcom/google/android/gms/internal/zzfg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzEh:Lcom/google/android/gms/internal/zzfj$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfj$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$zzd$3;->zzEh:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzfg;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfj$zzd$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzfj$zzd$3$1;-><init>(Lcom/google/android/gms/internal/zzfj$zzd$3;Lcom/google/android/gms/internal/zzfg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzka;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfj$zzd$3;->zza(Lcom/google/android/gms/internal/zzfg;)V

    return-void
.end method
