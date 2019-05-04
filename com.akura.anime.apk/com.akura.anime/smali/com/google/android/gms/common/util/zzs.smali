.class public final Lcom/google/android/gms/common/util/zzs;
.super Ljava/lang/Object;


# direct methods
.method public static isAtLeastL()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzvg()Z

    move-result v0

    return v0
.end method

.method private static zzcy(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzuX()Z
    .locals 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzuY()Z
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzuZ()Z
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzva()Z
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzvb()Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzvc()Z
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzvd()Z
    .locals 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzve()Z
    .locals 1

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzvf()Z
    .locals 1

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzvg()Z
    .locals 1

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method

.method public static zzvh()Z
    .locals 1

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzcy(I)Z

    move-result v0

    return v0
.end method
