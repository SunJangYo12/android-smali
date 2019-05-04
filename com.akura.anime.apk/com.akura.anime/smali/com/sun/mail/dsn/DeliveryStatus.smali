.class public Lcom/sun/mail/dsn/DeliveryStatus;
.super Ljava/lang/Object;
.source "DeliveryStatus.java"


# static fields
.field private static debug:Z


# instance fields
.field protected messageDSN:Ljavax/mail/internet/InternetHeaders;

.field protected recipientDSN:[Ljavax/mail/internet/InternetHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    sput-boolean v1, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    .line 62
    :try_start_0
    const-string v2, "mail.dsn.debug"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/internet/InternetHeaders;

    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v3, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v3, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    .line 95
    sget-boolean v3, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v3, :cond_0

    .line 96
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DSN: got messageDSN"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 99
    .local v2, "v":Ljava/util/Vector;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gtz v3, :cond_3

    .line 109
    :cond_1
    :goto_1
    sget-boolean v3, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v3, :cond_2

    .line 110
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DSN: recipientDSN size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/internet/InternetHeaders;

    iput-object v3, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    .line 112
    iget-object v3, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 113
    return-void

    .line 100
    :cond_3
    :try_start_1
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    .line 101
    .local v1, "h":Ljavax/mail/internet/InternetHeaders;
    sget-boolean v3, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v3, :cond_4

    .line 102
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DSN: got recipientDSN"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    .end local v1    # "h":Ljavax/mail/internet/InternetHeaders;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/io/EOFException;
    sget-boolean v3, Lcom/sun/mail/dsn/DeliveryStatus;->debug:Z

    if-eqz v3, :cond_1

    .line 107
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DSN: got EOFException"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static writeInternetHeaders(Ljavax/mail/internet/InternetHeaders;Lcom/sun/mail/util/LineOutputStream;)V
    .locals 6
    .param p0, "h"    # Ljavax/mail/internet/InternetHeaders;
    .param p1, "los"    # Lcom/sun/mail/util/LineOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    .line 190
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    return-void

    .line 191
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "mex":Ljavax/mail/MessagingException;
    invoke-virtual {v2}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v1

    .line 194
    .local v1, "ex":Ljava/lang/Exception;
    instance-of v3, v1, Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 195
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "ex":Ljava/lang/Exception;
    throw v1

    .line 197
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception writing headers: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public addRecipientDSN(Ljavax/mail/internet/InternetHeaders;)V
    .locals 4
    .param p1, "h"    # Ljavax/mail/internet/InternetHeaders;

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljavax/mail/internet/InternetHeaders;

    .line 163
    .local v0, "rh":[Ljavax/mail/internet/InternetHeaders;
    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object v2, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    .line 165
    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    iget-object v2, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 166
    return-void
.end method

.method public getMessageDSN()Ljavax/mail/internet/InternetHeaders;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    return-object v0
.end method

.method public getRecipientDSN(I)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRecipientDSNCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v0, v0

    return v0
.end method

.method public setMessageDSN(Ljavax/mail/internet/InternetHeaders;)V
    .locals 0
    .param p1, "messageDSN"    # Ljavax/mail/internet/InternetHeaders;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeliveryStatus: Reporting-MTA="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    const-string v2, "Reporting-MTA"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", #Recipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "los":Lcom/sun/mail/util/LineOutputStream;
    instance-of v2, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 173
    check-cast v1, Lcom/sun/mail/util/LineOutputStream;

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/dsn/DeliveryStatus;->messageDSN:Ljavax/mail/internet/InternetHeaders;

    invoke-static {v2, v1}, Lcom/sun/mail/dsn/DeliveryStatus;->writeInternetHeaders(Ljavax/mail/internet/InternetHeaders;Lcom/sun/mail/util/LineOutputStream;)V

    .line 179
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 184
    return-void

    .line 175
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    .end local v1    # "los":Lcom/sun/mail/util/LineOutputStream;
    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v1    # "los":Lcom/sun/mail/util/LineOutputStream;
    goto :goto_0

    .line 181
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/dsn/DeliveryStatus;->recipientDSN:[Ljavax/mail/internet/InternetHeaders;

    aget-object v2, v2, v0

    invoke-static {v2, v1}, Lcom/sun/mail/dsn/DeliveryStatus;->writeInternetHeaders(Ljavax/mail/internet/InternetHeaders;Lcom/sun/mail/util/LineOutputStream;)V

    .line 182
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
