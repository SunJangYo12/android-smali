.class public Lcom/akura/anime/activities/MP3Intro;
.super Landroid/app/Activity;
.source "MP3Intro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akura/anime/activities/MP3Intro$AdLoader;
    }
.end annotation


# static fields
.field private static final SPLASH_DELAY:J = 0xbb8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/akura/anime/activities/MP3Intro;->overridePendingTransition(II)V

    .line 30
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Intro;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Intro;->startIntro()V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    return-void
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Intro;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public openGooglePlay(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Intro;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public startAd(Ljava/lang/String;)V
    .locals 5
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Intro;->openBrowser(Ljava/lang/String;)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Intro;->finish()V

    .line 109
    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {p0, v3, v4}, Lcom/akura/anime/activities/MP3Intro;->overridePendingTransition(II)V

    .line 110
    return-void

    .line 101
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/akura/anime/activities/MP3Intro;->openGooglePlay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Intro;->openBrowser(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startApp()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/activities/MP3Loader;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Intro;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Intro;->finish()V

    .line 86
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/akura/anime/activities/MP3Intro;->overridePendingTransition(II)V

    .line 87
    return-void
.end method

.method public startIntro()V
    .locals 6

    .prologue
    .line 51
    new-instance v0, Lcom/akura/anime/activities/MP3Intro$1;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/akura/anime/activities/MP3Intro$1;-><init>(Lcom/akura/anime/activities/MP3Intro;JJ)V

    .line 64
    .local v0, "timer":Landroid/os/CountDownTimer;
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 65
    return-void
.end method

.method public startMain()V
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/akura/anime/MP3Prefs;->getGenre(Landroid/content/Context;)I

    move-result v0

    .line 70
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Intro;->startValidator()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Intro;->startApp()V

    goto :goto_0
.end method

.method public startValidator()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/akura/anime/activities/MP3Intro$AdLoader;

    invoke-direct {v0, p0, p0}, Lcom/akura/anime/activities/MP3Intro$AdLoader;-><init>(Lcom/akura/anime/activities/MP3Intro;Landroid/content/Context;)V

    .line 134
    .local v0, "loader":Lcom/akura/anime/activities/MP3Intro$AdLoader;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Intro$AdLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    return-void
.end method
