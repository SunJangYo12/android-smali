.class public Lcom/akura/anime/activities/MP3Close;
.super Landroid/app/Activity;
.source "MP3Close.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MP3Share"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/akura/anime/activities/MP3Close;->overridePendingTransition(II)V

    .line 19
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Close;->setContentView(I)V

    .line 21
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 28
    return-void
.end method
