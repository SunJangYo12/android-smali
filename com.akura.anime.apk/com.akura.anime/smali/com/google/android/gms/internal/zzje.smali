.class public Lcom/google/android/gms/internal/zzje;
.super Lcom/google/android/gms/internal/zzjv;

# interfaces
.implements Lcom/google/android/gms/internal/zzjd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

.field private final zzOO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final zzOP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzOQ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzOR:Lcom/google/android/gms/internal/zziy;

.field private final zzpp:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zziy;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjv;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOO:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOP:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOQ:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzpp:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzje;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzje;->zzOR:Lcom/google/android/gms/internal/zziy;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzje;)Lcom/google/android/gms/internal/zziy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOR:Lcom/google/android/gms/internal/zziy;

    return-object v0
.end method

.method private zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/internal/zzjn;
    .locals 38
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzfq;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v2, Lcom/google/android/gms/internal/zzjn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzjn$zza;->zzPh:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzLi:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEG:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzLR:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEL:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPh:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzLl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzLP:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzOY:Lcom/google/android/gms/internal/zzfr;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzLQ:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzsB:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzLO:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPc:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzLT:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzLU:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzOW:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzMf:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzMg:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzMh:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzMi:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzMj:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEI:Ljava/util/List;

    move-object/from16 v37, v0

    move/from16 v6, p1

    move-object/from16 v14, p3

    move-object/from16 v16, p2

    invoke-direct/range {v2 .. v37}, Lcom/google/android/gms/internal/zzjn;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzla;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzgb;Ljava/lang/String;Lcom/google/android/gms/internal/zzfr;Lcom/google/android/gms/internal/zzft;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/internal/zzjn;
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzje;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    return-object v0
.end method

.method private zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzje;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOR:Lcom/google/android/gms/internal/zziy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zziy;->zzaE(Ljava/lang/String;)Lcom/google/android/gms/internal/zzjf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->zziq()Lcom/google/android/gms/internal/zzjc;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjf;->zzip()Lcom/google/android/gms/internal/zzgb;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzje;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjf;)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzje;->zzOO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjv;->zzhs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOP:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzio()Lcom/google/android/gms/internal/zzjn;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/zzje;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjf;)Lcom/google/android/gms/internal/zziz;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zziz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzje;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zziz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zzjf;Lcom/google/android/gms/internal/zzjd;)V

    return-object v0
.end method

.method public zza(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public zzaF(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzje;->zzpp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOQ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzbQ()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn$zza;->zzOY:Lcom/google/android/gms/internal/zzfr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfr;->zzED:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfq;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzfq;->zzEv:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzfq;->zzEp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "class_name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    iget-object v5, v0, Lcom/google/android/gms/internal/zzfq;->zzEn:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Lcom/google/android/gms/internal/zzje;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Unable to determine custom event class name, skipping..."

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/zzjw;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzje;->zzpp:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOQ:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzje;->zzOP:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzje;->zzOP:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzje;->zzJJ:Lcom/google/android/gms/internal/zzjn$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzjn$zza;->zzOY:Lcom/google/android/gms/internal/zzfr;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzfr;->zzED:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfq;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzje;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/util/client/zza;->zzRt:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzje$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzje$1;-><init>(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/internal/zzjn;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    :goto_2
    return-void

    :cond_3
    monitor-exit v2

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzje;->zzio()Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/util/client/zza;->zzRt:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzje$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzje$2;-><init>(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/internal/zzjn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method
