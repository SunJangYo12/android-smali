.class Lcom/akura/anime/activities/MP3Intro$1;
.super Landroid/os/CountDownTimer;
.source "MP3Intro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Intro;->startIntro()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Intro;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Intro;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Intro;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 52
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Intro$1;->this$0:Lcom/akura/anime/activities/MP3Intro;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Intro$1;->this$0:Lcom/akura/anime/activities/MP3Intro;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Intro;->startValidator()V

    .line 57
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 62
    return-void
.end method
