.class public final Lcom/google/android/gms/common/api/Batch;
.super Lcom/google/android/gms/internal/zznv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Batch$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zznv",
        "<",
        "Lcom/google/android/gms/common/api/BatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private zzakL:I

.field private zzakM:Z

.field private zzakN:Z

.field private final zzakO:[Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzpp:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;>;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch;->zzpp:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/Batch;->zzakL:I

    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->zzakL:I

    new-array v0, v0, [Lcom/google/android/gms/common/api/PendingResult;

    iput-object v0, p0, Lcom/google/android/gms/common/api/Batch;->zzakO:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/BatchResult;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzalw:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch;->zzakO:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/Batch;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch;->zzakO:[Lcom/google/android/gms/common/api/PendingResult;

    aput-object v0, v2, v1

    new-instance v2, Lcom/google/android/gms/common/api/Batch$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/Batch$1;-><init>(Lcom/google/android/gms/common/api/Batch;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Batch$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->zzpp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/Batch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->zzakN:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/Batch;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->zzakL:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/Batch;->zzakL:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/Batch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->zzakM:Z

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/Batch;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/Batch;->zzakL:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/Batch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/Batch;->zzakN:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/Batch;)V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zznv;->cancel()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/api/Batch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/Batch;->zzakM:Z

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->zzakO:[Lcom/google/android/gms/common/api/PendingResult;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zznv;->cancel()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->zzakO:[Lcom/google/android/gms/common/api/PendingResult;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/BatchResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->zzakO:[Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/Batch;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;

    move-result-object v0

    return-object v0
.end method
