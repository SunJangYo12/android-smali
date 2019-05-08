.class public Lcom/akura/anime/activities/MP3Contact;
.super Landroid/app/Activity;
.source "MP3Contact.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akura/anime/activities/MP3Contact$EmailTask;,
        Lcom/akura/anime/activities/MP3Contact$EmailMessage;
    }
.end annotation


# static fields
.field private static final MENU_ITEM_CLOSE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MP3Contact"


# instance fields
.field private emailing:Z

.field private mAd:Lcom/google/android/gms/ads/AdView;

.field private mBtSend:Landroid/widget/Button;

.field private mEtEmail:Landroid/widget/EditText;

.field private mEtMessage:Landroid/widget/EditText;

.field private mEtName:Landroid/widget/EditText;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mTvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Contact;->mAd:Lcom/google/android/gms/ads/AdView;

    return-void
.end method

.method static synthetic access$102(Lcom/akura/anime/activities/MP3Contact;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Contact;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/akura/anime/activities/MP3Contact;->emailing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/akura/anime/activities/MP3Contact;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Contact;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact;->mTvStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akura/anime/activities/MP3Contact;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Contact;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact;->mEtName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akura/anime/activities/MP3Contact;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Contact;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact;->mEtEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akura/anime/activities/MP3Contact;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/akura/anime/activities/MP3Contact;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact;->mEtMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method private sendMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 133
    const-string v5, ""

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 135
    .local v4, "toast":Landroid/widget/Toast;
    iget-boolean v5, p0, Lcom/akura/anime/activities/MP3Contact;->emailing:Z

    if-eqz v5, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Contact;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 171
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Contact;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Contact;->mEtEmail:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "email":Ljava/lang/String;
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Contact;->mEtMessage:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 148
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Contact;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 149
    const v5, 0x7f060061

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    .line 150
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 155
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Contact;->mEtEmail:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 156
    const v5, 0x7f06005f

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    .line 157
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 162
    iget-object v5, p0, Lcom/akura/anime/activities/MP3Contact;->mEtMessage:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 163
    const v5, 0x7f060060

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    .line 164
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_3
    new-instance v2, Lcom/akura/anime/activities/MP3Contact$EmailMessage;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/akura/anime/activities/MP3Contact$EmailMessage;-><init>(Lcom/akura/anime/activities/MP3Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v2, "msg":Lcom/akura/anime/activities/MP3Contact$EmailMessage;
    new-instance v5, Lcom/akura/anime/activities/MP3Contact$EmailTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/akura/anime/activities/MP3Contact$EmailTask;-><init>(Lcom/akura/anime/activities/MP3Contact;Lcom/akura/anime/activities/MP3Contact$1;)V

    new-array v6, v7, [Lcom/akura/anime/activities/MP3Contact$EmailMessage;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Lcom/akura/anime/activities/MP3Contact$EmailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Contact;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact;->mBtSend:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/akura/anime/activities/MP3Contact;->sendMessage()V

    .line 107
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/akura/anime/activities/MP3Contact;->overridePendingTransition(II)V

    .line 53
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Contact;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/akura/anime/activities/MP3Contact;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 61
    :cond_0
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Contact;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mProgress:Landroid/widget/ProgressBar;

    .line 62
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Contact;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/AdView;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mAd:Lcom/google/android/gms/ads/AdView;

    .line 65
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mAd:Lcom/google/android/gms/ads/AdView;

    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 67
    const v2, 0x7f0a0012

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Contact;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mEtName:Landroid/widget/EditText;

    .line 68
    const v2, 0x7f0a0014

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Contact;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mEtMessage:Landroid/widget/EditText;

    .line 69
    const v2, 0x7f0a0013

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Contact;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mEtEmail:Landroid/widget/EditText;

    .line 70
    const v2, 0x7f0a0016

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Contact;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mTvStatus:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0a0015

    invoke-virtual {p0, v2}, Lcom/akura/anime/activities/MP3Contact;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mBtSend:Landroid/widget/Button;

    .line 73
    iget-object v2, p0, Lcom/akura/anime/activities/MP3Contact;->mBtSend:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 114
    const/4 v0, 0x2

    const v1, 0x7f060024

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact;->mAd:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact;->mAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 92
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 125
    :pswitch_0
    invoke-static {p0}, Lcom/akura/anime/MP3PlayerApp;->close(Landroid/content/Context;)V

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    return-void
.end method
