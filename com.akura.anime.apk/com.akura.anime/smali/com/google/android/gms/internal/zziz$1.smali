.class Lcom/google/android/gms/internal/zziz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziz;->zzbQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzOJ:Lcom/google/android/gms/internal/zzgb;

.field final synthetic zzOK:Lcom/google/android/gms/internal/zziz;

.field final synthetic zzqR:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzgb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziz$1;->zzOK:Lcom/google/android/gms/internal/zziz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziz$1;->zzqR:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziz$1;->zzOJ:Lcom/google/android/gms/internal/zzgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz$1;->zzOK:Lcom/google/android/gms/internal/zziz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziz$1;->zzqR:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziz$1;->zzOJ:Lcom/google/android/gms/internal/zzgb;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzgb;)V

    return-void
.end method
