.class public Lcom/google/android/gms/internal/zzkg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkg$zzc;,
        Lcom/google/android/gms/internal/zzkg$zzb;,
        Lcom/google/android/gms/internal/zzkg$zza;
    }
.end annotation


# static fields
.field private static zzQU:Lcom/google/android/gms/internal/zzl;

.field private static final zzQV:Ljava/lang/Object;

.field public static final zzQW:Lcom/google/android/gms/internal/zzkg$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzkg$zza",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkg;->zzQV:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzkg$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkg$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkg;->zzQW:Lcom/google/android/gms/internal/zzkg$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkg;->zzO(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    return-void
.end method

.method private static zzO(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzkg;->zzQV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzkg;->zzQU:Lcom/google/android/gms/internal/zzl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzac;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzkg;->zzQU:Lcom/google/android/gms/internal/zzl;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzkg;->zzQU:Lcom/google/android/gms/internal/zzl;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/zzkr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/zzkr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/zzkg$zzc;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/internal/zzkg$zzc;-><init>(Lcom/google/android/gms/internal/zzkg;Lcom/google/android/gms/internal/zzkg$1;)V

    new-instance v5, Lcom/google/android/gms/internal/zzkg$2;

    invoke-direct {v5, p0, p2, v4}, Lcom/google/android/gms/internal/zzkg$2;-><init>(Lcom/google/android/gms/internal/zzkg;Ljava/lang/String;Lcom/google/android/gms/internal/zzkg$zzc;)V

    new-instance v0, Lcom/google/android/gms/internal/zzkg$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzkg$3;-><init>(Lcom/google/android/gms/internal/zzkg;ILjava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;[BLjava/util/Map;)V

    sget-object v1, Lcom/google/android/gms/internal/zzkg;->zzQU:Lcom/google/android/gms/internal/zzl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzl;->zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    return-object v4
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzkg$zza;)Lcom/google/android/gms/internal/zzkr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzkg$zza",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzkr",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzkg$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzkg$zzc;-><init>(Lcom/google/android/gms/internal/zzkg;Lcom/google/android/gms/internal/zzkg$1;)V

    sget-object v1, Lcom/google/android/gms/internal/zzkg;->zzQU:Lcom/google/android/gms/internal/zzl;

    new-instance v2, Lcom/google/android/gms/internal/zzkg$zzb;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/zzkg$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzkg$zza;Lcom/google/android/gms/internal/zzm$zzb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzl;->zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    return-object v0
.end method

.method public zzb(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/zzkr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzkr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzkg;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    return-object v0
.end method
