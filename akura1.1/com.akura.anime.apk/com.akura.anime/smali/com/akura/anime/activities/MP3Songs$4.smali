.class Lcom/akura/anime/activities/MP3Songs$4;
.super Ljava/lang/Object;
.source "MP3Songs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Songs;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 793
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$4;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 796
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 797
    return-void
.end method
