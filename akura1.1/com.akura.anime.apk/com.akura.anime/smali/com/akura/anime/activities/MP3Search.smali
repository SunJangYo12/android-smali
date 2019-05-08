.class public Lcom/akura/anime/activities/MP3Search;
.super Landroid/app/Activity;
.source "MP3Search.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akura/anime/activities/MP3Search$ArtistLoader;,
        Lcom/akura/anime/activities/MP3Search$SearchLoader;,
        Lcom/akura/anime/activities/MP3Search$SearchListAdapter;,
        Lcom/akura/anime/activities/MP3Search$ViewHolder;
    }
.end annotation


# static fields
.field private static final MENU_ITEM_CLOSE:I = 0x2

.field private static final MENU_ITEM_RELOAD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MP3Search"


# instance fields
.field private artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Artist;",
            ">;"
        }
    .end annotation
.end field

.field private artistsMode:Z

.field private artistsRadio:Landroid/widget/RadioButton;

.field private currentIndex:I

.field private genre:Lcom/akura/anime/objects/MP3Genre;

.field private infoText:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private mAd:Lcom/google/android/gms/ads/AdView;

.field private mTask1:Lcom/akura/anime/activities/MP3Search$SearchLoader;

.field private mTask2:Lcom/akura/anime/activities/MP3Search$ArtistLoader;

.field public offset:I

.field private phrase:Ljava/lang/String;

.field private phraseEdit:Landroid/widget/EditText;

.field private progressBar:Landroid/widget/ProgressBar;

.field private searchAdapter:Lcom/akura/anime/activities/MP3Search$SearchListAdapter;

.field private searchGroup:Landroid/widget/RadioGroup;

.field private songs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akura/anime/database/MP3Track;",
            ">;"
        }
    .end annotation
.end field

.field private songsRadio:Landroid/widget/RadioButton;

.field private startButton:Landroid/widget/ImageButton;

.field private titleText:Landroid/widget/TextView;

.field public total:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/akura/anime/activities/MP3Search;->mTask1:Lcom/akura/anime/activities/MP3Search$SearchLoader;

    .line 54
    iput-object v1, p0, Lcom/akura/anime/activities/MP3Search;->mTask2:Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    .line 56
    iput-object v1, p0, Lcom/akura/anime/activities/MP3Search;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->songs:Ljava/util/List;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsMode:Z

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/akura/anime/activities/MP3Search;->offset:I

    .line 83
    iput-object v1, p0, Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;

    return-void
.end method

.method static synthetic access$000(Lcom/akura/anime/activities/MP3Search;)Z
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Search;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Search;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akura/anime/activities/MP3Search;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Search;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->songs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Search;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Search;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akura/anime/activities/MP3Search;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Search;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akura/anime/activities/MP3Search;)Lcom/akura/anime/objects/MP3Genre;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Search;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;

    return-object v0
.end method

.method static synthetic access$702(Lcom/akura/anime/activities/MP3Search;Lcom/akura/anime/activities/MP3Search$SearchLoader;)Lcom/akura/anime/activities/MP3Search$SearchLoader;
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Search;
    .param p1, "x1"    # Lcom/akura/anime/activities/MP3Search$SearchLoader;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Search;->mTask1:Lcom/akura/anime/activities/MP3Search$SearchLoader;

    return-object p1
.end method

.method static synthetic access$802(Lcom/akura/anime/activities/MP3Search;Lcom/akura/anime/activities/MP3Search$ArtistLoader;)Lcom/akura/anime/activities/MP3Search$ArtistLoader;
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Search;
    .param p1, "x1"    # Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Search;->mTask2:Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    return-object p1
.end method


# virtual methods
.method public closeTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 168
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mTask1:Lcom/akura/anime/activities/MP3Search$SearchLoader;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mTask1:Lcom/akura/anime/activities/MP3Search$SearchLoader;

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Search$SearchLoader;->cancel(Z)Z

    .line 171
    iput-object v2, p0, Lcom/akura/anime/activities/MP3Search;->mTask1:Lcom/akura/anime/activities/MP3Search$SearchLoader;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mTask2:Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mTask2:Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->cancel(Z)Z

    .line 177
    iput-object v2, p0, Lcom/akura/anime/activities/MP3Search;->mTask2:Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    .line 180
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 164
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsMode:Z

    .line 260
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->searchAdapter:Lcom/akura/anime/activities/MP3Search$SearchListAdapter;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->startButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 199
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->interstitial(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search;->search()V

    .line 203
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/akura/anime/activities/MP3Search;->overridePendingTransition(II)V

    .line 92
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->setContentView(I)V

    .line 98
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->phraseEdit:Landroid/widget/EditText;

    .line 99
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->phraseEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 102
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->titleText:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->infoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->progressBar:Landroid/widget/ProgressBar;

    .line 110
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->searchGroup:Landroid/widget/RadioGroup;

    .line 113
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsRadio:Landroid/widget/RadioButton;

    .line 114
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->songsRadio:Landroid/widget/RadioButton;

    .line 115
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->songsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    .line 119
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 120
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 121
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 122
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    new-instance v0, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;-><init>(Lcom/akura/anime/activities/MP3Search;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->searchAdapter:Lcom/akura/anime/activities/MP3Search$SearchListAdapter;

    .line 125
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search;->searchAdapter:Lcom/akura/anime/activities/MP3Search$SearchListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->startButton:Landroid/widget/ImageButton;

    .line 128
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->startButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 131
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mAd:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 210
    const v0, 0x7f060048

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020032

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 212
    const/4 v0, 0x2

    const v1, 0x7f060024

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 214
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mAd:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search;->closeTask()V

    .line 158
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 185
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search;->search()V

    .line 188
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .local p1, "adp":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 233
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    .line 234
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 236
    iget-boolean v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsMode:Z

    if-eqz v0, :cond_1

    move-object v6, v7

    .line 238
    check-cast v6, Lcom/akura/anime/database/MP3Artist;

    .line 240
    .local v6, "artist":Lcom/akura/anime/database/MP3Artist;
    const-string v1, "Songs"

    invoke-virtual {v6}, Lcom/akura/anime/database/MP3Artist;->getArtist()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/akura/anime/database/MP3Artist;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/akura/anime/MP3PlayerApp;->switchArtistsTab(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V

    .line 253
    .end local v6    # "artist":Lcom/akura/anime/database/MP3Artist;
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v8, v7

    .line 245
    check-cast v8, Lcom/akura/anime/database/MP3Track;

    .line 247
    .local v8, "track":Lcom/akura/anime/database/MP3Track;
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search;->closeTask()V

    .line 249
    new-instance v0, Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    invoke-direct {v0, p0, p0, v8}, Lcom/akura/anime/activities/MP3Search$ArtistLoader;-><init>(Lcom/akura/anime/activities/MP3Search;Landroid/content/Context;Lcom/akura/anime/database/MP3Track;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mTask2:Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    .line 250
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mTask2:Lcom/akura/anime/activities/MP3Search$ArtistLoader;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Search$ArtistLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 223
    :pswitch_0
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->close(Landroid/content/Context;)V

    .line 224
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->getCurrentGenre(Landroid/content/Context;)Lcom/akura/anime/objects/MP3Genre;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;

    .line 140
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->titleText:Landroid/widget/TextView;

    const-string v1, "%s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/akura/anime/activities/MP3Search;->genre:Lcom/akura/anime/objects/MP3Genre;

    iget-object v4, v4, Lcom/akura/anime/objects/MP3Genre;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void
.end method

.method public search()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Search;->closeTask()V

    .line 267
    iget-boolean v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsMode:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->artists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->searchAdapter:Lcom/akura/anime/activities/MP3Search$SearchListAdapter;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->notifyDataSetChanged()V

    .line 274
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->phraseEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->phrase:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/akura/anime/activities/MP3Search;->artistsMode:Z

    .line 277
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    invoke-static {p0, v0}, Lcom/akura/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 279
    new-instance v0, Lcom/akura/anime/activities/MP3Search$SearchLoader;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search;->phrase:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lcom/akura/anime/activities/MP3Search$SearchLoader;-><init>(Lcom/akura/anime/activities/MP3Search;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mTask1:Lcom/akura/anime/activities/MP3Search$SearchLoader;

    .line 280
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->mTask1:Lcom/akura/anime/activities/MP3Search$SearchLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/akura/anime/activities/MP3Search$SearchLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 281
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Search;->songs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 286
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 287
    iget v0, p0, Lcom/akura/anime/activities/MP3Search;->currentIndex:I

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search;->searchAdapter:Lcom/akura/anime/activities/MP3Search$SearchListAdapter;

    invoke-virtual {v1}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->notifyDataSetChanged()V

    .line 291
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search;->searchAdapter:Lcom/akura/anime/activities/MP3Search$SearchListAdapter;

    invoke-virtual {v1}, Lcom/akura/anime/activities/MP3Search$SearchListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Search;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 293
    :cond_1
    return-void
.end method
