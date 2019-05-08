.class Lcom/akura/anime/activities/MP3Main$5;
.super Ljava/lang/Object;
.source "MP3Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Main;->queueAd2()V
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
    .line 459
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Main$5;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main$5;->this$0:Lcom/akura/anime/activities/MP3Main;

    const/4 v1, 0x0

    # setter for: Lcom/akura/anime/activities/MP3Main;->adInter2Queued:Z
    invoke-static {v0, v1}, Lcom/akura/anime/activities/MP3Main;->access$302(Lcom/akura/anime/activities/MP3Main;Z)Z

    .line 464
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main$5;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Main;->loadAd2()V

    .line 465
    return-void
.end method
