.class public final Lcom/google/android/gms/internal/zzajz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzajz$zza;
    }
.end annotation


# instance fields
.field private final zzbVX:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzalv",
            "<*>;",
            "Lcom/google/android/gms/internal/zzajz$zza",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final zzbVY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzalv",
            "<*>;",
            "Lcom/google/android/gms/internal/zzakr",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzbVZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaks;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbWa:Lcom/google/android/gms/internal/zzakz;

.field private final zzbWb:Z

.field private final zzbWc:Z

.field private final zzbWd:Z

.field private final zzbWe:Z

.field final zzbWf:Lcom/google/android/gms/internal/zzakd;

.field final zzbWg:Lcom/google/android/gms/internal/zzakm;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v4, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzala;->zzbWT:Lcom/google/android/gms/internal/zzala;

    sget-object v2, Lcom/google/android/gms/internal/zzajx;->zzbVR:Lcom/google/android/gms/internal/zzajx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/google/android/gms/internal/zzakp;->zzbWu:Lcom/google/android/gms/internal/zzakp;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzajz;-><init>(Lcom/google/android/gms/internal/zzala;Lcom/google/android/gms/internal/zzajy;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzakp;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzala;Lcom/google/android/gms/internal/zzajy;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzakp;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzala;",
            "Lcom/google/android/gms/internal/zzajy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzakb",
            "<*>;>;ZZZZZZ",
            "Lcom/google/android/gms/internal/zzakp;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaks;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbVX:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbVY:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/zzajz$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzajz$1;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbWf:Lcom/google/android/gms/internal/zzakd;

    new-instance v0, Lcom/google/android/gms/internal/zzajz$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzajz$2;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbWg:Lcom/google/android/gms/internal/zzakm;

    new-instance v0, Lcom/google/android/gms/internal/zzakz;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzakz;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzajz;->zzbWb:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzajz;->zzbWd:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzajz;->zzbWc:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzajz;->zzbWe:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYW:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalp;->zzbXD:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYD:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYs:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYm:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYo:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYq:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzakp;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzalu;->zza(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/zzakr;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/google/android/gms/internal/zzajz;->zzaV(Z)Lcom/google/android/gms/internal/zzakr;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzalu;->zza(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/zzakr;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/google/android/gms/internal/zzajz;->zzaW(Z)Lcom/google/android/gms/internal/zzakr;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzalu;->zza(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/zzakr;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYx:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYz:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYF:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYH:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/android/gms/internal/zzalu;->zzbYB:Lcom/google/android/gms/internal/zzakr;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzalu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzakr;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/android/gms/internal/zzalu;->zzbYC:Lcom/google/android/gms/internal/zzakr;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzalu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzakr;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYJ:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYL:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYP:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYU:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYN:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYj:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalk;->zzbXD:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYS:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzals;->zzbXD:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalr;->zzbXD:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYQ:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzali;->zzbXD:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYh:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzalj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzajz;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzalj;-><init>(Lcom/google/android/gms/internal/zzakz;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzalo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzajz;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    invoke-direct {v1, v2, p5}, Lcom/google/android/gms/internal/zzalo;-><init>(Lcom/google/android/gms/internal/zzakz;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzall;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzajz;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzall;-><init>(Lcom/google/android/gms/internal/zzakz;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzalu;->zzbYX:Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/zzalq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzajz;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    invoke-direct {v1, v2, p2, p1}, Lcom/google/android/gms/internal/zzalq;-><init>(Lcom/google/android/gms/internal/zzakz;Lcom/google/android/gms/internal/zzajy;Lcom/google/android/gms/internal/zzala;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbVZ:Ljava/util/List;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzakp;)Lcom/google/android/gms/internal/zzakr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzakp;",
            ")",
            "Lcom/google/android/gms/internal/zzakr",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzakp;->zzbWu:Lcom/google/android/gms/internal/zzakp;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzalu;->zzbYt:Lcom/google/android/gms/internal/zzakr;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzajz$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzajz$5;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzajz;D)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzajz;->zzo(D)V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzalw;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->zzWa()Lcom/google/android/gms/internal/zzalx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzalx;->zzbZH:Lcom/google/android/gms/internal/zzalx;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzakg;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzakg;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzalz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzako;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzako;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzakg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzakg;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private zzaV(Z)Lcom/google/android/gms/internal/zzakr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/zzakr",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzalu;->zzbYv:Lcom/google/android/gms/internal/zzakr;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzajz$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzajz$3;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    goto :goto_0
.end method

.method private zzaW(Z)Lcom/google/android/gms/internal/zzakr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/zzakr",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzalu;->zzbYu:Lcom/google/android/gms/internal/zzakr;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzajz$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzajz$4;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    goto :goto_0
.end method

.method private zzo(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xa8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzajz;->zzbWb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzajz;->zzbVZ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzajz;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaks;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzaks;",
            "Lcom/google/android/gms/internal/zzalv",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzakr",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzajz;->zzbVZ:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzajz;->zzbVZ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaks;

    if-nez v2, :cond_2

    if-ne v0, p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/google/android/gms/internal/zzaks;->zza(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GSON cannot serialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzalv",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzakr",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbVY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzakr;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbVX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbVX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzajz$zza;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/zzajz$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzajz$zza;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbVZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/zzaks;->zza(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzajz$zza;->zza(Lcom/google/android/gms/internal/zzakr;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzajz;->zzbVY:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzajz;->zzbVX:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "GSON cannot handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzajz;->zzbVX:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public zza(Ljava/io/Writer;)Lcom/google/android/gms/internal/zzaly;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbWd:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaly;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaly;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzajz;->zzbWe:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaly;->setIndent(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzajz;->zzbWb:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaly;->zzba(Z)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzakf;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzakf;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzako;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzakf;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzalf;->zzp(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzakf;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzakf;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzako;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzalm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzalm;-><init>(Lcom/google/android/gms/internal/zzakf;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzalw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzalw;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzalw;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakg;,
            Lcom/google/android/gms/internal/zzako;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->isLenient()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzalw;->setLenient(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->zzWa()Lcom/google/android/gms/internal/zzalx;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzalv;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzakr;->zzb(Lcom/google/android/gms/internal/zzalw;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzalw;->setLenient(Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzalw;->setLenient(Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/zzako;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzako;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzalw;->setLenient(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/zzako;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzako;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzako;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzako;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public zza(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakg;,
            Lcom/google/android/gms/internal/zzako;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzalw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzalw;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzalw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzalw;)V

    return-object v1
.end method

.method public zza(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzako;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzajz;->zza(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzakf;Lcom/google/android/gms/internal/zzaly;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakg;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaly;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaly;->setLenient(Z)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaly;->zzWw()Z

    move-result v2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbWc:Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaly;->zzaZ(Z)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaly;->zzWx()Z

    move-result v3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzajz;->zzbWb:Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaly;->zzba(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzalg;->zzb(Lcom/google/android/gms/internal/zzakf;Lcom/google/android/gms/internal/zzaly;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzaly;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzaly;->zzaZ(Z)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzaly;->zzba(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/google/android/gms/internal/zzakg;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzakg;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzaly;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzaly;->zzaZ(Z)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzaly;->zzba(Z)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzakf;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakg;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzalg;->zza(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Ljava/io/Writer;)Lcom/google/android/gms/internal/zzaly;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzakf;Lcom/google/android/gms/internal/zzaly;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaly;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakg;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzalv;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaly;->isLenient()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzaly;->setLenient(Z)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaly;->zzWw()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzajz;->zzbWc:Z

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/zzaly;->zzaZ(Z)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaly;->zzWx()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzajz;->zzbWb:Z

    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/zzaly;->zzba(Z)V

    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/internal/zzakr;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzaly;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzaly;->zzaZ(Z)V

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/zzaly;->zzba(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/google/android/gms/internal/zzakg;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzakg;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzaly;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzaly;->zzaZ(Z)V

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/zzaly;->zzba(Z)V

    throw v0
.end method

.method public zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakg;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zzalg;->zza(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Ljava/io/Writer;)Lcom/google/android/gms/internal/zzaly;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzaly;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzakg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzakg;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzaH(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzakh;->zzbWr:Lcom/google/android/gms/internal/zzakh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzajz;->zzb(Lcom/google/android/gms/internal/zzakf;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzajz;->zzc(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzakf;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzakf;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzako;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzajz;->zza(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzalf;->zzp(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzakr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzakr",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzalv;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzajz;->zza(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    return-object v0
.end method
