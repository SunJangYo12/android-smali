.class public final Lcom/google/android/gms/internal/zzaka;
.super Ljava/lang/Object;


# instance fields
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

.field private zzbWj:Lcom/google/android/gms/internal/zzala;

.field private zzbWk:Lcom/google/android/gms/internal/zzakp;

.field private zzbWl:Lcom/google/android/gms/internal/zzajy;

.field private final zzbWm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzakb",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzbWn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaks;",
            ">;"
        }
    .end annotation
.end field

.field private zzbWo:I

.field private zzbWp:I

.field private zzbWq:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzala;->zzbWT:Lcom/google/android/gms/internal/zzala;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWj:Lcom/google/android/gms/internal/zzala;

    sget-object v0, Lcom/google/android/gms/internal/zzakp;->zzbWu:Lcom/google/android/gms/internal/zzakp;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWk:Lcom/google/android/gms/internal/zzakp;

    sget-object v0, Lcom/google/android/gms/internal/zzajx;->zzbVR:Lcom/google/android/gms/internal/zzajx;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWl:Lcom/google/android/gms/internal/zzajy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWm:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbVZ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWn:Ljava/util/List;

    iput v1, p0, Lcom/google/android/gms/internal/zzaka;->zzbWo:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaka;->zzbWp:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWq:Z

    return-void
.end method

.method private zza(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaks;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzaju;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaju;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalv;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakq;->zza(Lcom/google/android/gms/internal/zzalv;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalv;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakq;->zza(Lcom/google/android/gms/internal/zzalv;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalv;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakq;->zza(Lcom/google/android/gms/internal/zzalv;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaju;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzaju;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public zzVx()Lcom/google/android/gms/internal/zzaka;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWq:Z

    return-object p0
.end method

.method public zzVy()Lcom/google/android/gms/internal/zzajz;
    .locals 12

    const/4 v4, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbVZ:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWn:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzaka;->zzbWo:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaka;->zzbWp:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;IILjava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/zzajz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzbWj:Lcom/google/android/gms/internal/zzala;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzbWl:Lcom/google/android/gms/internal/zzajy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzbWm:Ljava/util/Map;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzaka;->zzbWq:Z

    iget-object v10, p0, Lcom/google/android/gms/internal/zzaka;->zzbWk:Lcom/google/android/gms/internal/zzakp;

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzajz;-><init>(Lcom/google/android/gms/internal/zzala;Lcom/google/android/gms/internal/zzajy;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzakp;Ljava/util/List;)V

    return-object v0
.end method

.method public zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaka;
    .locals 2

    instance-of v0, p2, Lcom/google/android/gms/internal/zzakn;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzake;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzakb;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzakr;

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzakx;->zzaj(Z)V

    instance-of v0, p2, Lcom/google/android/gms/internal/zzakb;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzbWm:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/zzakb;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v0, p2, Lcom/google/android/gms/internal/zzakn;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/google/android/gms/internal/zzake;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzalv;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaka;->zzbVZ:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzakq;->zzb(Lcom/google/android/gms/internal/zzalv;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, Lcom/google/android/gms/internal/zzakr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbVZ:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzalv;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v1

    check-cast p2, Lcom/google/android/gms/internal/zzakr;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzalu;->zza(Lcom/google/android/gms/internal/zzalv;Lcom/google/android/gms/internal/zzakr;)Lcom/google/android/gms/internal/zzaks;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs zza([Lcom/google/android/gms/internal/zzajv;)Lcom/google/android/gms/internal/zzaka;
    .locals 5

    const/4 v4, 0x1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaka;->zzbWj:Lcom/google/android/gms/internal/zzala;

    invoke-virtual {v3, v2, v4, v4}, Lcom/google/android/gms/internal/zzala;->zza(Lcom/google/android/gms/internal/zzajv;ZZ)Lcom/google/android/gms/internal/zzala;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaka;->zzbWj:Lcom/google/android/gms/internal/zzala;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs zzc([I)Lcom/google/android/gms/internal/zzaka;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWj:Lcom/google/android/gms/internal/zzala;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzala;->zzd([I)Lcom/google/android/gms/internal/zzala;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaka;->zzbWj:Lcom/google/android/gms/internal/zzala;

    return-object p0
.end method
