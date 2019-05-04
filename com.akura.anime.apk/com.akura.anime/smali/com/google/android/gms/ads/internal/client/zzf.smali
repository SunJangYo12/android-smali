.class public final Lcom/google/android/gms/ads/internal/client/zzf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzbk:Landroid/location/Location;

.field private zzqs:Z

.field private zzvd:J

.field private zzve:I

.field private zzvf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzvg:Z

.field private zzvh:I

.field private zzvi:Ljava/lang/String;

.field private zzvj:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

.field private zzvk:Ljava/lang/String;

.field private zzvl:Landroid/os/Bundle;

.field private zzvm:Landroid/os/Bundle;

.field private zzvn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzvo:Ljava/lang/String;

.field private zzvp:Ljava/lang/String;

.field private zzvq:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvd:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->mExtras:Landroid/os/Bundle;

    iput v4, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzve:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvf:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvg:Z

    iput v4, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvh:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzqs:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvi:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvj:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzbk:Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvk:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvl:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvm:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvn:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvo:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvp:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvq:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuN:J

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvd:J

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->mExtras:Landroid/os/Bundle;

    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuO:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzve:I

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuP:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvf:Ljava/util/List;

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvg:Z

    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuR:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvh:I

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzqs:Z

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvi:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuU:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvj:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuV:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzbk:Landroid/location/Location;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuW:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvk:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuX:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvl:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvm:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzuZ:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvn:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzva:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvo:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzvb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Landroid/location/Location;)Lcom/google/android/gms/ads/internal/client/zzf;
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzbk:Landroid/location/Location;

    return-object p0
.end method

.method public zzc(Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/client/zzf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvl:Landroid/os/Bundle;

    return-object p0
.end method

.method public zzdA()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 22

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvd:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/zzf;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzve:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvf:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvg:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvh:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzqs:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvj:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzbk:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvk:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvl:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvm:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvn:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzvp:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method
