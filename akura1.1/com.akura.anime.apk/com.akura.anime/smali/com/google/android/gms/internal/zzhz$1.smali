.class Lcom/google/android/gms/internal/zzhz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhz;->zzbQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKk:Lcom/google/android/gms/internal/zzhz;

.field final synthetic zzqt:Lcom/google/android/gms/internal/zzjn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/internal/zzjn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhz$1;->zzKk:Lcom/google/android/gms/internal/zzhz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhz$1;->zzqt:Lcom/google/android/gms/internal/zzjn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhz$1;->zzKk:Lcom/google/android/gms/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhz;->zza(Lcom/google/android/gms/internal/zzhz;)Lcom/google/android/gms/internal/zzhv$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz$1;->zzqt:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzhv$zza;->zzb(Lcom/google/android/gms/internal/zzjn;)V

    return-void
.end method
