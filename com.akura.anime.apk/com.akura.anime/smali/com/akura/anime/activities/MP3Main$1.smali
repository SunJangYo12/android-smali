.class Lcom/akura/anime/activities/MP3Main$1;
.super Ljava/lang/Object;
.source "MP3Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Main;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Main;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Main;)V
    .locals 0
    .param p1, "this$0"    # Lcom/akura/anime/activities/MP3Main;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Main$1;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Main$1;->this$0:Lcom/akura/anime/activities/MP3Main;

    invoke-virtual {v0}, Lcom/akura/anime/activities/MP3Main;->close()V

    .line 278
    return-void
.end method
