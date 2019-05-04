.class final Lcom/google/android/gms/internal/zzfu$2;
.super Lcom/google/android/gms/internal/zzgd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfu;->zzy(I)Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzFe:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzfu$2;->zzFe:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzfG()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfu$2;->zzFe:I

    return v0
.end method
