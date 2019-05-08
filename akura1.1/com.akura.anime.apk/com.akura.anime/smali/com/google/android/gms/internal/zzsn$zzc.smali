.class public final Lcom/google/android/gms/internal/zzsn$zzc;
.super Lcom/google/android/gms/internal/zzamj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# static fields
.field private static volatile zzbgr:[Lcom/google/android/gms/internal/zzsn$zzc;


# instance fields
.field public zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

.field public zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

.field public zzbgu:Ljava/lang/Boolean;

.field public zzbgv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsn$zzc;->zzGR()Lcom/google/android/gms/internal/zzsn$zzc;

    return-void
.end method

.method public static zzGQ()[Lcom/google/android/gms/internal/zzsn$zzc;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgr:[Lcom/google/android/gms/internal/zzsn$zzc;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzamh;->zzcai:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgr:[Lcom/google/android/gms/internal/zzsn$zzc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzsn$zzc;

    sput-object v0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgr:[Lcom/google/android/gms/internal/zzsn$zzc;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgr:[Lcom/google/android/gms/internal/zzsn$zzc;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsn$zzc;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzsn$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsn$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsn$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsn$zzf;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsn$zzd;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zzamb;)Lcom/google/android/gms/internal/zzamj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsn$zzc;->zzv(Lcom/google/android/gms/internal/zzamb;)Lcom/google/android/gms/internal/zzsn$zzc;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzamc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zza(ILcom/google/android/gms/internal/zzamj;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zza(ILcom/google/android/gms/internal/zzamj;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zzj(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzamc;->zzq(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzamj;->writeTo(Lcom/google/android/gms/internal/zzamc;)V

    return-void
.end method

.method public zzGR()Lcom/google/android/gms/internal/zzsn$zzc;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzcaj:I

    return-object p0
.end method

.method public zzv(Lcom/google/android/gms/internal/zzamb;)Lcom/google/android/gms/internal/zzsn$zzc;
    .locals 1
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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzamm;->zzb(Lcom/google/android/gms/internal/zzamb;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzsn$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsn$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzamb;->zza(Lcom/google/android/gms/internal/zzamj;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzsn$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsn$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzamb;->zza(Lcom/google/android/gms/internal/zzamj;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->zzWI()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamb;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method protected zzy()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzamj;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgs:Lcom/google/android/gms/internal/zzsn$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzc(ILcom/google/android/gms/internal/zzamj;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgt:Lcom/google/android/gms/internal/zzsn$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzc(ILcom/google/android/gms/internal/zzamj;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgu:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzk(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsn$zzc;->zzbgv:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzamc;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
