.class Lcom/akura/anime/activities/MP3Contact$EmailTask;
.super Landroid/os/AsyncTask;
.source "MP3Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/akura/anime/activities/MP3Contact$EmailMessage;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akura/anime/activities/MP3Contact;

.field waitDlg:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/akura/anime/activities/MP3Contact;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akura/anime/activities/MP3Contact;Lcom/akura/anime/activities/MP3Contact$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akura/anime/activities/MP3Contact;
    .param p2, "x1"    # Lcom/akura/anime/activities/MP3Contact$1;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/akura/anime/activities/MP3Contact$EmailTask;-><init>(Lcom/akura/anime/activities/MP3Contact;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/akura/anime/activities/MP3Contact$EmailMessage;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Lcom/akura/anime/activities/MP3Contact$EmailMessage;

    .prologue
    const/4 v3, 0x0

    .line 227
    aget-object v2, p1, v3

    if-nez v2, :cond_0

    .line 228
    const/4 v2, 0x0

    .line 234
    :goto_0
    return-object v2

    .line 230
    :cond_0
    aget-object v0, p1, v3

    .line 232
    .local v0, "msg":Lcom/akura/anime/activities/MP3Contact$EmailMessage;
    invoke-virtual {p0, v0}, Lcom/akura/anime/activities/MP3Contact$EmailTask;->sendEmail(Lcom/akura/anime/activities/MP3Contact$EmailMessage;)Z

    move-result v1

    .line 234
    .local v1, "ret":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    check-cast p1, [Lcom/akura/anime/activities/MP3Contact$EmailMessage;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Contact$EmailTask;->doInBackground([Lcom/akura/anime/activities/MP3Contact$EmailMessage;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 242
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->waitDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->waitDlg:Landroid/app/ProgressDialog;

    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const v0, 0x7f06003b

    .line 249
    .local v0, "status":I
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    # getter for: Lcom/akura/anime/activities/MP3Contact;->mEtName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Contact;->access$300(Lcom/akura/anime/activities/MP3Contact;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    # getter for: Lcom/akura/anime/activities/MP3Contact;->mEtEmail:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Contact;->access$400(Lcom/akura/anime/activities/MP3Contact;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    # getter for: Lcom/akura/anime/activities/MP3Contact;->mEtMessage:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Contact;->access$500(Lcom/akura/anime/activities/MP3Contact;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 259
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    # getter for: Lcom/akura/anime/activities/MP3Contact;->mTvStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/akura/anime/activities/MP3Contact;->access$200(Lcom/akura/anime/activities/MP3Contact;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    const/4 v2, 0x0

    # setter for: Lcom/akura/anime/activities/MP3Contact;->emailing:Z
    invoke-static {v1, v2}, Lcom/akura/anime/activities/MP3Contact;->access$102(Lcom/akura/anime/activities/MP3Contact;Z)Z

    .line 261
    return-void

    .line 255
    .end local v0    # "status":I
    :cond_0
    const v0, 0x7f06003c

    .restart local v0    # "status":I
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Contact$EmailTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 196
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->waitDlg:Landroid/app/ProgressDialog;

    .line 197
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->waitDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 198
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->waitDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 199
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->waitDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    invoke-virtual {v1}, Lcom/akura/anime/activities/MP3Contact;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->waitDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/akura/anime/activities/MP3Contact$EmailTask$1;

    invoke-direct {v1, p0}, Lcom/akura/anime/activities/MP3Contact$EmailTask$1;-><init>(Lcom/akura/anime/activities/MP3Contact$EmailTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 207
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->waitDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 208
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->this$0:Lcom/akura/anime/activities/MP3Contact;

    # getter for: Lcom/akura/anime/activities/MP3Contact;->mTvStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/akura/anime/activities/MP3Contact;->access$200(Lcom/akura/anime/activities/MP3Contact;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/akura/anime/activities/MP3Contact$EmailTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/akura/anime/activities/MP3Contact$EmailTask;->waitDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendEmail(Lcom/akura/anime/activities/MP3Contact$EmailMessage;)Z
    .locals 9
    .param p1, "msg"    # Lcom/akura/anime/activities/MP3Contact$EmailMessage;

    .prologue
    .line 265
    new-instance v2, Lcom/akura/utils/Mail;

    const-string v6, "radiolamolina@gmail.com"

    const-string v7, ""

    invoke-direct {v2, v6, v7}, Lcom/akura/utils/Mail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v2, "m":Lcom/akura/utils/Mail;
    iget-object v1, p1, Lcom/akura/anime/activities/MP3Contact$EmailMessage;->email:Ljava/lang/String;

    .line 268
    .local v1, "from":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/akura/anime/activities/MP3Contact$EmailMessage;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/akura/anime/MP3PlayerApp;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Android App]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "title":Ljava/lang/String;
    iget-object v3, p1, Lcom/akura/anime/activities/MP3Contact$EmailMessage;->message:Ljava/lang/String;

    .line 271
    .local v3, "message":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "radiolamolina@gmail.com"

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Lcom/akura/utils/Mail;->setTo([Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2, v1}, Lcom/akura/utils/Mail;->setFrom(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2, v5}, Lcom/akura/utils/Mail;->setSubject(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v2, v3}, Lcom/akura/utils/Mail;->setBody(Ljava/lang/String;)V

    .line 276
    const/4 v4, 0x0

    .line 279
    .local v4, "ret":Z
    :try_start_0
    invoke-virtual {v2}, Lcom/akura/utils/Mail;->send()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 286
    :goto_0
    return v4

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MailApp"

    const-string v7, "Could not send email"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
