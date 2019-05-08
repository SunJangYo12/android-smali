.class Lcom/google/android/gms/internal/zzib$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzib;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzib$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKC:Lcom/google/android/gms/internal/zzib;

.field final synthetic zzKE:Lcom/google/android/gms/internal/zzko;

.field final synthetic zzKF:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzib;Lcom/google/android/gms/internal/zzko;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzib$2;->zzKC:Lcom/google/android/gms/internal/zzib;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzib$2;->zzKE:Lcom/google/android/gms/internal/zzko;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzib$2;->zzKF:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzib$2;->zzKE:Lcom/google/android/gms/internal/zzko;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$2;->zzKC:Lcom/google/android/gms/internal/zzib;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzib;->zzb(Lcom/google/android/gms/internal/zzib;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzbV()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzib$2;->zzKF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzko;->zzh(Ljava/lang/Object;)V

    return-void
.end method
