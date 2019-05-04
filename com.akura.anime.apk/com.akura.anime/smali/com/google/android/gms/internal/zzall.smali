.class public final Lcom/google/android/gms/internal/zzall;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaks;


# instance fields
.field private final zzbWa:Lcom/google/android/gms/internal/zzakz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzakz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzall;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzakz;Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;Lcom/google/android/gms/internal/zzakt;)Lcom/google/android/gms/internal/zzakr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzakz;",
            "Lcom/google/android/gms/internal/zzajz;",
            "Lcom/google/android/gms/internal/zzalv",
            "<*>;",
            "Lcom/google/android/gms/internal/zzakt;",
            ")",
            "Lcom/google/android/gms/internal/zzakr",
            "<*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzakt;->value()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalv;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakz;->zzb(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzale;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzale;->zzVT()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzakr;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/google/android/gms/internal/zzaks;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalv;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzakz;->zzb(Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzale;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzale;->zzVT()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaks;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzaks;->zza(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;
    .locals 2
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

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzalv;->zzWl()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzakt;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzakt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzall;->zzbWa:Lcom/google/android/gms/internal/zzakz;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzakz;Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzalv;Lcom/google/android/gms/internal/zzakt;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    goto :goto_0
.end method
