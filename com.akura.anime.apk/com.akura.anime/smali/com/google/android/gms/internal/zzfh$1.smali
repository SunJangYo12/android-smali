.class Lcom/google/android/gms/internal/zzfh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfh;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzaq;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzDA:Lcom/google/android/gms/internal/zzaq;

.field final synthetic zzDB:Ljava/lang/String;

.field final synthetic zzDC:Lcom/google/android/gms/internal/zzfh;

.field final synthetic zzDy:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field final synthetic zzDz:Lcom/google/android/gms/internal/zzfh$zza;

.field final synthetic zzqB:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfh;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzfh$zza;Lcom/google/android/gms/internal/zzaq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDC:Lcom/google/android/gms/internal/zzfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfh$1;->zzqB:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDy:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDz:Lcom/google/android/gms/internal/zzfh$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDA:Lcom/google/android/gms/internal/zzaq;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDC:Lcom/google/android/gms/internal/zzfh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh$1;->zzqB:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDy:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDz:Lcom/google/android/gms/internal/zzfh$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDA:Lcom/google/android/gms/internal/zzaq;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zzfh;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzfh$zza;Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfh$1;->zzDB:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfg;->zzag(Ljava/lang/String;)V

    return-void
.end method
