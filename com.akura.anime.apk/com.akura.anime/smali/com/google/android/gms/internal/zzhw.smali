.class public Lcom/google/android/gms/internal/zzhw;
.super Lcom/google/android/gms/internal/zzhr;

# interfaces
.implements Lcom/google/android/gms/internal/zzlb$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/internal/zzhv$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzhr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn$zza;Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/internal/zzhv$zza;)V

    return-void
.end method


# virtual methods
.method protected zzhq()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhw;->zzJK:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhw;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzla;->zzjD()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/internal/zzlb$zza;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhw;->zzhx()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaU(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhw;->zzBb:Lcom/google/android/gms/internal/zzla;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzck()Lcom/google/android/gms/internal/zzka;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhw;->zzJK:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzka;->zzaN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhw;->zzJK:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzla;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected zzhx()V
    .locals 0

    return-void
.end method
