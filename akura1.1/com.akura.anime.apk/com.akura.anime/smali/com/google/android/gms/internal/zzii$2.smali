.class final Lcom/google/android/gms/internal/zzii$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzii;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzcn;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzMW:Lcom/google/android/gms/internal/zzik;

.field final synthetic zzMX:Lcom/google/android/gms/internal/zzda;

.field final synthetic zzMY:Ljava/lang/String;

.field final synthetic zzqj:Lcom/google/android/gms/internal/zzdc;

.field final synthetic zzqx:Lcom/google/android/gms/internal/zzfj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzik;Lcom/google/android/gms/internal/zzdc;Lcom/google/android/gms/internal/zzda;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii$2;->zzqx:Lcom/google/android/gms/internal/zzfj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzii$2;->zzMW:Lcom/google/android/gms/internal/zzik;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzii$2;->zzqj:Lcom/google/android/gms/internal/zzdc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzii$2;->zzMX:Lcom/google/android/gms/internal/zzda;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzii$2;->zzMY:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii$2;->zzqx:Lcom/google/android/gms/internal/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj;->zzfu()Lcom/google/android/gms/internal/zzfj$zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$2;->zzMW:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzik;->zzb(Lcom/google/android/gms/internal/zzfj$zzc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$2;->zzqj:Lcom/google/android/gms/internal/zzdc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii$2;->zzMX:Lcom/google/android/gms/internal/zzda;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzdc;->zza(Lcom/google/android/gms/internal/zzda;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$2;->zzqj:Lcom/google/android/gms/internal/zzdc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdc;->zzeA()Lcom/google/android/gms/internal/zzda;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzii$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzii$2$1;-><init>(Lcom/google/android/gms/internal/zzii$2;Lcom/google/android/gms/internal/zzda;)V

    new-instance v1, Lcom/google/android/gms/internal/zzii$2$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzii$2$2;-><init>(Lcom/google/android/gms/internal/zzii$2;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzfj$zzc;->zza(Lcom/google/android/gms/internal/zzkt$zzc;Lcom/google/android/gms/internal/zzkt$zza;)V

    return-void
.end method
