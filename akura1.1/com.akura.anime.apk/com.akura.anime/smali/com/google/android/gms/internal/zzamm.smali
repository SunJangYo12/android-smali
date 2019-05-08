.class public final Lcom/google/android/gms/internal/zzamm;
.super Ljava/lang/Object;


# static fields
.field public static final zzcal:[I

.field public static final zzcam:[J

.field public static final zzcan:[F

.field public static final zzcao:[D

.field public static final zzcap:[Z

.field public static final zzcaq:[Ljava/lang/String;

.field public static final zzcar:[[B

.field public static final zzcas:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzamm;->zzcal:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzamm;->zzcam:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zzamm;->zzcan:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zzamm;->zzcao:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzamm;->zzcap:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzamm;->zzcaq:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzamm;->zzcar:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zzamm;->zzcas:[B

    return-void
.end method

.method public static zzJ(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzamb;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamb;->zznU(I)Z

    move-result v0

    return v0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/zzamb;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamb;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamb;->zznU(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamb;->zzWC()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamb;->zznU(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzamb;->zznY(I)V

    return v0
.end method

.method static zzon(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static zzoo(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
