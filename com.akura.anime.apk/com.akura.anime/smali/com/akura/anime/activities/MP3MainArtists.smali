.class public Lcom/akura/anime/activities/MP3MainArtists;
.super Landroid/app/TabActivity;
.source "MP3MainArtists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;
    }
.end annotation


# static fields
.field public static final ID_ARTISTS:Ljava/lang/String; = "Artists"

.field public static final ID_SONGS:Ljava/lang/String; = "Songs"

.field public static final TAG:Ljava/lang/String; = "Main"


# instance fields
.field private mBroadcast:Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;

.field public songs:Lcom/akura/anime/activities/MP3Songs;

.field private tab:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/akura/anime/activities/MP3MainArtists;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3MainArtists;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/akura/anime/activities/MP3MainArtists;->tab:Landroid/widget/TabHost;

    return-object v0
.end method

.method private createTab(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconId"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3MainArtists;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 97
    .local v1, "inflator":Landroid/view/LayoutInflater;
    const v5, 0x7f03000e

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 98
    .local v3, "tabview":Landroid/view/View;
    const v5, 0x7f0a0023

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    .local v4, "text":Landroid/widget/TextView;
    const v5, 0x7f0a0022

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v5, p0, Lcom/akura/anime/activities/MP3MainArtists;->tab:Landroid/widget/TabHost;

    invoke-virtual {v5, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 104
    .local v2, "spec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 105
    invoke-virtual {v2, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 106
    return-object v2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3MainArtists;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f02004a

    .line 41
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sput-object p0, Lcom/akura/anime/MP3PlayerApp;->artistsTab:Lcom/akura/anime/activities/MP3MainArtists;

    .line 45
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/akura/anime/activities/MP3MainArtists;->mBroadcast:Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;

    .line 47
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3MainArtists;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3MainArtists;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/akura/anime/activities/MP3MainArtists;->tab:Landroid/widget/TabHost;

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/akura/anime/activities/MP3Artists;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/akura/anime/activities/MP3MainArtists;->tab:Landroid/widget/TabHost;

    const-string v3, "Artists"

    const-string v4, "Artists"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/akura/anime/activities/MP3MainArtists;->createTab(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 55
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v2, "id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 58
    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/akura/anime/activities/MP3MainArtists;->tab:Landroid/widget/TabHost;

    const-string v3, "Songs"

    const-string v4, "Artists"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/akura/anime/activities/MP3MainArtists;->createTab(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 61
    iget-object v2, p0, Lcom/akura/anime/activities/MP3MainArtists;->tab:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    .line 62
    .local v1, "widget":Landroid/widget/TabWidget;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 64
    iget-object v2, p0, Lcom/akura/anime/activities/MP3MainArtists;->tab:Landroid/widget/TabHost;

    const-string v3, "Songs"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/akura/anime/activities/MP3MainArtists;->tab:Landroid/widget/TabHost;

    const-string v3, "Artists"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/akura/anime/MP3PlayerApp;->alltracks:Ljava/util/HashMap;

    .line 69
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3MainArtists;->register()V

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 85
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3MainArtists;->unregister()V

    .line 86
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 129
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3MainArtists;->register()V

    .line 78
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/akura/anime/activities/MP3MainArtists;->mBroadcast:Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;

    if-eqz v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v1, Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;-><init>(Lcom/akura/anime/activities/MP3MainArtists;Lcom/akura/anime/activities/MP3MainArtists$1;)V

    iput-object v1, p0, Lcom/akura/anime/activities/MP3MainArtists;->mBroadcast:Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.rock.mp3player.intent.artists.switch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/akura/anime/activities/MP3MainArtists;->mBroadcast:Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/akura/anime/activities/MP3MainArtists;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/akura/anime/activities/MP3MainArtists;->mBroadcast:Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/akura/anime/activities/MP3MainArtists;->mBroadcast:Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3MainArtists;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3MainArtists;->mBroadcast:Lcom/akura/anime/activities/MP3MainArtists$MainArtistsReceiver;

    .line 171
    :cond_0
    return-void
.end method
