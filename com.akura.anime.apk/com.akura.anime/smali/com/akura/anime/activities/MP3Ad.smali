.class public Lcom/akura/anime/activities/MP3Ad;
.super Landroid/app/Activity;
.source "MP3Ad.java"


# static fields
.field private static final MENU_ITEM_CLOSE:I = 0x140

.field public static final TAG:Ljava/lang/String; = "MP3Ad"


# instance fields
.field private mProgress:Landroid/widget/ProgressBar;

.field private mWeb:Landroid/webkit/WebView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/akura/anime/activities/MP3Ad;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Ad;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private reload()V
    .locals 3

    .prologue
    .line 152
    invoke-static {p0}, Lcom/akura/utils/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Ad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Ad;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/akura/utils/Utils;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 160
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Ad;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    const v1, -0x888889

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 106
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 108
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 111
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 113
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 116
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 117
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 119
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    new-instance v1, Lcom/akura/anime/activities/MP3Ad$1;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Ad$1;-><init>(Lcom/akura/anime/activities/MP3Ad;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 126
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    new-instance v1, Lcom/akura/anime/activities/MP3Ad$2;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Ad$2;-><init>(Lcom/akura/anime/activities/MP3Ad;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 148
    return-void
.end method

.method private startApp()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/activities/MP3Loader;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Ad;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Ad;->finish()V

    .line 171
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/akura/anime/activities/MP3Ad;->overridePendingTransition(II)V

    .line 172
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Ad;->stopService(Landroid/content/Intent;)Z

    .line 100
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Ad;->finish()V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/akura/anime/activities/MP3Ad;->overridePendingTransition(II)V

    .line 37
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Ad;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Ad;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 43
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Ad;->url:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Ad;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Ad;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Ad;->startApp()V

    .line 49
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Ad;->finish()V

    .line 51
    :cond_2
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Ad;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Ad;->mProgress:Landroid/widget/ProgressBar;

    .line 52
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Ad;->mProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Ad;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Ad;->mWeb:Landroid/webkit/WebView;

    .line 56
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Ad;->setup()V

    .line 58
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Ad;->reload()V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 79
    const/16 v0, 0x140

    const v1, 0x7f060024

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 72
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Ad;->close()V

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x140
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    return-void
.end method
