.class public final Lcom/google/android/gms/internal/zztw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zztw$zza;
    }
.end annotation


# static fields
.field public static final zzbnf:Lcom/google/android/gms/internal/zztw;


# instance fields
.field private final zzacA:Z

.field private final zzacC:Z

.field private final zzacD:Ljava/lang/String;

.field private final zzacE:Ljava/lang/String;

.field private final zzbng:Z

.field private final zzbnh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zztw$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztw$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztw$zza;->zzIS()Lcom/google/android/gms/internal/zztw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zztw;->zzbnf:Lcom/google/android/gms/internal/zztw;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zztw;->zzbng:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zztw;->zzacA:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zztw;->zzacD:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zztw;->zzacC:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zztw;->zzbnh:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zztw;->zzacE:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/zztw$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zztw;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public zzIQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztw;->zzbng:Z

    return v0
.end method

.method public zzIR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztw;->zzbnh:Z

    return v0
.end method

.method public zzpk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztw;->zzacA:Z

    return v0
.end method

.method public zzpm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztw;->zzacC:Z

    return v0
.end method

.method public zzpn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztw;->zzacD:Ljava/lang/String;

    return-object v0
.end method

.method public zzpo()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztw;->zzacE:Ljava/lang/String;

    return-object v0
.end method
