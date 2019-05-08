.class Lcom/google/android/gms/internal/zzod$zzb$1;
.super Lcom/google/android/gms/internal/zzoh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzod$zzb;->zzrX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamY:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzamZ:Lcom/google/android/gms/internal/zzod$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzod$zzb;Lcom/google/android/gms/internal/zzog;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzod$zzb$1;->zzamZ:Lcom/google/android/gms/internal/zzod$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzod$zzb$1;->zzamY:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzoh$zza;-><init>(Lcom/google/android/gms/internal/zzog;)V

    return-void
.end method


# virtual methods
.method public zzrX()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod$zzb$1;->zzamZ:Lcom/google/android/gms/internal/zzod$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzod$zzb;->zzamV:Lcom/google/android/gms/internal/zzod;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzod$zzb$1;->zzamY:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzod;->zza(Lcom/google/android/gms/internal/zzod;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
