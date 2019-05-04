.class public final Lcom/google/android/gms/internal/zzip;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzip$zza;
    }
.end annotation


# instance fields
.field private zzOs:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzip$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzip;->zzOs:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public zzx(Landroid/content/Context;)Lcom/google/android/gms/internal/zzio;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzip;->zzOs:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzip$zza;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzip$zza;->hasExpired()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzcu;->zzyt:Lcom/google/android/gms/internal/zzcq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcq;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzio$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzip$zza;->zzOu:Lcom/google/android/gms/internal/zzio;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/zzio$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzio;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzio$zza;->zzii()Lcom/google/android/gms/internal/zzio;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzip;->zzOs:Ljava/util/WeakHashMap;

    new-instance v2, Lcom/google/android/gms/internal/zzip$zza;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzip$zza;-><init>(Lcom/google/android/gms/internal/zzip;Lcom/google/android/gms/internal/zzio;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzio$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzio$zza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzio$zza;->zzii()Lcom/google/android/gms/internal/zzio;

    move-result-object v0

    goto :goto_0
.end method
