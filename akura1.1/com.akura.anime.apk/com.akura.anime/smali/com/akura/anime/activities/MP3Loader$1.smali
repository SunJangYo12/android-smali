.class Lcom/akura/anime/activities/MP3Loader$1;
.super Landroid/os/CountDownTimer;
.source "MP3Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Loader;->startCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Loader;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Loader;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Loader;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 66
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Loader$1;->this$0:Lcom/akura/anime/activities/MP3Loader;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Loader$1;->this$0:Lcom/akura/anime/activities/MP3Loader;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Loader;->reset()V

    .line 71
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Loader$1;->this$0:Lcom/akura/anime/activities/MP3Loader;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Loader;->startApp()V

    .line 72
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 77
    return-void
.end method
