.class final Lcom/google/android/gms/internal/zzii$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzii;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzcn;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzMT:Lcom/google/android/gms/internal/zzih;

.field final synthetic zzMU:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzMW:Lcom/google/android/gms/internal/zzik;

.field final synthetic zzqB:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzih;Landroid/content/Context;Lcom/google/android/gms/internal/zzik;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii$3;->zzMT:Lcom/google/android/gms/internal/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzii$3;->zzqB:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzii$3;->zzMW:Lcom/google/android/gms/internal/zzik;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzii$3;->zzMU:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii$3;->zzMT:Lcom/google/android/gms/internal/zzih;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzih;->zzMI:Lcom/google/android/gms/internal/zziq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$3;->zzqB:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii$3;->zzMW:Lcom/google/android/gms/internal/zzik;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzii$3;->zzMU:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzsx:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zziq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzik;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-void
.end method
