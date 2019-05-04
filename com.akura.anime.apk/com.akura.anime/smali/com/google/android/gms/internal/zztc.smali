.class public Lcom/google/android/gms/internal/zztc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztd$zza;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzbkK:Lcom/google/android/gms/internal/zztd;

.field private zzbkL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zztc;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zztc;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zztd;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zztd;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zztd$zza;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztc;->zzbkK:Lcom/google/android/gms/internal/zztd;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztc;->zzbkL:Z

    return-void

    :cond_0
    const-string v7, "OneTimePlayLogger"

    goto :goto_0
.end method

.method private zzId()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztc;->zzbkL:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot reuse one-time logger after sending."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public send()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztc;->zzId()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->zzbkK:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztd;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztc;->zzbkL:Z

    return-void
.end method

.method public zzIe()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->zzbkK:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztd;->stop()V

    return-void
.end method

.method public zzIf()V
    .locals 2

    const-string v0, "OneTimePlayLogger"

    const-string v1, "logger connection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs zza(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztc;->zzId()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->zzbkK:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zztd;->zzb(Ljava/lang/String;[B[Ljava/lang/String;)V

    return-void
.end method

.method public zzc(Landroid/app/PendingIntent;)V
    .locals 4

    const-string v0, "OneTimePlayLogger"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "logger connection failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
