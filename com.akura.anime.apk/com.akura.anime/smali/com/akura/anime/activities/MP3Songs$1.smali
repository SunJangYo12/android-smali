.class Lcom/akura/anime/activities/MP3Songs$1;
.super Ljava/lang/Object;
.source "MP3Songs.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Songs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Songs;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Songs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Songs;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$1;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 173
    if-eqz p3, :cond_0

    sget-boolean v1, Lcom/akura/anime/MP3PlayerService;->isStartedPlay:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$1;->this$0:Lcom/akura/anime/activities/MP3Songs;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/akura/anime/activities/MP3Songs;->seeking:Z

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$1;->this$0:Lcom/akura/anime/activities/MP3Songs;

    const-class v2, Lcom/akura/anime/MP3PlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "seek"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v1, "mode"

    iget-object v2, p0, Lcom/akura/anime/activities/MP3Songs$1;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # getter for: Lcom/akura/anime/activities/MP3Songs;->mode:I
    invoke-static {v2}, Lcom/akura/anime/activities/MP3Songs;->access$000(Lcom/akura/anime/activities/MP3Songs;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Songs$1;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-virtual {v1, v0}, Lcom/akura/anime/activities/MP3Songs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 168
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 162
    return-void
.end method
