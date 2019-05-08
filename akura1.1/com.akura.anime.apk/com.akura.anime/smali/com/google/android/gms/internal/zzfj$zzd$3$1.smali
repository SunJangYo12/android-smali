.class Lcom/google/android/gms/internal/zzfj$zzd$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfj$zzd$3;->zza(Lcom/google/android/gms/internal/zzfg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzEi:Lcom/google/android/gms/internal/zzfg;

.field final synthetic zzEj:Lcom/google/android/gms/internal/zzfj$zzd$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfj$zzd$3;Lcom/google/android/gms/internal/zzfg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$zzd$3$1;->zzEj:Lcom/google/android/gms/internal/zzfj$zzd$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfj$zzd$3$1;->zzEi:Lcom/google/android/gms/internal/zzfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zzd$3$1;->zzEj:Lcom/google/android/gms/internal/zzfj$zzd$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfj$zzd$3;->zzEh:Lcom/google/android/gms/internal/zzfj$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfj$zzd;->zza(Lcom/google/android/gms/internal/zzfj$zzd;)Lcom/google/android/gms/internal/zzke;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfj$zzd$3$1;->zzEi:Lcom/google/android/gms/internal/zzfg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzke;->zzc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zzd$3$1;->zzEi:Lcom/google/android/gms/internal/zzfg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfg;->destroy()V

    return-void
.end method
