.class Lcom/google/android/gms/internal/zzod$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzod;->zzsb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamV:Lcom/google/android/gms/internal/zzod;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzod;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzod$1;->zzamV:Lcom/google/android/gms/internal/zzod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod$1;->zzamV:Lcom/google/android/gms/internal/zzod;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzod;->zzb(Lcom/google/android/gms/internal/zzod;)Lcom/google/android/gms/common/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzod$1;->zzamV:Lcom/google/android/gms/internal/zzod;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzod;->zza(Lcom/google/android/gms/internal/zzod;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzc;->zzag(Landroid/content/Context;)V

    return-void
.end method
