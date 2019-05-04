.class Lcom/google/android/gms/internal/zzbv$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zztB:Lcom/google/android/gms/internal/zzbv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbv$2;->zztB:Lcom/google/android/gms/internal/zzbv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzla;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzla;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv$2;->zztB:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbv;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv$2;->zztB:Lcom/google/android/gms/internal/zzbv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzla;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzbv;->zza(Landroid/view/View;Ljava/util/Map;)V

    goto :goto_0
.end method
