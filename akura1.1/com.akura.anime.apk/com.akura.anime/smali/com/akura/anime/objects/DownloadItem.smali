.class public Lcom/akura/anime/objects/DownloadItem;
.super Ljava/lang/Object;
.source "DownloadItem.java"


# instance fields
.field public path:Ljava/lang/String;

.field public read:J

.field public size:J

.field public task:Lcom/akura/anime/MP3Downloader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "track"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/akura/anime/objects/DownloadItem;->path:Ljava/lang/String;

    .line 16
    iput-wide v0, p0, Lcom/akura/anime/objects/DownloadItem;->read:J

    .line 17
    iput-wide v0, p0, Lcom/akura/anime/objects/DownloadItem;->size:J

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/anime/objects/DownloadItem;->task:Lcom/akura/anime/MP3Downloader;

    .line 19
    return-void
.end method
