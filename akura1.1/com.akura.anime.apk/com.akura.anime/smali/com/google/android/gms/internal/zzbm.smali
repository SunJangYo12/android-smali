.class public abstract Lcom/google/android/gms/internal/zzbm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final className:Ljava/lang/String;

.field protected final zznO:Lcom/google/android/gms/internal/zzav;

.field protected final zzoS:Ljava/lang/String;

.field protected zzoU:Ljava/lang/reflect/Method;

.field protected final zzoY:Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;

.field protected final zzoZ:I

.field protected final zzpa:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzav;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbm;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbm;->zznO:Lcom/google/android/gms/internal/zzav;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbm;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbm;->zzoS:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbm;->zzoY:Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$AFMASignals;

    iput p5, p0, Lcom/google/android/gms/internal/zzbm;->zzoZ:I

    iput p6, p0, Lcom/google/android/gms/internal/zzbm;->zzpa:I

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbm;->zzaV()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzaQ()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public zzaV()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbm;->zznO:Lcom/google/android/gms/internal/zzav;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbm;->className:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbm;->zzoS:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzav;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbm;->zzoU:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbm;->zzoU:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbm;->zzaQ()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbm;->zznO:Lcom/google/android/gms/internal/zzav;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzav;->zzaK()Lcom/google/android/gms/internal/zzak;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/google/android/gms/internal/zzbm;->zzoZ:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/google/android/gms/internal/zzbm;->zzpa:I

    iget v4, p0, Lcom/google/android/gms/internal/zzbm;->zzoZ:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gms/internal/zzak;->zza(IIJ)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
