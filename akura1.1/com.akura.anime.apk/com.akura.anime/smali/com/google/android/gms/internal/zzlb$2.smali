.class Lcom/google/android/gms/internal/zzlb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlb;->zzgr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzSp:Lcom/google/android/gms/internal/zzlb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlb$2;->zzSp:Lcom/google/android/gms/internal/zzlb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$2;->zzSp:Lcom/google/android/gms/internal/zzlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlb;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$2;->zzSp:Lcom/google/android/gms/internal/zzlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlb;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjB()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzgr()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$2;->zzSp:Lcom/google/android/gms/internal/zzlb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlb;->zzd(Lcom/google/android/gms/internal/zzlb;)Lcom/google/android/gms/internal/zzlb$zzb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$2;->zzSp:Lcom/google/android/gms/internal/zzlb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlb;->zzd(Lcom/google/android/gms/internal/zzlb;)Lcom/google/android/gms/internal/zzlb$zzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlb$zzb;->zzbH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$2;->zzSp:Lcom/google/android/gms/internal/zzlb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/internal/zzlb;Lcom/google/android/gms/internal/zzlb$zzb;)Lcom/google/android/gms/internal/zzlb$zzb;

    :cond_1
    return-void
.end method
