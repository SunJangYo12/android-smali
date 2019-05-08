.class public Lcom/google/android/gms/internal/zzfj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfj$zza;,
        Lcom/google/android/gms/internal/zzfj$zze;,
        Lcom/google/android/gms/internal/zzfj$zzc;,
        Lcom/google/android/gms/internal/zzfj$zzd;,
        Lcom/google/android/gms/internal/zzfj$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzDK:Ljava/lang/String;

.field private zzDL:Lcom/google/android/gms/internal/zzke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzke",
            "<",
            "Lcom/google/android/gms/internal/zzfg;",
            ">;"
        }
    .end annotation
.end field

.field private zzDM:Lcom/google/android/gms/internal/zzke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzke",
            "<",
            "Lcom/google/android/gms/internal/zzfg;",
            ">;"
        }
    .end annotation
.end field

.field private zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

.field private zzDO:I

.field private final zzpp:Ljava/lang/Object;

.field private final zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzpp:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDO:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfj;->zzDK:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfj;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzfj$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfj$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDL:Lcom/google/android/gms/internal/zzke;

    new-instance v0, Lcom/google/android/gms/internal/zzfj$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfj$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDM:Lcom/google/android/gms/internal/zzke;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/internal/zzke;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzke",
            "<",
            "Lcom/google/android/gms/internal/zzfg;",
            ">;",
            "Lcom/google/android/gms/internal/zzke",
            "<",
            "Lcom/google/android/gms/internal/zzfg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfj;->zzDL:Lcom/google/android/gms/internal/zzke;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfj;->zzDM:Lcom/google/android/gms/internal/zzke;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfj;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzfj;->zzDO:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzd;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfj$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfj;->zzDM:Lcom/google/android/gms/internal/zzke;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfj$zzd;-><init>(Lcom/google/android/gms/internal/zzke;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzfj$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/zzfj$1;-><init>(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzaq;Lcom/google/android/gms/internal/zzfj$zzd;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzka;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzfj$zzd;)Lcom/google/android/gms/internal/zzfj$zzd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzfj;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzqP:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzfj;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzpp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzfj;)Lcom/google/android/gms/internal/zzke;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDL:Lcom/google/android/gms/internal/zzke;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzfj;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDO:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzfj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzfj;)Lcom/google/android/gms/internal/zzfj$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfi;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzaq;)V

    return-object v0
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzd;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfj;->zza(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfj$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzfj$2;-><init>(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzfj$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzfj$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzfj$3;-><init>(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzfj$zzd;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfj$zzd;->zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzc;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfj;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDO:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfj;->zzb(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->zzfv()Lcom/google/android/gms/internal/zzfj$zzc;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDO:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->zzfv()Lcom/google/android/gms/internal/zzfj$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDO:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDO:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfj;->zzb(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->zzfv()Lcom/google/android/gms/internal/zzfj$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDO:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->zzfv()Lcom/google/android/gms/internal/zzfj$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj;->zzDN:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->zzfv()Lcom/google/android/gms/internal/zzfj$zzc;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public zzfu()Lcom/google/android/gms/internal/zzfj$zzc;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfj;->zzc(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzfj$zzc;

    move-result-object v0

    return-object v0
.end method
