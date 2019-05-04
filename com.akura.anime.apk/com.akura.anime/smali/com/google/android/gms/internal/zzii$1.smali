.class final Lcom/google/android/gms/internal/zzii$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzii;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzcn;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzMT:Lcom/google/android/gms/internal/zzih;

.field final synthetic zzMU:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzMV:Landroid/os/Bundle;

.field final synthetic zzqB:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzih;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii$1;->zzMT:Lcom/google/android/gms/internal/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzii$1;->zzqB:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzii$1;->zzMU:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzii$1;->zzMV:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzii$1;->zzaV()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzaV()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii$1;->zzMT:Lcom/google/android/gms/internal/zzih;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzih;->zzMO:Lcom/google/android/gms/internal/zzim;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$1;->zzqB:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii$1;->zzMU:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzLj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzii$1;->zzMV:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzim;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method
