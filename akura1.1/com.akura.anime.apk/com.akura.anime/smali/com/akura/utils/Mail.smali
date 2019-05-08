.class public Lcom/akura/utils/Mail;
.super Ljavax/mail/Authenticator;
.source "Mail.java"


# instance fields
.field private _auth:Z

.field private _body:Ljava/lang/String;

.field private _debuggable:Z

.field private _from:Ljava/lang/String;

.field private _host:Ljava/lang/String;

.field private _multipart:Ljavax/mail/Multipart;

.field private _pass:Ljava/lang/String;

.field private _port:Ljava/lang/String;

.field private _sport:Ljava/lang/String;

.field private _subject:Ljava/lang/String;

.field private _to:[Ljava/lang/String;

.field private _user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 46
    const-string v1, "smtp.gmail.com"

    iput-object v1, p0, Lcom/akura/utils/Mail;->_host:Ljava/lang/String;

    .line 47
    const-string v1, "465"

    iput-object v1, p0, Lcom/akura/utils/Mail;->_port:Ljava/lang/String;

    .line 48
    const-string v1, "465"

    iput-object v1, p0, Lcom/akura/utils/Mail;->_sport:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lcom/akura/utils/Mail;->_user:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcom/akura/utils/Mail;->_pass:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lcom/akura/utils/Mail;->_from:Ljava/lang/String;

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/akura/utils/Mail;->_subject:Ljava/lang/String;

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/akura/utils/Mail;->_body:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/akura/utils/Mail;->_debuggable:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/akura/utils/Mail;->_auth:Z

    .line 59
    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    iput-object v1, p0, Lcom/akura/utils/Mail;->_multipart:Ljavax/mail/Multipart;

    .line 63
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    check-cast v0, Ljavax/activation/MailcapCommandMap;

    .line 64
    .local v0, "mc":Ljavax/activation/MailcapCommandMap;
    const-string v1, "text/html;; x-java-content-handler=com.sun.mail.handlers.text_html"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 65
    const-string v1, "text/xml;; x-java-content-handler=com.sun.mail.handlers.text_xml"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 66
    const-string v1, "text/plain;; x-java-content-handler=com.sun.mail.handlers.text_plain"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 67
    const-string v1, "multipart/*;; x-java-content-handler=com.sun.mail.handlers.multipart_mixed"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 68
    const-string v1, "message/rfc822;; x-java-content-handler=com.sun.mail.handlers.message_rfc822"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/akura/utils/Mail;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/akura/utils/Mail;->_user:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/akura/utils/Mail;->_pass:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private _setProperties()Ljava/util/Properties;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 141
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "mail.smtp.host"

    iget-object v2, p0, Lcom/akura/utils/Mail;->_host:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-boolean v1, p0, Lcom/akura/utils/Mail;->_debuggable:Z

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "mail.debug"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    iget-boolean v1, p0, Lcom/akura/utils/Mail;->_auth:Z

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "mail.smtp.auth"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_1
    const-string v1, "mail.smtp.port"

    iget-object v2, p0, Lcom/akura/utils/Mail;->_port:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "mail.smtp.socketFactory.port"

    iget-object v2, p0, Lcom/akura/utils/Mail;->_sport:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "mail.smtp.socketFactory.class"

    const-string v2, "javax.net.ssl.SSLSocketFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "mail.smtp.socketFactory.fallback"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-object v0
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 124
    .local v0, "messageBodyPart":Ljavax/mail/BodyPart;
    new-instance v1, Ljavax/activation/FileDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "source":Ljavax/activation/DataSource;
    new-instance v2, Ljavax/activation/DataHandler;

    invoke-direct {v2, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v0, v2}, Ljavax/mail/BodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 126
    invoke-virtual {v0, p1}, Ljavax/mail/BodyPart;->setFileName(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/akura/utils/Mail;->_multipart:Ljavax/mail/Multipart;

    invoke-virtual {v2, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 129
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/akura/utils/Mail;->_body:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lcom/akura/utils/Mail;->_user:Ljava/lang/String;

    iget-object v2, p0, Lcom/akura/utils/Mail;->_pass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public send()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/akura/utils/Mail;->_setProperties()Ljava/util/Properties;

    move-result-object v4

    .line 84
    .local v4, "props":Ljava/util/Properties;
    iget-object v6, p0, Lcom/akura/utils/Mail;->_user:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/akura/utils/Mail;->_pass:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/akura/utils/Mail;->_to:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/akura/utils/Mail;->_from:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/akura/utils/Mail;->_subject:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/akura/utils/Mail;->_body:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 86
    invoke-static {v4, p0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v5

    .line 88
    .local v5, "session":Ljavax/mail/Session;
    new-instance v3, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v3, v5}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 90
    .local v3, "msg":Ljavax/mail/internet/MimeMessage;
    new-instance v6, Ljavax/mail/internet/InternetAddress;

    iget-object v7, p0, Lcom/akura/utils/Mail;->_from:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    .line 92
    iget-object v6, p0, Lcom/akura/utils/Mail;->_to:[Ljava/lang/String;

    array-length v6, v6

    new-array v0, v6, [Ljavax/mail/internet/InternetAddress;

    .line 93
    .local v0, "addressTo":[Ljavax/mail/internet/InternetAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/akura/utils/Mail;->_to:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 95
    new-instance v6, Ljavax/mail/internet/InternetAddress;

    iget-object v7, p0, Lcom/akura/utils/Mail;->_to:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v6, v7}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    sget-object v6, Ljavax/mail/internet/MimeMessage$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v3, v6, v0}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 99
    iget-object v6, p0, Lcom/akura/utils/Mail;->_subject:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 100
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 103
    new-instance v2, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 104
    .local v2, "messageBodyPart":Ljavax/mail/BodyPart;
    iget-object v6, p0, Lcom/akura/utils/Mail;->_body:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljavax/mail/BodyPart;->setText(Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Lcom/akura/utils/Mail;->_multipart:Ljavax/mail/Multipart;

    invoke-virtual {v6, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 108
    iget-object v6, p0, Lcom/akura/utils/Mail;->_multipart:Ljavax/mail/Multipart;

    invoke-virtual {v3, v6}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 111
    invoke-static {v3}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    .line 113
    const/4 v6, 0x1

    .line 117
    .end local v0    # "addressTo":[Ljavax/mail/internet/InternetAddress;
    .end local v1    # "i":I
    .end local v2    # "messageBodyPart":Ljavax/mail/BodyPart;
    .end local v3    # "msg":Ljavax/mail/internet/MimeMessage;
    .end local v5    # "session":Ljavax/mail/Session;
    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "_body"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/akura/utils/Mail;->_body:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/akura/utils/Mail;->_from:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/akura/utils/Mail;->_subject:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setTo([Ljava/lang/String;)V
    .locals 0
    .param p1, "toArr"    # [Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/akura/utils/Mail;->_to:[Ljava/lang/String;

    .line 171
    return-void
.end method
