.class public Lcom/google/android/gms/ads/internal/formats/zze;
.super Lcom/google/android/gms/internal/zzdp$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/formats/zzh$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzAC:Ljava/lang/String;

.field private zzAD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzAE:Ljava/lang/String;

.field private zzAG:Ljava/lang/String;

.field private zzAK:Lcom/google/android/gms/ads/internal/formats/zza;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzAL:Lcom/google/android/gms/ads/internal/formats/zzh;

.field private zzAM:Lcom/google/android/gms/internal/zzdj;

.field private zzAN:Ljava/lang/String;

.field private zzpp:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzdj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V
    .locals 1
    .param p7    # Lcom/google/android/gms/ads/internal/formats/zza;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdp$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzpp:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAC:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAD:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAM:Lcom/google/android/gms/internal/zzdj;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAG:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAN:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAK:Lcom/google/android/gms/ads/internal/formats/zza;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/formats/zze;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAC:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAD:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAM:Lcom/google/android/gms/internal/zzdj;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAN:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAK:Lcom/google/android/gms/ads/internal/formats/zza;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzpp:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAL:Lcom/google/android/gms/ads/internal/formats/zzh;

    return-void
.end method

.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAN:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAE:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAG:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAC:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAD:Ljava/util/List;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAL:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzeO()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAL:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzeP()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public zzeQ()Lcom/google/android/gms/ads/internal/formats/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAK:Lcom/google/android/gms/ads/internal/formats/zza;

    return-object v0
.end method

.method public zzeR()Lcom/google/android/gms/internal/zzdj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zze;->zzAM:Lcom/google/android/gms/internal/zzdj;

    return-object v0
.end method
