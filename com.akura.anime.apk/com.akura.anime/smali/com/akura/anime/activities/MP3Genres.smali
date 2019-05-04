.class public Lcom/akura/anime/activities/MP3Genres;
.super Landroid/app/Activity;
.source "MP3Genres.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;
    }
.end annotation


# static fields
.field private static final MENU_ITEM_CLOSE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MP3Genres"


# instance fields
.field private mAd:Lcom/google/android/gms/ads/AdView;

.field private mAdapter:Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;

.field private mList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mAd:Lcom/google/android/gms/ads/AdView;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Genres;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Genres;->setContentView(I)V

    .line 45
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Genres;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mList:Landroid/widget/ListView;

    .line 46
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 47
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 48
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    new-instance v0, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;-><init>(Lcom/akura/anime/activities/MP3Genres;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mAdapter:Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;

    .line 51
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Genres;->mAdapter:Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Genres;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 54
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mAd:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 85
    const/4 v0, 0x2

    const v1, 0x7f060024

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mAd:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 72
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "adp":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->interstitial(Landroid/content/Context;)V

    .line 106
    invoke-static {p0}, Lcom/akura/anime/MP3Prefs;->getGenre(Landroid/content/Context;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p0, p3}, Lcom/akura/anime/MP3Prefs;->setGenre(Landroid/content/Context;I)V

    .line 112
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Genres;->updateList()V

    .line 113
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Genres;->startApp()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 95
    :pswitch_0
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->close(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    return-void
.end method

.method public startApp()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akura/anime/activities/MP3Loader;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Genres;->startActivity(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Genres;->finish()V

    .line 121
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Genres;->mAdapter:Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Genres$GenreListAdapter;->notifyDataSetChanged()V

    .line 126
    return-void
.end method
