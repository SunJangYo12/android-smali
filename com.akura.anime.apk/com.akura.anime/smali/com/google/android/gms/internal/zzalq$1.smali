.class Lcom/google/android/gms/internal/zzalq$1;
.super Lcom/google/android/gms/internal/zzalq$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzalq;->zza(Lcom/google/android/gms/internal/zzajz;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/android/gms/internal/zzalv;ZZ)Lcom/google/android/gms/internal/zzalq$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final zzbXU:Lcom/google/android/gms/internal/zzakr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzakr",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic zzbXV:Lcom/google/android/gms/internal/zzajz;

.field final synthetic zzbXW:Ljava/lang/reflect/Field;

.field final synthetic zzbXX:Lcom/google/android/gms/internal/zzalv;

.field final synthetic zzbXY:Z

.field final synthetic zzbXZ:Lcom/google/android/gms/internal/zzalq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalq;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzajz;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzalv;Z)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXZ:Lcom/google/android/gms/internal/zzalq;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXV:Lcom/google/android/gms/internal/zzajz;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXW:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXX:Lcom/google/android/gms/internal/zzalv;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXY:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzalq$zzb;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXZ:Lcom/google/android/gms/internal/zzalq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXV:Lcom/google/android/gms/internal/zzajz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXW:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXX:Lcom/google/android/gms/internal/zzalv;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzalq;->zza(Lcom/google/android/gms/internal/zzalq;Lcom/google/android/gms/internal/zzajz;Ljava/lang/reflect/Field;Lcom/google/android/gms/internal/zzalv;)Lcom/google/android/gms/internal/zzakr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXU:Lcom/google/android/gms/internal/zzakr;

    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzalw;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXU:Lcom/google/android/gms/internal/zzakr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzakr;->zzb(Lcom/google/android/gms/internal/zzalw;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXY:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXW:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXW:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzalt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXV:Lcom/google/android/gms/internal/zzajz;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXU:Lcom/google/android/gms/internal/zzakr;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXX:Lcom/google/android/gms/internal/zzalv;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzalv;->zzWm()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzalt;-><init>(Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzakr;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzakr;->zza(Lcom/google/android/gms/internal/zzaly;Ljava/lang/Object;)V

    return-void
.end method

.method public zzaO(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbYb:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzalq$1;->zzbXW:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
