.class Lcom/akura/anime/activities/MP3Main$MainReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MP3Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Main;


# direct methods
.method private constructor <init>(Lcom/akura/anime/activities/MP3Main;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Main$MainReceiver;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akura/anime/activities/MP3Main;Lcom/akura/anime/activities/MP3Main$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akura/anime/activities/MP3Main;
    .param p2, "x1"    # Lcom/akura/anime/activities/MP3Main$1;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/akura/anime/activities/MP3Main$MainReceiver;-><init>(Lcom/akura/anime/activities/MP3Main;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 328
    if-eqz p2, :cond_0

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.rock.mp3player.intent.main.switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    const-string v2, "tab"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "tabid":Ljava/lang/String;
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Main$MainReceiver;->this$0:Lcom/akura/anime/activities/MP3Main;

    # getter for: Lcom/akura/anime/activities/MP3Main;->tab:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/akura/anime/activities/MP3Main;->access$100(Lcom/akura/anime/activities/MP3Main;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 346
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "tabid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 336
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "com.rock.mp3player.intent.ad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Main$MainReceiver;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-virtual {v2}, Lcom/akura/anime/activities/MP3Main;->showAd()V

    goto :goto_0

    .line 340
    :cond_2
    const-string v2, "com.rock.mp3player.intent.close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Main$MainReceiver;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-virtual {v2}, Lcom/akura/anime/activities/MP3Main;->close()V

    goto :goto_0
.end method
