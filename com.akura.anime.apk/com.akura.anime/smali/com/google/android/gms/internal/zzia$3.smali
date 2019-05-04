.class Lcom/google/android/gms/internal/zzia$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzke;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzia;->zzhC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzke",
        "<",
        "Lcom/google/android/gms/internal/zzfg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzKt:Lcom/google/android/gms/internal/zzia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzia;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzia$3;->zzKt:Lcom/google/android/gms/internal/zzia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzfg;)V
    .locals 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia$3;->zzKt:Lcom/google/android/gms/internal/zzia;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzia;->zza(Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia$3;->zzKt:Lcom/google/android/gms/internal/zzia;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzia;->zza(Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia$3;->zzKt:Lcom/google/android/gms/internal/zzia;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzia;->zza(Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia$3;->zzKt:Lcom/google/android/gms/internal/zzia;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzia;->zza(Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/zzfg;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzej;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzgx;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzia$3;->zza(Lcom/google/android/gms/internal/zzfg;)V

    return-void
.end method
