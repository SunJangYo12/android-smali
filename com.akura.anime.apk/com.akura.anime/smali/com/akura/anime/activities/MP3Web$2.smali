.class Lcom/akura/anime/activities/MP3Web$2;
.super Landroid/webkit/WebViewClient;
.source "MP3Web.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Web;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Web;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Web;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Web;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Web$2;->this$0:Lcom/akura/anime/activities/MP3Web;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Web$2;->this$0:Lcom/akura/anime/activities/MP3Web;

    # getter for: Lcom/akura/anime/activities/MP3Web;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Web;->access$000(Lcom/akura/anime/activities/MP3Web;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    return v0
.end method
