.class Lcom/google/android/gms/internal/zzald$zza$1;
.super Lcom/google/android/gms/internal/zzald$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzald$zza;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzald$zzc",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic zzbXl:Lcom/google/android/gms/internal/zzald$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzald$zza;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzald$zza$1;->zzbXl:Lcom/google/android/gms/internal/zzald$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzald$zza;->zzbXk:Lcom/google/android/gms/internal/zzald;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzald$zzc;-><init>(Lcom/google/android/gms/internal/zzald;Lcom/google/android/gms/internal/zzald$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzald$zza$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzald$zza$1;->zzVV()Lcom/google/android/gms/internal/zzald$zzd;

    move-result-object v0

    return-object v0
.end method
