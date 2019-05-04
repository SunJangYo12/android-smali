.class public Lcom/sun/activation/registries/MailcapFile;
.super Ljava/lang/Object;
.source "MailcapFile.java"


# static fields
.field private static addReverse:Z


# instance fields
.field private fallback_hash:Ljava/util/Map;

.field private native_commands:Ljava/util/Map;

.field private type_hash:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    .line 71
    :try_start_0
    const-string v0, "javax.activation.addreverse"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    .line 113
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "new MailcapFile: default"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    .line 104
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "new MailcapFile: InputStream"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MailcapFile;->parse(Ljava/io/Reader;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "new_fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    .line 65
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    .line 83
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new MailcapFile: file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v0    # "reader":Ljava/io/FileReader;
    .local v1, "reader":Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v2}, Lcom/sun/activation/registries/MailcapFile;->parse(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    if-eqz v1, :cond_1

    .line 92
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 89
    .end local v1    # "reader":Ljava/io/FileReader;
    .restart local v0    # "reader":Ljava/io/FileReader;
    :catchall_0
    move-exception v2

    .line 90
    :goto_1
    if-eqz v0, :cond_2

    .line 92
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 95
    :cond_2
    :goto_2
    throw v2

    .line 93
    :catch_0
    move-exception v3

    goto :goto_2

    .end local v0    # "reader":Ljava/io/FileReader;
    .restart local v1    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 89
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/FileReader;
    .restart local v0    # "reader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private mergeResults(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p1, "first"    # Ljava/util/Map;
    .param p2, "second"    # Ljava/util/Map;

    .prologue
    .line 216
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 217
    .local v5, "verb_enum":Ljava/util/Iterator;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 220
    .local v0, "clonedHash":Ljava/util/Map;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    return-object v0

    .line 221
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 222
    .local v4, "verb":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 223
    .local v1, "cmdVector":Ljava/util/List;
    if-nez v1, :cond_1

    .line 224
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 228
    .local v3, "oldV":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 229
    .end local v1    # "cmdVector":Ljava/util/List;
    .local v2, "cmdVector":Ljava/util/List;
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parse(Ljava/io/Reader;)V
    .locals 6
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 261
    .local v0, "buf_reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 262
    .local v2, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 264
    .local v1, "continued":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 299
    return-void

    .line 267
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 270
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    .line 272
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 273
    if-eqz v1, :cond_2

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 276
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 277
    :cond_3
    if-eqz v1, :cond_4

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 282
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sun/activation/registries/MailcapFile;->parseLine(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sun/activation/registries/MailcapParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 286
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 291
    :cond_4
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/sun/activation/registries/MailcapFile;->parseLine(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/activation/registries/MailcapParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 293
    :catch_0
    move-exception v3

    goto :goto_0

    .line 283
    :catch_1
    move-exception v3

    goto :goto_1

    .line 297
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method protected static reportParseError(IIIILjava/lang/String;)V
    .locals 3
    .param p0, "expectedToken"    # I
    .param p1, "otherExpectedToken"    # I
    .param p2, "anotherExpectedToken"    # I
    .param p3, "actualToken"    # I
    .param p4, "actualTokenValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/activation/registries/MailcapParseException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PARSE ERROR: Encountered a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-static {p3}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") while expecting a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", or a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    invoke-static {p2}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 540
    :cond_0
    new-instance v0, Lcom/sun/activation/registries/MailcapParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-static {p3}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") while expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", or a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    invoke-static {p2}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static reportParseError(IIILjava/lang/String;)V
    .locals 3
    .param p0, "expectedToken"    # I
    .param p1, "otherExpectedToken"    # I
    .param p2, "actualToken"    # I
    .param p3, "actualTokenValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/activation/registries/MailcapParseException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Lcom/sun/activation/registries/MailcapParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-static {p2}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 525
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") while expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 526
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 527
    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static reportParseError(IILjava/lang/String;)V
    .locals 3
    .param p0, "expectedToken"    # I
    .param p1, "actualToken"    # I
    .param p2, "actualTokenValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/activation/registries/MailcapParseException;
        }
    .end annotation

    .prologue
    .line 514
    new-instance v0, Lcom/sun/activation/registries/MailcapParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") while expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 517
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendToMailcap(Ljava/lang/String;)V
    .locals 2
    .param p1, "mail_cap"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appendToMailcap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 250
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MailcapFile;->parse(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "mime_type"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "search_result":Ljava/util/Map;
    const/4 v4, 0x0

    .line 163
    .local v4, "wildcard_result":Ljava/util/Map;
    iget-object v5, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "search_result":Ljava/util/Map;
    check-cast v0, Ljava/util/Map;

    .line 166
    .restart local v0    # "search_result":Ljava/util/Map;
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 167
    .local v1, "separator":I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "subtype":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "wildcard_result":Ljava/util/Map;
    check-cast v4, Ljava/util/Map;

    .line 172
    .restart local v4    # "wildcard_result":Ljava/util/Map;
    if-eqz v4, :cond_0

    .line 173
    if-eqz v0, :cond_1

    .line 175
    invoke-direct {p0, v0, v4}, Lcom/sun/activation/registries/MailcapFile;->mergeResults(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 180
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 177
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    move-object v0, v4

    goto :goto_0
.end method

.method public getMailcapList(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "mime_type"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "search_result":Ljava/util/Map;
    const/4 v4, 0x0

    .line 130
    .local v4, "wildcard_result":Ljava/util/Map;
    iget-object v5, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "search_result":Ljava/util/Map;
    check-cast v0, Ljava/util/Map;

    .line 133
    .restart local v0    # "search_result":Ljava/util/Map;
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 134
    .local v1, "separator":I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "subtype":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "wildcard_result":Ljava/util/Map;
    check-cast v4, Ljava/util/Map;

    .line 139
    .restart local v4    # "wildcard_result":Ljava/util/Map;
    if-eqz v4, :cond_0

    .line 140
    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, v0, v4}, Lcom/sun/activation/registries/MailcapFile;->mergeResults(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 147
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 144
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    move-object v0, v4

    goto :goto_0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v1, "types":Ljava/util/Set;
    iget-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 191
    .local v0, "mts":[Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mts":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 192
    .restart local v0    # "mts":[Ljava/lang/String;
    return-object v0
.end method

.method public getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "mime_type"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 201
    .local v0, "cmds":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 202
    .local v1, "v":Ljava/util/List;
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 204
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmds":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 206
    .restart local v0    # "cmds":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected parseLine(Ljava/lang/String;)V
    .locals 28
    .param p1, "mailcapEntry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/activation/registries/MailcapParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v22, Lcom/sun/activation/registries/MailcapTokenizer;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapTokenizer;-><init>(Ljava/lang/String;)V

    .line 310
    .local v22, "tokenizer":Lcom/sun/activation/registries/MailcapTokenizer;
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 312
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 313
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "parse: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 316
    .local v12, "currentToken":I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v12, v0, :cond_1

    .line 317
    const/16 v24, 0x2

    .line 318
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v25

    .line 317
    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v12, v1}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 321
    :cond_1
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 322
    .local v20, "primaryType":Ljava/lang/String;
    const-string v21, "*"

    .line 326
    .local v21, "subType":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 327
    const/16 v24, 0x2f

    move/from16 v0, v24

    if-eq v12, v0, :cond_2

    .line 328
    const/16 v24, 0x3b

    move/from16 v0, v24

    if-eq v12, v0, :cond_2

    .line 329
    const/16 v24, 0x2f

    .line 330
    const/16 v25, 0x3b

    .line 331
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v26

    .line 329
    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v12, v2}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIILjava/lang/String;)V

    .line 335
    :cond_2
    const/16 v24, 0x2f

    move/from16 v0, v24

    if-ne v12, v0, :cond_4

    .line 337
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 338
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v12, v0, :cond_3

    .line 339
    const/16 v24, 0x2

    .line 340
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v25

    .line 339
    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v12, v1}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 343
    :cond_3
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    .line 346
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 349
    :cond_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 351
    .local v17, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 352
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "  Type: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 355
    :cond_5
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 358
    .local v10, "commands":Ljava/util/Map;
    const/16 v24, 0x3b

    move/from16 v0, v24

    if-eq v12, v0, :cond_6

    .line 359
    const/16 v24, 0x3b

    .line 360
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v25

    .line 359
    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v12, v1}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 365
    :cond_6
    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 366
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 367
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 368
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v12, v0, :cond_7

    .line 369
    const/16 v24, 0x3b

    move/from16 v0, v24

    if-eq v12, v0, :cond_7

    .line 370
    const/16 v24, 0x2

    .line 371
    const/16 v25, 0x3b

    .line 372
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v26

    .line 370
    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v12, v2}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIILjava/lang/String;)V

    .line 375
    :cond_7
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v12, v0, :cond_8

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 379
    .local v23, "v":Ljava/util/List;
    if-nez v23, :cond_11

    .line 380
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "v":Ljava/util/List;
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .restart local v23    # "v":Ljava/util/List;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .end local v23    # "v":Ljava/util/List;
    :cond_8
    :goto_0
    const/16 v24, 0x3b

    move/from16 v0, v24

    if-eq v12, v0, :cond_9

    .line 391
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 396
    :cond_9
    const/16 v24, 0x3b

    move/from16 v0, v24

    if-ne v12, v0, :cond_1e

    .line 397
    const/4 v15, 0x0

    .line 402
    .local v15, "isFallback":Z
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 403
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v12, v0, :cond_b

    .line 404
    const/16 v24, 0x2

    .line 405
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v25

    .line 404
    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v12, v1}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 407
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v24

    .line 408
    sget-object v25, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    .line 411
    .local v18, "paramName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 412
    const/16 v24, 0x3d

    move/from16 v0, v24

    if-eq v12, v0, :cond_c

    .line 413
    const/16 v24, 0x3b

    move/from16 v0, v24

    if-eq v12, v0, :cond_c

    .line 414
    const/16 v24, 0x5

    move/from16 v0, v24

    if-eq v12, v0, :cond_c

    .line 415
    const/16 v24, 0x3d

    .line 416
    const/16 v25, 0x3b

    .line 417
    const/16 v26, 0x5

    .line 418
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v27

    .line 415
    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v12, v3}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIIILjava/lang/String;)V

    .line 422
    :cond_c
    const/16 v24, 0x3d

    move/from16 v0, v24

    if-ne v12, v0, :cond_f

    .line 426
    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 427
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 428
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 429
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v12, v0, :cond_d

    .line 430
    const/16 v24, 0x2

    .line 431
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v25

    .line 430
    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v12, v1}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 434
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v19

    .line 437
    .local v19, "paramValue":Ljava/lang/String;
    const-string v24, "x-java-"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 438
    const/16 v24, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, "commandName":Ljava/lang/String;
    const-string v24, "fallback-entry"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 442
    const-string v24, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 443
    const/4 v15, 0x1

    .line 463
    .end local v9    # "commandName":Ljava/lang/String;
    :cond_e
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v12

    .line 465
    .end local v19    # "paramValue":Ljava/lang/String;
    :cond_f
    const/16 v24, 0x3b

    move/from16 v0, v24

    if-eq v12, v0, :cond_a

    .line 467
    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    move-object/from16 v16, v0

    .line 469
    .local v16, "masterHash":Ljava/util/Map;
    :goto_2
    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 470
    .local v11, "curcommands":Ljava/util/Map;
    if-nez v11, :cond_17

    .line 471
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .end local v11    # "curcommands":Ljava/util/Map;
    .end local v15    # "isFallback":Z
    .end local v16    # "masterHash":Ljava/util/Map;
    .end local v18    # "paramName":Ljava/lang/String;
    :cond_10
    :goto_3
    return-void

    .line 385
    .restart local v23    # "v":Ljava/util/List;
    :cond_11
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 447
    .end local v23    # "v":Ljava/util/List;
    .restart local v9    # "commandName":Ljava/lang/String;
    .restart local v15    # "isFallback":Z
    .restart local v18    # "paramName":Ljava/lang/String;
    .restart local v19    # "paramValue":Ljava/lang/String;
    :cond_12
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 448
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "    Command: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 449
    const-string v25, ", Class: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 448
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 450
    :cond_13
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 451
    .local v5, "classes":Ljava/util/List;
    if-nez v5, :cond_14

    .line 452
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "classes":Ljava/util/List;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .restart local v5    # "classes":Ljava/util/List;
    invoke-interface {v10, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_14
    sget-boolean v24, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    if-eqz v24, :cond_15

    .line 456
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v5, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 458
    :cond_15
    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 467
    .end local v5    # "classes":Ljava/util/List;
    .end local v9    # "commandName":Ljava/lang/String;
    .end local v19    # "paramValue":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    move-object/from16 v16, v0

    goto :goto_2

    .line 473
    .restart local v11    # "curcommands":Ljava/util/Map;
    .restart local v16    # "masterHash":Ljava/util/Map;
    :cond_17
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 474
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Merging commands for type "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 477
    :cond_18
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 478
    .local v8, "cn":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_1b

    .line 496
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 497
    :cond_1a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 498
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 499
    .local v7, "cmdName":Ljava/lang/String;
    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1a

    .line 501
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 502
    .local v13, "cv":Ljava/util/List;
    invoke-interface {v11, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 479
    .end local v7    # "cmdName":Ljava/lang/String;
    .end local v13    # "cv":Ljava/util/List;
    :cond_1b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 480
    .restart local v7    # "cmdName":Ljava/lang/String;
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 481
    .local v4, "ccv":Ljava/util/List;
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 482
    .restart local v13    # "cv":Ljava/util/List;
    if-eqz v13, :cond_19

    .line 485
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 486
    .local v14, "cvn":Ljava/util/Iterator;
    :cond_1c
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 487
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 488
    .local v6, "clazz":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1c

    .line 489
    sget-boolean v24, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    if-eqz v24, :cond_1d

    .line 490
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v4, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 492
    :cond_1d
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 505
    .end local v4    # "ccv":Ljava/util/List;
    .end local v6    # "clazz":Ljava/lang/String;
    .end local v7    # "cmdName":Ljava/lang/String;
    .end local v8    # "cn":Ljava/util/Iterator;
    .end local v11    # "curcommands":Ljava/util/Map;
    .end local v13    # "cv":Ljava/util/List;
    .end local v14    # "cvn":Ljava/util/Iterator;
    .end local v15    # "isFallback":Z
    .end local v16    # "masterHash":Ljava/util/Map;
    .end local v18    # "paramName":Ljava/lang/String;
    :cond_1e
    const/16 v24, 0x5

    move/from16 v0, v24

    if-eq v12, v0, :cond_10

    .line 506
    const/16 v24, 0x5

    .line 507
    const/16 v25, 0x3b

    .line 508
    invoke-virtual/range {v22 .. v22}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v26

    .line 506
    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v12, v2}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIILjava/lang/String;)V

    goto/16 :goto_3
.end method
