.class public final Lcom/google/android/gms/internal/zzbr;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzbt;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzpy:Lcom/google/android/gms/internal/zzbr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbr;->zzpy:Lcom/google/android/gms/internal/zzbr;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.adshield.AdShieldCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzbs;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzqV()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbr;->zzpy:Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbr;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzbs;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbq;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    :cond_1
    return-object v0
.end method

.method private zzc(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzbs;
    .locals 2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzD(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbr;->zzaI(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbt;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzbt;->zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/zzd;)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbs$zza;->zzd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbs;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbr;->zzaI(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbt;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzbt;->zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/zzd;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbt;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbt$zza;->zze(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbt;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbr;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbt;

    move-result-object v0

    return-object v0
.end method
