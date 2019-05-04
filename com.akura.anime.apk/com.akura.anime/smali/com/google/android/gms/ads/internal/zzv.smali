.class public final Lcom/google/android/gms/ads/internal/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzv$zza;
    }
.end annotation


# instance fields
.field public final zzov:Landroid/content/Context;

.field zzrf:Z

.field public zzsA:Lcom/google/android/gms/internal/zzkc;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzsB:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public zzsC:Lcom/google/android/gms/internal/zzjn;

.field public zzsD:Lcom/google/android/gms/internal/zzjn$zza;

.field public zzsE:Lcom/google/android/gms/internal/zzjo;

.field zzsF:Lcom/google/android/gms/ads/internal/client/zzp;

.field zzsG:Lcom/google/android/gms/ads/internal/client/zzq;

.field zzsH:Lcom/google/android/gms/ads/internal/client/zzw;

.field zzsI:Lcom/google/android/gms/ads/internal/client/zzy;

.field zzsJ:Lcom/google/android/gms/internal/zzhh;

.field zzsK:Lcom/google/android/gms/internal/zzhl;

.field zzsL:Lcom/google/android/gms/internal/zzdt;

.field zzsM:Lcom/google/android/gms/internal/zzdu;

.field zzsN:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdv;",
            ">;"
        }
    .end annotation
.end field

.field zzsO:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdw;",
            ">;"
        }
    .end annotation
.end field

.field zzsP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field zzsQ:Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzsR:Lcom/google/android/gms/internal/zzdg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzsS:Lcom/google/android/gms/ads/internal/reward/client/zzd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzsT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzsU:Lcom/google/android/gms/ads/internal/purchase/zzk;

.field public zzsV:Lcom/google/android/gms/internal/zzjt;

.field zzsW:Landroid/view/View;

.field public zzsX:I

.field zzsY:Z

.field private zzsZ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjo;",
            ">;"
        }
    .end annotation
.end field

.field final zzsu:Ljava/lang/String;

.field public zzsv:Ljava/lang/String;

.field final zzsw:Lcom/google/android/gms/internal/zzaq;

.field public final zzsx:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

.field public zzsz:Lcom/google/android/gms/internal/zzjv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzta:I

.field private zztb:I

.field private zztc:Lcom/google/android/gms/internal/zzkk;

.field private zztd:Z

.field private zzte:Z

.field private zztf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzaq;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzaq;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsV:Lcom/google/android/gms/internal/zzjt;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsW:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsX:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsY:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzrf:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsZ:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzta:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zztb:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zztd:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzte:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zztf:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcu;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcn()Lcom/google/android/gms/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjq;->zziG()Lcom/google/android/gms/internal/zzcw;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzcu;->zzes()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzRC:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzRC:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzcn()Lcom/google/android/gms/internal/zzjq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjq;->zziG()Lcom/google/android/gms/internal/zzcw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcw;->zzc(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsu:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzvt:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzvv:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsB:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsv:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzov:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsx:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    if-eqz p5, :cond_4

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsw:Lcom/google/android/gms/internal/zzaq;

    new-instance v0, Lcom/google/android/gms/internal/zzkk;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzkk;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zztc:Lcom/google/android/gms/internal/zzkk;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsO:Landroid/support/v4/util/SimpleArrayMap;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/ads/internal/zzv$zza;-><init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setVisibility(I)V

    goto :goto_0

    :cond_4
    new-instance p5, Lcom/google/android/gms/internal/zzaq;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Lcom/google/android/gms/ads/internal/zzv;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/zzaq;-><init>(Lcom/google/android/gms/internal/zzal;)V

    goto :goto_1
.end method

.method private zzcM()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v3, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zztd:Z

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzte:Z

    goto :goto_0
.end method

.method private zzg(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjn;->zzHF:Lcom/google/android/gms/internal/zzla;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zztc:Lcom/google/android/gms/internal/zzkk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkk;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjn;->zzHF:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzla;->zzjD()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzlb;->zzdi()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzv$zza;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzov:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzdQ()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzv;->zzov:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzta:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zztb:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzta:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zztb:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjn;->zzHF:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzla;->zzjD()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzta:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zztb:I

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzlb;->zza(IIZ)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzcM()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzcL()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsG:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsH:Lcom/google/android/gms/ads/internal/client/zzw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsK:Lcom/google/android/gms/internal/zzhl;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsJ:Lcom/google/android/gms/internal/zzhh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsR:Lcom/google/android/gms/internal/zzdg;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsI:Lcom/google/android/gms/ads/internal/client/zzy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzh(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzcG()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzcI()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzg(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzg(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zztf:Z

    return-void
.end method

.method public zza(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsZ:Ljava/util/HashSet;

    return-void
.end method

.method public zzcF()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsZ:Ljava/util/HashSet;

    return-object v0
.end method

.method public zzcG()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzHF:Lcom/google/android/gms/internal/zzla;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzHF:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->destroy()V

    :cond_0
    return-void
.end method

.method public zzcH()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzHF:Lcom/google/android/gms/internal/zzla;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzHF:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->stopLoading()V

    :cond_0
    return-void
.end method

.method public zzcI()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzFh:Lcom/google/android/gms/internal/zzgb;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzFh:Lcom/google/android/gms/internal/zzgb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgb;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaW(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzcJ()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsX:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzcK()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsX:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzcL()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsy:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->zzcL()V

    :cond_0
    return-void
.end method

.method public zzcN()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zztd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzte:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zztd:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zztf:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    goto :goto_0

    :cond_1
    const-string v0, "top-locked"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzte:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zztf:Z

    if-eqz v0, :cond_3

    const-string v0, "bottom-scrollable"

    goto :goto_0

    :cond_3
    const-string v0, "bottom-locked"

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public zzcO()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsE:Lcom/google/android/gms/internal/zzjo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzjn;->zzPc:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzjo;->zzl(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsE:Lcom/google/android/gms/internal/zzjo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzjn;->zzPd:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzjo;->zzm(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsE:Lcom/google/android/gms/internal/zzjo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsB:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzvt:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjo;->zzB(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsE:Lcom/google/android/gms/internal/zzjo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzjn;->zzLP:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjo;->zzC(Z)V

    return-void
.end method

.method public zzh(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsX:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzcH()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsz:Lcom/google/android/gms/internal/zzjv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsz:Lcom/google/android/gms/internal/zzjv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjv;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsA:Lcom/google/android/gms/internal/zzkc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsA:Lcom/google/android/gms/internal/zzkc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkc;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzsC:Lcom/google/android/gms/internal/zzjn;

    :cond_3
    return-void
.end method
