.class Lcom/akura/stream/MP3Player$1;
.super Ljava/lang/Object;
.source "MP3Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/stream/MP3Player;->playAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/stream/MP3Player;


# direct methods
.method constructor <init>(Lcom/akura/stream/MP3Player;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/stream/MP3Player;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/akura/stream/MP3Player$1;->this$0:Lcom/akura/stream/MP3Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I

    .prologue
    .line 188
    return-void
.end method
