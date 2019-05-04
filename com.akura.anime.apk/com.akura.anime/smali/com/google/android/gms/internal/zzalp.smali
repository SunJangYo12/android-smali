.class public final Lcom/google/android/gms/internal/zzalp;
.super Lcom/google/android/gms/internal/zzakr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzakr",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzbXD:Lcom/google/android/gms/internal/zzaks;


# instance fields
.field private final zzbWz:Lcom/google/android/gms/internal/zzajz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzalp$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalp$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzalp;->zzbXD:Lcom/google/android/gms/internal/zzaks;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzajz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalp;->zzbWz:Lcom/google/android/gms/internal/zzajz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzalp;-><init>(Lcom/google/android/gms/internal/zzajz;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWk()Lcom/google/android/gms/internal/zzaly;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalp;->zzbWz:Lcom/google/android/gms/internal/zzajz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajz;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzalp;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWi()Lcom/google/android/gms/internal/zzaly;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaly;->zzWj()Lcom/google/android/gms/internal/zzaly;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzakr;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzalw;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->zzWa()Lcom/google/android/gms/internal/zzalx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzalp$2;->zzbXT:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzalx;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalp;->zzb(Lcom/google/android/gms/internal/zzalw;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->endArray()V

    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/zzald;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzald;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->beginObject()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalp;->zzb(Lcom/google/android/gms/internal/zzalw;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->endObject()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalw;->nextNull()V

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
