.class Lcom/akura/anime/activities/MP3Web$1;
.super Landroid/webkit/WebChromeClient;
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
    .line 147
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Web$1;->this$0:Lcom/akura/anime/activities/MP3Web;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 150
    return-void
.end method
