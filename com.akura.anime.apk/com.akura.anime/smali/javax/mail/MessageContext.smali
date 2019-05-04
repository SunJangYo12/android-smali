.class public Ljavax/mail/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# instance fields
.field private part:Ljavax/mail/Part;


# direct methods
.method public constructor <init>(Ljavax/mail/Part;)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/Part;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    .line 65
    return-void
.end method

.method private static getMessage(Ljavax/mail/Part;)Ljavax/mail/Message;
    .locals 4
    .param p0, "p"    # Ljavax/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 101
    :goto_0
    if-nez p0, :cond_0

    move-object p0, v2

    .line 110
    .end local p0    # "p":Ljavax/mail/Part;
    .local v0, "bp":Ljavax/mail/BodyPart;
    .local v1, "mp":Ljavax/mail/Multipart;
    :goto_1
    return-object p0

    .line 102
    .end local v0    # "bp":Ljavax/mail/BodyPart;
    .end local v1    # "mp":Ljavax/mail/Multipart;
    .restart local p0    # "p":Ljavax/mail/Part;
    :cond_0
    instance-of v3, p0, Ljavax/mail/Message;

    if-eqz v3, :cond_1

    .line 103
    check-cast p0, Ljavax/mail/Message;

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 104
    check-cast v0, Ljavax/mail/BodyPart;

    .line 105
    .restart local v0    # "bp":Ljavax/mail/BodyPart;
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getParent()Ljavax/mail/Multipart;

    move-result-object v1

    .line 106
    .restart local v1    # "mp":Ljavax/mail/Multipart;
    if-nez v1, :cond_2

    move-object p0, v2

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v1}, Ljavax/mail/Multipart;->getParent()Ljavax/mail/Part;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljavax/mail/Message;
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    invoke-static {v1}, Ljavax/mail/MessageContext;->getMessage(Ljavax/mail/Part;)Ljavax/mail/Message;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Ljavax/mail/MessagingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPart()Ljavax/mail/Part;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-object v0
.end method

.method public getSession()Ljavax/mail/Session;
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Ljavax/mail/MessageContext;->getMessage()Ljavax/mail/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Ljavax/mail/Message;
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
