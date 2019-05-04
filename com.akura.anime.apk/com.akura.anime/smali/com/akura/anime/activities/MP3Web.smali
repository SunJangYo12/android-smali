.class public Lcom/akura/anime/activities/MP3Web;
.super Landroid/app/Activity;
.source "MP3Web.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_ITEM_CLOSE:I = 0x2

.field private static final MENU_ITEM_RELOAD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MP3Web"


# instance fields
.field private mAd:Lcom/google/android/gms/ads/AdView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mTitle:Landroid/widget/TextView;

.field private mWeb:Landroid/webkit/WebView;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mAd:Lcom/google/android/gms/ads/AdView;

    return-void
.end method

.method static synthetic access$000(Lcom/akura/anime/activities/MP3Web;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Web;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private reload()V
    .locals 3

    .prologue
    .line 178
    invoke-static {p0}, Lcom/akura/utils/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Web;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Web;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/akura/utils/Utils;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 186
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Web;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    const v1, -0x888889

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 133
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 135
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 138
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 140
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 143
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 144
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 146
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    new-instance v1, Lcom/akura/anime/activities/MP3Web$1;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Web$1;-><init>(Lcom/akura/anime/activities/MP3Web;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 153
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    new-instance v1, Lcom/akura/anime/activities/MP3Web$2;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Web$2;-><init>(Lcom/akura/anime/activities/MP3Web;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Web;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/akura/anime/activities/MP3Web;->overridePendingTransition(II)V

    .line 49
    const v2, 0x7f030011

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Web;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Web;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 55
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Web;->title:Ljava/lang/String;

    .line 56
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Web;->url:Ljava/lang/String;

    .line 59
    :cond_0
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Web;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Web;->mProgress:Landroid/widget/ProgressBar;

    .line 60
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Web;->mProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Web;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/AdView;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Web;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 63
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Web;->mAd:Lcom/google/android/gms/ads/AdView;

    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 65
    const v2, 0x7f0a000c

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Web;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Web;->mTitle:Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Web;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/akura/anime/activities/MP3Web;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Web;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Web;->mWeb:Landroid/webkit/WebView;

    .line 70
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Web;->setup()V

    .line 72
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Web;->reload()V

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 108
    const v0, 0x7f060048

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020032

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 110
    const/4 v0, 0x2

    const v1, 0x7f060024

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 112
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mAd:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web;->mAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 90
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Web;->reload()V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->close(Landroid/content/Context;)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    return-void
.end method
