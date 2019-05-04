.class Lcom/akura/anime/MP3PlayerService$2;
.super Ljava/lang/Object;
.source "MP3PlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/MP3PlayerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/MP3PlayerService;


# direct methods
.method constructor <init>(Lcom/akura/anime/MP3PlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/MP3PlayerService;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/akura/anime/MP3PlayerService$2;->this$0:Lcom/akura/anime/MP3PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/akura/anime/MP3PlayerService$2;->this$0:Lcom/akura/anime/MP3PlayerService;

    invoke-virtual {v0}, Lcom/akura/anime/MP3PlayerService;->playAsync()V

    .line 207
    return-void
.end method
