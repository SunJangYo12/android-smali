.class Lcom/google/android/gms/internal/zzib$1;
.super Lcom/google/android/gms/internal/zzia$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzib;->zzaA(Ljava/lang/String;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKA:Lcom/google/android/gms/internal/zzko;

.field final synthetic zzKB:Ljava/lang/String;

.field final synthetic zzKC:Lcom/google/android/gms/internal/zzib;

.field final synthetic zzKz:Lcom/google/android/gms/internal/zzib$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzib;Lcom/google/android/gms/internal/zzib$zzb;Lcom/google/android/gms/internal/zzko;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzib$1;->zzKC:Lcom/google/android/gms/internal/zzib;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzib$1;->zzKz:Lcom/google/android/gms/internal/zzib$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzib$1;->zzKA:Lcom/google/android/gms/internal/zzko;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzib$1;->zzKB:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzia$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzfk;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzib$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzib$1$1;-><init>(Lcom/google/android/gms/internal/zzib$1;Lcom/google/android/gms/internal/zzfk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzib$1;->zzKz:Lcom/google/android/gms/internal/zzib$zzb;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzib$zzb;->zzKQ:Lcom/google/android/gms/internal/zzeh;

    const-string v1, "/nativeAdPreProcess"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzfk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzib$1;->zzKC:Lcom/google/android/gms/internal/zzib;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzib;->zza(Lcom/google/android/gms/internal/zzib;)Lcom/google/android/gms/internal/zzjn$zza;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ads_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzib$1;->zzKB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzfk;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while invoking javascript"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzjw;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$1;->zzKA:Lcom/google/android/gms/internal/zzko;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzko;->zzh(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzhK()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$1;->zzKA:Lcom/google/android/gms/internal/zzko;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzko;->zzh(Ljava/lang/Object;)V

    return-void
.end method
