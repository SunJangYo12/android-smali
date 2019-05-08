.class public final Lcom/google/android/gms/internal/zzfv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfv$zza;
    }
.end annotation


# instance fields
.field public final zzFf:I

.field public final zzFg:Lcom/google/android/gms/internal/zzfq;

.field public final zzFh:Lcom/google/android/gms/internal/zzgb;

.field public final zzFi:Ljava/lang/String;

.field public final zzFj:Lcom/google/android/gms/internal/zzft;

.field public final zzFk:Lcom/google/android/gms/internal/zzgd;

.field public final zzFl:J


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    move-object v7, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzfv;-><init>(Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzgb;Ljava/lang/String;Lcom/google/android/gms/internal/zzft;ILcom/google/android/gms/internal/zzgd;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzgb;Ljava/lang/String;Lcom/google/android/gms/internal/zzft;ILcom/google/android/gms/internal/zzgd;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfv;->zzFg:Lcom/google/android/gms/internal/zzfq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfv;->zzFh:Lcom/google/android/gms/internal/zzgb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfv;->zzFi:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfv;->zzFj:Lcom/google/android/gms/internal/zzft;

    iput p5, p0, Lcom/google/android/gms/internal/zzfv;->zzFf:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzfv;->zzFk:Lcom/google/android/gms/internal/zzgd;

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzfv;->zzFl:J

    return-void
.end method
