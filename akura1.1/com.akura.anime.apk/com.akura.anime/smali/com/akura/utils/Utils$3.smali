.class final Lcom/akura/utils/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akura/utils/Utils;->confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnableNo:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/akura/utils/Utils$3;->val$runnableNo:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 311
    iget-object v0, p0, Lcom/akura/utils/Utils$3;->val$runnableNo:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/akura/utils/Utils$3;->val$runnableNo:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 315
    :cond_0
    return-void
.end method
