.class Lcom/google/android/gms/internal/zzfd$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zzDo:Lcom/google/android/gms/ads/internal/zzl;

.field zzDp:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field zzDq:Lcom/google/android/gms/internal/zzez;

.field zzDr:J

.field zzDs:Z

.field zzDt:Z

.field final synthetic zzDu:Lcom/google/android/gms/internal/zzfd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfd;Lcom/google/android/gms/internal/zzey;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDu:Lcom/google/android/gms/internal/zzfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfd;->zza(Lcom/google/android/gms/internal/zzfd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzey;->zzac(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDo:Lcom/google/android/gms/ads/internal/zzl;

    new-instance v0, Lcom/google/android/gms/internal/zzez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzez;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDq:Lcom/google/android/gms/internal/zzez;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDq:Lcom/google/android/gms/internal/zzez;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDo:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzez;->zzc(Lcom/google/android/gms/ads/internal/zzl;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzfd;Lcom/google/android/gms/internal/zzey;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfd$zza;-><init>(Lcom/google/android/gms/internal/zzfd;Lcom/google/android/gms/internal/zzey;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDp:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-void
.end method


# virtual methods
.method zzfp()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDs:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDp:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDp:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzfb;->zzj(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDo:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDt:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDs:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzco()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDr:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$zza;->zzDu:Lcom/google/android/gms/internal/zzfd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfd;->zzb(Lcom/google/android/gms/internal/zzfd;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    goto :goto_1
.end method
