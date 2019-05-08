.class Lcom/akura/anime/activities/MP3Contact$EmailTask$1;
.super Ljava/lang/Object;
.source "MP3Contact.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Contact$EmailTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akura/anime/activities/MP3Contact$EmailTask;


# direct methods
.method constructor <init>(Lcom/akura/anime/activities/MP3Contact$EmailTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/akura/anime/activities/MP3Contact$EmailTask;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask$1;->this$1:Lcom/akura/anime/activities/MP3Contact$EmailTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask$1;->this$1:Lcom/akura/anime/activities/MP3Contact$EmailTask;

    iget-object v0, v0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    const/4 v1, 0x0

    # setter for: Lcom/akura/anime/activities/MP3Contact;->emailing:Z
    invoke-static {v0, v1}, Lcom/akura/anime/activities/MP3Contact;->access$102(Lcom/akura/anime/activities/MP3Contact;Z)Z

    .line 205
    return-void
.end method
