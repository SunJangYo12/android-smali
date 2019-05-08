.class public Lcom/akura/anime/activities/MP3Loader;
.super Landroid/app/Activity;
.source "MP3Loader.java"


# static fields
.field private static final SPLASH_DELAY:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "MP3Loader"


# instance fields
.field private mGenre:Lcom/akura/anime/objects/MP3Genre;

.field private mImageGenre:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Loader;->stopService(Landroid/content/Intent;)Z

    .line 113
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Loader;->finish()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/akura/anime/activities/MP3Loader;->overridePendingTransition(II)V

    .line 32
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/akura/anime/activities/MP3Loader;->setContentView(I)V

    .line 33
    const v1, 0x7f0a0017

    invoke-virtual {p0, v1}, Lcom/akura/anime/activities/MP3Loader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/akura/anime/activities/MP3Loader;->mImageGenre:Landroid/widget/ImageView;

    .line 35
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->getCurrentGenre(Landroid/content/Context;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v1

    iput-object v1, p0, Lcom/akura/anime/activities/MP3Loader;->mGenre:Lcom/akura/anime/objects/MP3Genre;

    .line 36
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Loader;->mGenre:Lcom/akura/anime/objects/MP3Genre;

    if-nez v1, :cond_0

    .line 38
    const-string v1, "Invalid genre!"

    invoke-static {p0, v1}, Lcom/akura/utils/Utils;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Loader;->close()V

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Loader;->mImageGenre:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Loader;->mGenre:Lcom/akura/anime/objects/MP3Genre;

    iget v2, v2, Lcom/akura/anime/objects/MP3Genre;->image:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Loader;->stopService(Landroid/content/Intent;)Z

    .line 48
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Loader;->startCount()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 89
    :cond_0
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->homes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    :cond_1
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Lcom/akura/anime/MP3PlayerApp;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    :cond_2
    return-void
.end method

.method public startApp()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/activities/MP3Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Loader;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Loader;->finish()V

    .line 105
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/akura/anime/activities/MP3Loader;->overridePendingTransition(II)V

    .line 107
    return-void
.end method

.method public startCount()V
    .locals 6

    .prologue
    .line 65
    new-instance v0, Lcom/akura/anime/activities/MP3Loader$1;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/akura/anime/activities/MP3Loader$1;-><init>(Lcom/akura/anime/activities/MP3Loader;JJ)V

    .line 79
    .local v0, "timer":Landroid/os/CountDownTimer;
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 80
    return-void
.end method
