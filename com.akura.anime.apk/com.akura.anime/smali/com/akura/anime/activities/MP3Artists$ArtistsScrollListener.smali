.class public Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;
.super Lcom/akura/anime/objects/ListScrollListener;
.source "MP3Artists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Artists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArtistsScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Artists;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Artists;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Artists;
    .param p2, "visibleThreshold"    # I

    .prologue
    .line 261
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;->this$0:Lcom/akura/anime/activities/MP3Artists;

    .line 262
    invoke-direct {p0, p2}, Lcom/akura/anime/objects/ListScrollListener;-><init>(I)V

    .line 263
    return-void
.end method


# virtual methods
.method public onFirst(Z)V
    .locals 0
    .param p1, "yes"    # Z

    .prologue
    .line 288
    return-void
.end method

.method public onMore(I)V
    .locals 1
    .param p1, "actual"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Artists$ArtistsScrollListener;->this$0:Lcom/akura/anime/activities/MP3Artists;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Artists;->next()V

    .line 269
    return-void
.end method
