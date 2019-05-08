.class Lcom/google/android/gms/internal/zzakz$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzale;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzakz;->zzb(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzale",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzbWN:Ljava/lang/reflect/Type;

.field final synthetic zzbWO:Lcom/google/android/gms/internal/zzakz;

.field final synthetic zzbWR:Lcom/google/android/gms/internal/zzakb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzakz;Lcom/google/android/gms/internal/zzakb;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakz$5;->zzbWO:Lcom/google/android/gms/internal/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakz$5;->zzbWR:Lcom/google/android/gms/internal/zzakb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakz$5;->zzbWN:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzVT()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakz$5;->zzbWR:Lcom/google/android/gms/internal/zzakb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakz$5;->zzbWN:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
