.class Lcom/akura/anime/activities/MP3Main$2;
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
    .line 365
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Main$2;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main$2;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Main;->loadAd1()V

    .line 369
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "var1"    # I

    .prologue
    .line 373
    const-string v0, "Main"

    const-string v1, "interstitial ad failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main$2;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Main;->queueAd1()V

    .line 375
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 387
    const-string v0, "Main"

    const-string v1, "********* onReceiveAd 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method
