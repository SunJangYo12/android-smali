.class Lcom/google/android/gms/internal/zzei$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzBZ:Lcom/google/android/gms/internal/zzei;

.field private final zzCg:Lcom/google/android/gms/internal/zzei$zzd;

.field private final zzCh:Z

.field private final zzCi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzei;ZLcom/google/android/gms/internal/zzei$zzd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzei$zzc;->zzBZ:Lcom/google/android/gms/internal/zzei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzei$zzc;->zzCh:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzei$zzc;->zzCg:Lcom/google/android/gms/internal/zzei$zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzei$zzc;->zzCi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$zzc;->zzCi:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzei$zzc;->zzCh:Z

    return v0
.end method

.method public zzfc()Lcom/google/android/gms/internal/zzei$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$zzc;->zzCg:Lcom/google/android/gms/internal/zzei$zzd;

    return-object v0
.end method
