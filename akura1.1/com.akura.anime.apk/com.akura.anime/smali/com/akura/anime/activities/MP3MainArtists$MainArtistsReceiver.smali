.class Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MP3MainArtists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3MainArtists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainArtistsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3MainArtists;


# direct methods
.method private constructor <init>(Lcom/akura/anime/activities/MP3MainArtists;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;->this$0:Lcom/akura/anime/activities/MP3MainArtists;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akura/anime/activities/MP3MainArtists;Lcom/akura/anime/activities/MP3MainArtists$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akura/anime/activities/MP3MainArtists;
    .param p2, "x1"    # Lcom/akura/anime/activities/MP3MainArtists$1;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;-><init>(Lcom/akura/anime/activities/MP3MainArtists;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "action":Ljava/lang/String;
    const-string v7, "tab"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "tabid":Ljava/lang/String;
    const-string v7, "com.rock.mp3player.intent.artists.switch"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    iget-object v7, p0, Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;->this$0:Lcom/akura/anime/activities/MP3MainArtists;

    # getter for: Lcom/akura/anime/activities/MP3MainArtists;->tab:Landroid/widget/TabHost;
    invoke-static {v7}, Lcom/akura/anime/activities/MP3MainArtists;->access$100(Lcom/akura/anime/activities/MP3MainArtists;)Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 186
    const-string v7, "Songs"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 188
    const-string v7, "id"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 189
    .local v2, "artistId":J
    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "artistName":Ljava/lang/String;
    const-string v7, "track"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 192
    .local v6, "trackIndex":I
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.rock.mp3player.intent.songs.tab"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v7, "id"

    invoke-virtual {v4, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    const-string v7, "name"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v7, "track"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    iget-object v7, p0, Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;->this$0:Lcom/akura/anime/activities/MP3MainArtists;

    invoke-virtual {v7, v4}, Lcom/akura/anime/activities/MP3MainArtists;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    iget-object v7, p0, Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;->this$0:Lcom/akura/anime/activities/MP3MainArtists;

    const-string v8, "Anime"

    invoke-static {v7, v8}, Lcom/akura/anime/MP3PlayerApp;->switchMainTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "artistName":Ljava/lang/String;
    .end local v2    # "artistId":J
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v5    # "tabid":Ljava/lang/String;
    .end local v6    # "trackIndex":I
    :cond_0
    return-void
.end method
