.class Lcom/akura/anime/activities/MP3Main$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "MP3Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Main;->setupAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Main;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Main;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Main;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Main$3;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main$3;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Main;->loadAd2()V

    .line 397
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "var1"    # I

    .prologue
    .line 401
    const-string v0, "Main"

    const-string v1, "interstitial ad failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main$3;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Main;->queueAd2()V

    .line 403
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 413
    const-string v0, "Main"

    const-string v1, "********* onReceiveAd 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method
