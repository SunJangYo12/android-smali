.class public final Lcom/google/android/gms/internal/zzamf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final zzcac:Lcom/google/android/gms/internal/zzamg;


# instance fields
.field private mSize:I

.field private zzcad:Z

.field private zzcae:[I

.field private zzcaf:[Lcom/google/android/gms/internal/zzamg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzamg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzamg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzamf;->zzcac:Lcom/google/android/gms/internal/zzamg;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzamf;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcad:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamf;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/zzamg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    iput v2, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    return-void
.end method

.method private gc()V
    .locals 8

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v5, v1

    sget-object v7, Lcom/google/android/gms/internal/zzamf;->zzcac:Lcom/google/android/gms/internal/zzamg;

    if-eq v6, v7, :cond_1

    if-eq v1, v0, :cond_0

    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcad:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    return-void
.end method

.method private idealByteArraySize(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    shl-int v0, v2, v0

    add-int/lit8 p1, v0, -0xc

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private idealIntArraySize(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzamf;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private zza([I[II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private zza([Lcom/google/android/gms/internal/zzamg;[Lcom/google/android/gms/internal/zzamg;I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzamg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private zzom(I)I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamf;->zzWV()Lcom/google/android/gms/internal/zzamf;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzamf;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzamf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamf;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamf;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zzamf;->zza([I[II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    iget v4, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zzamf;->zza([Lcom/google/android/gms/internal/zzamg;[Lcom/google/android/gms/internal/zzamg;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamf;->zzcad:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamf;->gc()V

    :cond_0
    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzamg;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamf;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method remove(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamf;->zzom(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/zzamf;->zzcac:Lcom/google/android/gms/internal/zzamg;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    sget-object v2, Lcom/google/android/gms/internal/zzamf;->zzcac:Lcom/google/android/gms/internal/zzamg;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamf;->zzcad:Z

    :cond_0
    return-void
.end method

.method size()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamf;->zzcad:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamf;->gc()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    return v0
.end method

.method public final zzWV()Lcom/google/android/gms/internal/zzamf;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamf;->size()I

    move-result v2

    new-instance v3, Lcom/google/android/gms/internal/zzamf;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzamf;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    iget-object v4, v3, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v4, v3, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamg;

    aput-object v0, v4, v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput v2, v3, Lcom/google/android/gms/internal/zzamf;->mSize:I

    return-object v3
.end method

.method zza(ILcom/google/android/gms/internal/zzamg;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamf;->zzom(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aput-object p2, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/zzamf;->zzcac:Lcom/google/android/gms/internal/zzamg;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aput-object p2, v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcad:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamf;->gc()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamf;->zzom(I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzamf;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Lcom/google/android/gms/internal/zzamg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcae:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aput-object p2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzamf;->mSize:I

    goto :goto_0
.end method

.method zzok(I)Lcom/google/android/gms/internal/zzamg;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamf;->zzom(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/zzamf;->zzcac:Lcom/google/android/gms/internal/zzamg;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method zzol(I)Lcom/google/android/gms/internal/zzamg;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamf;->zzcad:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamf;->gc()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamf;->zzcaf:[Lcom/google/android/gms/internal/zzamg;

    aget-object v0, v0, p1

    return-object v0
.end method
