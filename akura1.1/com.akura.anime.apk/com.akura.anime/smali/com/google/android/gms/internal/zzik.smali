.class public final Lcom/google/android/gms/internal/zzik;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private zzII:Ljava/lang/String;

.field private zzNe:Ljava/lang/String;

.field private zzNf:Lcom/google/android/gms/internal/zzko;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzko",
            "<",
            "Lcom/google/android/gms/internal/zzin;",
            ">;"
        }
    .end annotation
.end field

.field zzNg:Lcom/google/android/gms/internal/zzfj$zzc;

.field public final zzNh:Lcom/google/android/gms/internal/zzeh;

.field public final zzNi:Lcom/google/android/gms/internal/zzeh;

.field public final zzNj:Lcom/google/android/gms/internal/zzeh;

.field private final zzpp:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzpp:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzko;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzko;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzNf:Lcom/google/android/gms/internal/zzko;

    new-instance v0, Lcom/google/android/gms/internal/zzik$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzik$1;-><init>(Lcom/google/android/gms/internal/zzik;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzNh:Lcom/google/android/gms/internal/zzeh;

    new-instance v0, Lcom/google/android/gms/internal/zzik$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzik$2;-><init>(Lcom/google/android/gms/internal/zzik;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzNi:Lcom/google/android/gms/internal/zzeh;

    new-instance v0, Lcom/google/android/gms/internal/zzik$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzik$3;-><init>(Lcom/google/android/gms/internal/zzik;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzNj:Lcom/google/android/gms/internal/zzeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzik;->zzNe:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzik;->zzII:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzik;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzpp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzik;)Lcom/google/android/gms/internal/zzko;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzNf:Lcom/google/android/gms/internal/zzko;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzik;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzII:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzik;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzNe:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzfj$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzik;->zzNg:Lcom/google/android/gms/internal/zzfj$zzc;

    return-void
.end method

.method public zzia()Lcom/google/android/gms/internal/zzfj$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzNg:Lcom/google/android/gms/internal/zzfj$zzc;

    return-object v0
.end method

.method public zzib()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzin;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzik;->zzNf:Lcom/google/android/gms/internal/zzko;

    return-object v0
.end method

.method public zzic()V
    .locals 0

    return-void
.end method
