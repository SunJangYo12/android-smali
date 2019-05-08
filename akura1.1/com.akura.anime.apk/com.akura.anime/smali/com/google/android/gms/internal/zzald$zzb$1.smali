.class Lcom/google/android/gms/internal/zzald$zzb$1;
.super Lcom/google/android/gms/internal/zzald$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzald$zzb;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzald$zzc",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic zzbXm:Lcom/google/android/gms/internal/zzald$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzald$zzb;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzald$zzb$1;->zzbXm:Lcom/google/android/gms/internal/zzald$zzb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzald$zzb;->zzbXk:Lcom/google/android/gms/internal/zzald;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzald$zzc;-><init>(Lcom/google/android/gms/internal/zzald;Lcom/google/android/gms/internal/zzald$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzald$zzb$1;->zzVV()Lcom/google/android/gms/internal/zzald$zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzald$zzd;->zzbIt:Ljava/lang/Object;

    return-object v0
.end method
