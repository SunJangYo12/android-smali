.class Lcom/google/android/gms/internal/zzfj$zzd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfj$zzd;->zzfv()Lcom/google/android/gms/internal/zzfj$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzEg:Lcom/google/android/gms/internal/zzfj$zzc;

.field final synthetic zzEh:Lcom/google/android/gms/internal/zzfj$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfj$zzd;Lcom/google/android/gms/internal/zzfj$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfj$zzd$2;->zzEh:Lcom/google/android/gms/internal/zzfj$zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfj$zzd$2;->zzEg:Lcom/google/android/gms/internal/zzfj$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfj$zzd$2;->zzEg:Lcom/google/android/gms/internal/zzfj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfj$zzc;->reject()V

    return-void
.end method
