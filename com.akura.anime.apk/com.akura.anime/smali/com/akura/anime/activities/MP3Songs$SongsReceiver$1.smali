.class Lcom/akura/anime/activities/MP3Songs$SongsReceiver$1;
.super Ljava/lang/Object;
.source "MP3Songs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

.field final synthetic val$index:J


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Songs$SongsReceiver;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver$1;->this$1:Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

    iput-wide p2, p0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver$1;->val$index:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver$1;->this$1:Lcom/akura/anime/activities/MP3Songs$SongsReceiver;

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver;->this$0:Lcom/akura/anime/activities/MP3Songs;

    iget-wide v2, p0, Lcom/akura/anime/activities/MP3Songs$SongsReceiver$1;->val$index:J

    long-to-int v1, v2

    # invokes: Lcom/akura/anime/activities/MP3Songs;->showIndex(I)V
    invoke-static {v0, v1}, Lcom/akura/anime/activities/MP3Songs;->access$1900(Lcom/akura/anime/activities/MP3Songs;I)V

    .line 1609
    return-void
.end method
