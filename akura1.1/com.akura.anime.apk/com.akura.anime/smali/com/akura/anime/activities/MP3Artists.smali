.class public Lcom/akura/anime/activities/MP3Artists;
.super Landroid/app/Activity;
.source "MP3Artists.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;,
        Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;,
        Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;
    }
.end annotation


# static fields
.field private static final MENU_ITEM_CLOSE:I = 0x2

.field private static final MENU_ITEM_RELOAD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MP3Artists"

.field public static artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Artist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artistAdapter:Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;

.field private artistScroller:Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;

.field public clickIndex:I

.field private genre:Lcom/akura/anime/objects/MP3Genre;

.field private infoText:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private loading:Z

.field private mAd:Lcom/google/android/gms/ads/AdView;

.field private mTask:Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;

.field private offset:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private titleText:Landroid/widget/TextView;

.field private total:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v3, p0, Lcom/akura/anime/activities/MP3Artists;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 61
    iput v2, p0, Lcom/akura/anime/activities/MP3Artists;->offset:I

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/akura/anime/activities/MP3Artists;->total:J

    .line 65
    iput-boolean v2, p0, Lcom/akura/anime/activities/MP3Artists;->loading:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/akura/anime/activities/MP3Artists;->clickIndex:I

    .line 71
    iput-object v3, p0, Lcom/akura/anime/activities/MP3Artists;->genre:Lcom/akura/anime/objects/MP3Genre;

    return-void
.end method

.method static synthetic access$000(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akura/anime/activities/MP3Artists;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->infoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akura/anime/activities/MP3Artists;)Z
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/akura/anime/activities/MP3Artists;->loading:Z

    return v0
.end method

.method static synthetic access$302(Lcom/akura/anime/activities/MP3Artists;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/akura/anime/activities/MP3Artists;->loading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/akura/anime/activities/MP3Artists;)I
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;

    .prologue
    .line 42
    iget v0, p0, Lcom/akura/anime/activities/MP3Artists;->offset:I

    return v0
.end method

.method static synthetic access$402(Lcom/akura/anime/activities/MP3Artists;I)I
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/akura/anime/activities/MP3Artists;->offset:I

    return p1
.end method

.method static synthetic access$500(Lcom/akura/anime/activities/MP3Artists;)Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->artistAdapter:Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akura/anime/activities/MP3Artists;)Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->artistScroller:Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/akura/anime/activities/MP3Artists;J)J
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Artists;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/akura/anime/activities/MP3Artists;->total:J

    return-wide p1
.end method


# virtual methods
.method public loader()V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists;->unloader()V

    .line 254
    new-instance v0, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;

    invoke-direct {v0, p0, p0}, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;-><init>(Lcom/akura/anime/activities/MP3Artists;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->mTask:Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;

    .line 255
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->mTask:Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    return-void
.end method

.method public next()V
    .locals 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/akura/anime/activities/MP3Artists;->loading:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/akura/utils/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/akura/anime/activities/MP3Artists;->artists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists;->loader()V

    .line 238
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->interstitial(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 168
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/akura/anime/activities/MP3Artists;->overridePendingTransition(II)V

    .line 80
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Artists;->setContentView(I)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/akura/anime/activities/MP3Artists;->artists:Ljava/util/List;

    .line 84
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Artists;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->titleText:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->titleText:Landroid/widget/TextView;

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Artists;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->infoText:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->infoText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->infoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Artists;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->progressBar:Landroid/widget/ProgressBar;

    .line 92
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Artists;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 96
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 97
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 98
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 100
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/akura/anime/activities/MP3Artists$1;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Artists$1;-><init>(Lcom/akura/anime/activities/MP3Artists;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 116
    new-instance v0, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;-><init>(Lcom/akura/anime/activities/MP3Artists;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->artistAdapter:Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;

    .line 117
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists;->artistAdapter:Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    new-instance v0, Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;-><init>(Lcom/akura/anime/activities/MP3Artists;I)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->artistScroller:Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;

    .line 120
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Artists;->artistScroller:Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 122
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Artists;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 123
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->mAd:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 181
    const v0, 0x7f060048

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020032

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 183
    const/4 v0, 0x2

    const v1, 0x7f060024

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 185
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->mAd:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->mAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists;->unloader()V

    .line 162
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 207
    .local p1, "adp":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/akura/anime/activities/MP3Artists;->clickIndex:I

    .line 208
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->artistAdapter:Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->notifyDataSetChanged()V

    .line 210
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/akura/anime/database/MP3Artist;

    .line 211
    .local v6, "artist":Lcom/akura/anime/database/MP3Artist;
    if-eqz v6, :cond_0

    .line 213
    const-string v1, "Songs"

    invoke-virtual {v6}, Lcom/akura/anime/database/MP3Artist;->getArtist()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/akura/anime/database/MP3Artist;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/akura/anime/MP3PlayerApp;->switchArtistsTab(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V

    .line 215
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->interstitial(Landroid/content/Context;)V

    .line 217
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 194
    :pswitch_0
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists;->reload()V

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->close(Landroid/content/Context;)V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->getCurrentGenre(Landroid/content/Context;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->genre:Lcom/akura/anime/objects/MP3Genre;

    .line 135
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->genre:Lcom/akura/anime/objects/MP3Genre;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->titleText:Landroid/widget/TextView;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/akura/anime/activities/MP3Artists;->genre:Lcom/akura/anime/objects/MP3Genre;

    iget-object v4, v4, Lcom/akura/anime/objects/MP3Genre;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    sget-object v0, Lcom/akura/anime/activities/MP3Artists;->artists:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/akura/anime/activities/MP3Artists;->artists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists;->reload()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->artistAdapter:Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Artists$ArtistsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/akura/anime/activities/MP3Artists;->loading:Z

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/akura/anime/activities/MP3Artists;->offset:I

    .line 225
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Artists;->loader()V

    goto :goto_0
.end method

.method public unloader()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->mTask:Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->mTask:Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;->cancel(Z)Z

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Artists;->mTask:Lcom/akura/anime/activities/MP3Artists$ArtistsLoader;

    .line 248
    :cond_0
    return-void
.end method
