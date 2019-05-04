.class public final Lcom/google/android/gms/internal/zzalo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzalo$zza;
    }
.end annotation


# instance fields
.field private final zzbWa:Lcom/google/android/gms/internal/zzakz;

.field private final zzbXP:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzakz;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalo;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzalo;->zzbXP:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzajz;Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzakr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzajz;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/android/gms/internal/zzakr",
            "<*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzalu;->zzbYl:Lcom/google/android/gms/internal/zzakr;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/zzalv;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzalo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzalo;->zzbXP:Z

    return v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzajz;",
            "Lcom/google/android/gms/internal/zzalv",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzakr",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzalv;->zzWm()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzalv;->zzWl()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzaky;->zzf(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaky;->zzb(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzalo;->zza(Lcom/google/android/gms/internal/zzajz;Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v4

    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalv;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalo;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzakz;->zzb(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzale;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzalo$zza;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzalo$zza;-><init>(Lcom/google/android/gms/internal/zzalo;Lcom/google/android/gms/internal/zzajz;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzakr;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzakr;Lcom/google/android/gms/internal/zzale;)V

    goto :goto_0
.end method
