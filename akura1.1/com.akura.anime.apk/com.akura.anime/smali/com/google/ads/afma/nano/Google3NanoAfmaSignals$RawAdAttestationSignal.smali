.class public final Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;
.super Lcom/google/android/gms/internal/zzamd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/afma/nano/Google3NanoAfmaSignals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawAdAttestationSignal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzamd",
        "<",
        "Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaQ:[Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;


# instance fields
.field public encryptedAdAttestationStatemement:[B

.field public keyIdentifier:Ljava/lang/String;

.field public timestampMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;-><init>()V

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->timestampMs:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->keyIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->encryptedAdAttestationStatemement:[B

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->zzcaa:Lcom/google/android/gms/internal/zzamf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->zzcaj:I

    return-void
.end method

.method public static emptyArray()[Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;
    .locals 2

    sget-object v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->zzaQ:[Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzamh;->zzcai:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->zzaQ:[Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

    sput-object v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->zzaQ:[Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->zzaQ:[Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

    invoke-direct {v0}, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->mergeFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/android/gms/internal/zzamj;

    move-result-object v0

    check-cast v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzami;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

    invoke-direct {v0}, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzamj;->mergeFrom(Lcom/google/android/gms/internal/zzamj;[B)Lcom/google/android/gms/internal/zzamj;

    move-result-object v0

    check-cast v0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

    return-object v0
.end method


# virtual methods
.method public mergeFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->zzWF()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->timestampMs:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->keyIdentifier:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->encryptedAdAttestationStatemement:[B

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/android/gms/internal/zzamj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->mergeFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;

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

    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->timestampMs:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->timestampMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zzb(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->keyIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->keyIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zzq(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->encryptedAdAttestationStatemement:[B

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->encryptedAdAttestationStatemement:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zza(I[B)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzamd;->writeTo(Lcom/google/android/gms/internal/zzamc;)V

    return-void
.end method

.method protected zzy()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzamd;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->timestampMs:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->timestampMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzamc;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->keyIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->keyIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->encryptedAdAttestationStatemement:[B

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/ads/afma/nano/Google3NanoAfmaSignals$RawAdAttestationSignal;->encryptedAdAttestationStatemement:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
