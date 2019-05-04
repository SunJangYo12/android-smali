.class Lcom/akura/anime/activities/MP3Ad$2;
.super Landroid/webkit/WebViewClient;
.source "MP3Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Ad;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Ad;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Ad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Ad;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Ad$2;->this$0:Lcom/akura/anime/activities/MP3Ad;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Ad$2;->this$0:Lcom/akura/anime/activities/MP3Ad;

    # getter for: Lcom/akura/anime/activities/MP3Ad;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Ad;->access$000(Lcom/akura/anime/activities/MP3Ad;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method
