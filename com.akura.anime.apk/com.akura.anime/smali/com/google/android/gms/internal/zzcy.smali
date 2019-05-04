.class public Lcom/google/android/gms/internal/zzcy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzdc;J)Lcom/google/android/gms/internal/zzda;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzdc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzdc;->zzc(J)Lcom/google/android/gms/internal/zzda;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs zza(Lcom/google/android/gms/internal/zzdc;Lcom/google/android/gms/internal/zzda;J[Ljava/lang/String;)Z
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/zzdc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzda;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzdc;->zza(Lcom/google/android/gms/internal/zzda;J[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs zza(Lcom/google/android/gms/internal/zzdc;Lcom/google/android/gms/internal/zzda;[Ljava/lang/String;)Z
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzdc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzda;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzdc;->zza(Lcom/google/android/gms/internal/zzda;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzdc;)Lcom/google/android/gms/internal/zzda;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzdc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdc;->zzeA()Lcom/google/android/gms/internal/zzda;

    move-result-object v0

    goto :goto_0
.end method
