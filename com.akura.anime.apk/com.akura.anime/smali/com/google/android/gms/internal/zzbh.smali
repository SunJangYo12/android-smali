.class public Lcom/google/android/gms/internal/zzbh;
.super Lcom/google/android/gms/internal/zzbm;


# instance fields
.field private zzoP:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzav;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;II)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzbm;-><init>(Lcom/google/android/gms/internal/zzav;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;II)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbh;->zzoP:J

    return-void
.end method


# virtual methods
.method protected zzaQ()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzoY:Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;->ornSignal:Ljava/lang/Long;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbh;->zzoP:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzoU:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbh;->zznO:Lcom/google/android/gms/internal/zzav;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzav;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbh;->zzoP:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzoY:Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbh;->zzoP:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;->ornSignal:Ljava/lang/Long;

    return-void
.end method
