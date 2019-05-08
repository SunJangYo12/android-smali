.class Lcom/akura/anime/activities/MP3Contact$EmailMessage;
.super Ljava/lang/Object;
.source "MP3Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akura/anime/activities/MP3Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailMessage"
.end annotation


# instance fields
.field email:Ljava/lang/String;

.field message:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/akura/anime/activities/MP3Contact;


# direct methods
.method public constructor <init>(Lcom/akura/anime/activities/MP3Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/akura/anime/activities/MP3Contact$EmailMessage;->this$0:Lcom/akura/anime/activities/MP3Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/akura/anime/activities/MP3Contact$EmailMessage;->name:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/akura/anime/activities/MP3Contact$EmailMessage;->email:Ljava/lang/String;

    .line 183
    iput-object p4, p0, Lcom/akura/anime/activities/MP3Contact$EmailMessage;->message:Ljava/lang/String;

    .line 184
    return-void
.end method
