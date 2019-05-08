.class Lcom/akura/anime/activities/MP3Songs$6;
.super Ljava/lang/Object;
.source "MP3Songs.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/anime/activities/MP3Songs;->showPopup(Landroid/view/View;Ljava/lang/Object;)V
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
    .line 931
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Songs$6;->this$0:Lcom/akura/anime/activities/MP3Songs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Songs$6;->this$0:Lcom/akura/anime/activities/MP3Songs;

    # invokes: Lcom/akura/anime/activities/MP3Songs;->closePopup()V
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Songs;->access$400(Lcom/akura/anime/activities/MP3Songs;)V

    .line 936
    return-void
.end method
