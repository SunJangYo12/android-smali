.class Lcom/google/android/gms/ads/internal/zzg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/zzjp;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzqA:Z

.field final synthetic zzqB:Landroid/content/Context;

.field final synthetic zzqw:Lcom/google/android/gms/ads/internal/zzg;

.field final synthetic zzqx:Lcom/google/android/gms/internal/zzfj;

.field final synthetic zzqy:Ljava/lang/String;

.field final synthetic zzqz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Lcom/google/android/gms/internal/zzfj;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzqw:Lcom/google/android/gms/ads/internal/zzg;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzqx:Lcom/google/android/gms/internal/zzfj;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzqy:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzqz:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzqA:Z

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzqB:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzqx:Lcom/google/android/gms/internal/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj;->zzfu()Lcom/google/android/gms/internal/zzfj$zzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzg$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzg$2$1;-><init>(Lcom/google/android/gms/ads/internal/zzg$2;)V

    new-instance v2, Lcom/google/android/gms/internal/zzkt$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzkt$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfj$zzc;->zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V

    return-void
.end method
