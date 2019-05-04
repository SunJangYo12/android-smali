.class public Lcom/google/android/gms/internal/zzht;
.super Lcom/google/android/gms/internal/zzhr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private zzJY:Lcom/google/android/gms/internal/zzhs;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/internal/zzhv$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzhr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/internal/zzhv$zza;)V

    return-void
.end method


# virtual methods
.method protected zzhq()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzbi()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzvt:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/zzhs;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzht;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/internal/zzhs;-><init>(Lcom/google/android/gms/internal/zzlb$zza;Lcom/google/android/gms/internal/zzla;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzht;->zzJY:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjD()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/internal/zzlb$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzJY:Lcom/google/android/gms/internal/zzhs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzJK:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhs;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    return-void

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    goto :goto_0
.end method

.method protected zzhr()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzJY:Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhs;->zzhv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ad-Network indicated no fill with passback URL."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaU(Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzJY:Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhs;->zzhw()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method
