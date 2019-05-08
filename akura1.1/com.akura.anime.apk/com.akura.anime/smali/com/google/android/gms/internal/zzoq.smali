.class public Lcom/google/android/gms/internal/zzoq;
.super Ljava/lang/Object;


# instance fields
.field protected final zzaop:Lcom/google/android/gms/internal/zzor;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoq;->zzaop:Lcom/google/android/gms/internal/zzor;

    return-void
.end method

.method protected static zzc(Lcom/google/android/gms/internal/zzop;)Lcom/google/android/gms/internal/zzor;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzop;->zzsC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzop;->zzsE()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpc;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzpc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzop;->zzsD()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzos;->zzt(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzos;

    move-result-object v0

    goto :goto_0
.end method

.method protected static zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzor;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzop;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzop;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoq;->zzc(Lcom/google/android/gms/internal/zzop;)Lcom/google/android/gms/internal/zzor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzaop:Lcom/google/android/gms/internal/zzor;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzor;->zzsF()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method
