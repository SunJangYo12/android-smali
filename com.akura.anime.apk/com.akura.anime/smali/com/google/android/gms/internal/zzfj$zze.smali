.class public Lcom/google/android/gms/internal/zzfj$zze;
.super Lcom/google/android/gms/internal/zzku;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzku",
        "<",
        "Lcom/google/android/gms/internal/zzfk;",
        ">;"
    }
.end annotation


# instance fields
.field private zzEk:Lcom/google/android/gms/internal/zzfj$zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfj$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzku;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$zze;->zzEk:Lcom/google/android/gms/internal/zzfj$zzc;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zze;->zzEk:Lcom/google/android/gms/internal/zzfj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzc;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfj$zze;->zzEk:Lcom/google/android/gms/internal/zzfj$zzc;

    return-void
.end method

.method public getStatus()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zze;->zzEk:Lcom/google/android/gms/internal/zzfj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzc;->getStatus()I

    move-result v0

    return v0
.end method

.method public reject()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zze;->zzEk:Lcom/google/android/gms/internal/zzfj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzc;->reject()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzkt$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzfk;",
            ">;",
            "Lcom/google/android/gms/internal/zzkt$zza;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zze;->zzEk:Lcom/google/android/gms/internal/zzfj$zzc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfj$zzc;->zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzfk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zze;->zzEk:Lcom/google/android/gms/internal/zzfj$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfj$zzc;->zzf(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic zzf(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzfk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfj$zze;->zzf(Lcom/google/android/gms/internal/zzfk;)V

    return-void
.end method
