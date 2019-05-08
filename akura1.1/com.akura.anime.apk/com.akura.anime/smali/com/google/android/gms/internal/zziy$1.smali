.class Lcom/google/android/gms/internal/zziy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziy;->zza(Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zzdc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzOB:Lcom/google/android/gms/internal/zziy;

.field final synthetic zzqh:Lcom/google/android/gms/internal/zzjn$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziy;Lcom/google/android/gms/internal/zzjn$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziy$1;->zzOB:Lcom/google/android/gms/internal/zziy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziy$1;->zzqh:Lcom/google/android/gms/internal/zzjn$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/google/android/gms/internal/zziy$1;->zzOB:Lcom/google/android/gms/internal/zziy;

    new-instance v0, Lcom/google/android/gms/internal/zzjn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy$1;->zzqh:Lcom/google/android/gms/internal/zzjn$zza;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzjn;-><init>(Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzgb;Ljava/lang/String;Lcom/google/android/gms/internal/zzft;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/zziy;->zzb(Lcom/google/android/gms/internal/zzjn;)V

    return-void
.end method
