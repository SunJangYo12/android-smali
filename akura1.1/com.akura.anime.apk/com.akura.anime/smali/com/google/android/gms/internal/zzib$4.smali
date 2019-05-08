.class Lcom/google/android/gms/internal/zzib$4;
.super Lcom/google/android/gms/internal/zzia$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzib;->zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKC:Lcom/google/android/gms/internal/zzib;

.field final synthetic zzKH:Lcom/google/android/gms/internal/zzeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzib;Lcom/google/android/gms/internal/zzeh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzib$4;->zzKC:Lcom/google/android/gms/internal/zzib;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzib$4;->zzKH:Lcom/google/android/gms/internal/zzeh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzia$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzfk;)V
    .locals 2

    const-string v0, "/nativeAdCustomClick"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzib$4;->zzKH:Lcom/google/android/gms/internal/zzeh;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V

    return-void
.end method
