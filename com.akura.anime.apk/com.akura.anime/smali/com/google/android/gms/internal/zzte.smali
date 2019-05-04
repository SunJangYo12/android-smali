.class public final Lcom/google/android/gms/internal/zzte;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    if-ge v0, v5, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zztc;

    const/16 v2, 0xa

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/zztc;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {v0, p1, v2, v4}, Lcom/google/android/gms/internal/zztc;->zza(Ljava/lang/String;[B[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztc;->send()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "GMS_WTF"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/zzte;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
