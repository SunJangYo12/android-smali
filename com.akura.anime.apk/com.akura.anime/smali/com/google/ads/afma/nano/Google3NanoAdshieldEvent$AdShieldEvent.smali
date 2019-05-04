.class public final Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;
.super Lcom/google/android/gms/internal/zzamd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdShieldEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzamd",
        "<",
        "Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaK:[Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;


# instance fields
.field public afmaVersion:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public appVersionCode:Ljava/lang/Long;

.field public appVersionName:Ljava/lang/String;

.field public debugInfo:Ljava/lang/String;

.field public exceptionName:Ljava/lang/String;

.field public gmscoreClientVersion:Ljava/lang/Long;

.field public gmscoreSdkVersion:Ljava/lang/Long;

.field public runtimeMs:Ljava/lang/Long;

.field public stackTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;-><init>()V

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->runtimeMs:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->stackTrace:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->exceptionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->debugInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreSdkVersion:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreClientVersion:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionCode:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->afmaVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->zzcaj:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;
    .locals 2

    sget-object v0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->zzaK:[Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzamh;->zzcai:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->zzaK:[Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    sput-object v0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->zzaK:[Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->zzaK:[Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    invoke-direct {v0}, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->mergeFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/android/gms/internal/zzamj;

    move-result-object v0

    check-cast v0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzami;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    invoke-direct {v0}, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzamj;->mergeFrom(Lcom/google/android/gms/internal/zzamj;[B)Lcom/google/android/gms/internal/zzamj;

    move-result-object v0

    check-cast v0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    return-object v0
.end method


# virtual methods
.method public mergeFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->zzWC()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzamd;->zza(Lcom/google/android/gms/internal/zzamb;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appId:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->zzWF()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->runtimeMs:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->stackTrace:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->exceptionName:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->debugInfo:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->zzWF()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreSdkVersion:Ljava/lang/Long;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->zzWF()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreClientVersion:Ljava/lang/Long;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionName:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->zzWF()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionCode:Ljava/lang/Long;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->afmaVersion:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/android/gms/internal/zzamj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->mergeFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzamc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zzq(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->runtimeMs:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->runtimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zzb(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->stackTrace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zzq(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->exceptionName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->exceptionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zzq(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->debugInfo:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->debugInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zzq(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreSdkVersion:Ljava/lang/Long;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreSdkVersion:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zzb(IJ)V

    :cond_5
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreClientVersion:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreClientVersion:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zzb(IJ)V

    :cond_6
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionName:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zzq(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionCode:Ljava/lang/Long;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionCode:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zzb(IJ)V

    :cond_8
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->afmaVersion:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->afmaVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zzq(ILjava/lang/String;)V

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzamd;->writeTo(Lcom/google/android/gms/internal/zzamc;)V

    return-void
.end method

.method protected zzy()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzamd;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->runtimeMs:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->runtimeMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->stackTrace:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->exceptionName:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->exceptionName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->debugInfo:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->debugInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreSdkVersion:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreSdkVersion:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreClientVersion:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->gmscoreClientVersion:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionName:Ljava/lang/String;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionCode:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->appVersionCode:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->afmaVersion:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAdshieldEvent$AdShieldEvent;->afmaVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    return v0
.end method
