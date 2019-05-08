.class Lcom/google/android/gms/internal/zzoc$2;
.super Lcom/google/android/gms/internal/zzoh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzoc;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamD:Lcom/google/android/gms/internal/zzoc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoc;Lcom/google/android/gms/internal/zzog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoc$2;->zzamD:Lcom/google/android/gms/internal/zzoc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzoh$zza;-><init>(Lcom/google/android/gms/internal/zzog;)V

    return-void
.end method


# virtual methods
.method public zzrX()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc$2;->zzamD:Lcom/google/android/gms/internal/zzoc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoc;->zza(Lcom/google/android/gms/internal/zzoc;)Lcom/google/android/gms/internal/zzoh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzoh;->zzanG:Lcom/google/android/gms/internal/zzoo$zza;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzoo$zza;->zzk(Landroid/os/Bundle;)V

    return-void
.end method
