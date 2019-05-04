.class public Ljavax/activation/MailcapCommandMap;
.super Ljavax/activation/CommandMap;
.source "MailcapCommandMap.java"


# static fields
.field private static final PROG:I

.field private static defDB:Lcom/sun/activation/registries/MailcapFile;


# instance fields
.field private DB:[Lcom/sun/activation/registries/MailcapFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 148
    invoke-direct {p0}, Ljavax/activation/CommandMap;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v0, "dbv":Ljava/util/List;
    const/4 v1, 0x0

    .line 151
    .local v1, "mf":Lcom/sun/activation/registries/MailcapFile;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v5, "MailcapCommandMap: load HOME"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 155
    :try_start_0
    const-string v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "user_home":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mailcap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "user_home":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "MailcapCommandMap: load SYS"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 168
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mailcap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "system_mailcap":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .end local v3    # "system_mailcap":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v5, "MailcapCommandMap: load JAR"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 177
    const-string v5, "mailcap"

    invoke-direct {p0, v0, v5}, Ljavax/activation/MailcapCommandMap;->loadAllResources(Ljava/util/List;Ljava/lang/String;)V

    .line 179
    const-string v5, "MailcapCommandMap: load DEF"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 180
    const-class v6, Ljavax/activation/MailcapCommandMap;

    monitor-enter v6

    .line 182
    :try_start_2
    sget-object v5, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    if-nez v5, :cond_2

    .line 183
    const-string v5, "mailcap.default"

    invoke-direct {p0, v5}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v5

    sput-object v5, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    .line 180
    :cond_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    sget-object v5, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    if-eqz v5, :cond_3

    .line 187
    sget-object v5, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/sun/activation/registries/MailcapFile;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    .line 190
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    .line 191
    return-void

    .line 180
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 173
    :catch_0
    move-exception v5

    goto :goto_1

    .line 163
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 338
    const-string v0, "MailcapCommandMap: load PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 341
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 321
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailcapCommandMap: load PROG from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    new-instance v1, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v2

    .line 326
    :cond_1
    return-void
.end method

.method private appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .param p1, "typeHash"    # Ljava/util/Map;
    .param p2, "cmdList"    # Ljava/util/List;

    .prologue
    .line 459
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 461
    .local v4, "verb_enum":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 472
    return-void

    .line 462
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 463
    .local v3, "verb":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 464
    .local v1, "cmdList2":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 466
    .local v2, "cmd_enum":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, "cmd":Ljava/lang/String;
    new-instance v5, Ljavax/activation/CommandInfo;

    invoke-direct {v5, v3, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .param p1, "cmdHash"    # Ljava/util/Map;
    .param p2, "cmdList"    # Ljava/util/List;

    .prologue
    .line 393
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 395
    .local v3, "verb_enum":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 403
    return-void

    .line 396
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    .local v2, "verb":Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Ljavax/activation/MailcapCommandMap;->checkForVerb(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 398
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 399
    .local v1, "cmdList2":Ljava/util/List;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    .local v0, "className":Ljava/lang/String;
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, v2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkForVerb(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmdList"    # Ljava/util/List;
    .param p2, "verb"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 411
    .local v0, "ee":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 413
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/activation/CommandInfo;

    invoke-virtual {v2}, Ljavax/activation/CommandInfo;->getCommandName()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "enum_verb":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    const-string v4, "    got content-handler"

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 593
    :cond_0
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "      class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 596
    :cond_1
    const/4 v1, 0x0

    .line 598
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 599
    if-nez v1, :cond_2

    .line 600
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 601
    :cond_2
    const/4 v0, 0x0

    .line 603
    .local v0, "cl":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 608
    :goto_0
    if-eqz v0, :cond_3

    .line 609
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/activation/DataContentHandler;

    .line 620
    .end local v0    # "cl":Ljava/lang/Class;
    :goto_1
    return-object v4

    .line 604
    .restart local v0    # "cl":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 606
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto :goto_0

    .line 610
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 611
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load DCH "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 613
    :catch_2
    move-exception v2

    .line 614
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load DCH "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 616
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load DCH "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private loadAllResources(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .param p1, "v"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 233
    .local v0, "anyLoaded":Z
    const/4 v1, 0x0

    .line 235
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 236
    if-nez v1, :cond_0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 238
    :cond_0
    if-eqz v1, :cond_5

    .line 239
    invoke-static {v1, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v9

    .line 242
    .local v9, "urls":[Ljava/net/URL;
    :goto_0
    if-eqz v9, :cond_2

    .line 243
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 244
    const-string v10, "MailcapCommandMap: getResources"

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 245
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-lt v4, v10, :cond_6

    .line 288
    .end local v4    # "i":I
    .end local v9    # "urls":[Ljava/net/URL;
    :cond_2
    :goto_2
    if-nez v0, :cond_4

    .line 289
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 290
    const-string v10, "MailcapCommandMap: !anyLoaded"

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 291
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v6

    .line 292
    .local v6, "mf":Lcom/sun/activation/registries/MailcapFile;
    if-eqz v6, :cond_4

    .line 293
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v6    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :cond_4
    return-void

    .line 241
    :cond_5
    :try_start_1
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v9

    .restart local v9    # "urls":[Ljava/net/URL;
    goto :goto_0

    .line 246
    .restart local v4    # "i":I
    :cond_6
    aget-object v8, v9, v4

    .line 247
    .local v8, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 248
    .local v2, "clis":Ljava/io/InputStream;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 249
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: URL "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 251
    :cond_7
    :try_start_2
    invoke-static {v8}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_a

    .line 253
    new-instance v10, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v10, v2}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const/4 v0, 0x1

    .line 255
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: successfully loaded mailcap file from URL: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 256
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :cond_8
    :goto_3
    if-eqz v2, :cond_9

    .line 277
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 245
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 261
    :cond_a
    :try_start_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 262
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: not loading mailcap file from URL: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 262
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 266
    :catch_0
    move-exception v5

    .line 267
    .local v5, "ioex":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 268
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 268
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    :cond_b
    if-eqz v2, :cond_9

    .line 277
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 278
    :catch_1
    move-exception v10

    goto :goto_4

    .line 270
    .end local v5    # "ioex":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 271
    .local v7, "sex":Ljava/lang/SecurityException;
    :try_start_7
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 272
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 276
    :cond_c
    if-eqz v2, :cond_9

    .line 277
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 278
    :catch_3
    move-exception v10

    goto :goto_4

    .line 274
    .end local v7    # "sex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v10

    .line 276
    if-eqz v2, :cond_d

    .line 277
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 279
    :cond_d
    :goto_5
    :try_start_a
    throw v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 282
    .end local v2    # "clis":Ljava/io/InputStream;
    .end local v4    # "i":I
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "urls":[Ljava/net/URL;
    :catch_4
    move-exception v3

    .line 283
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 284
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MailcapCommandMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 278
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "clis":Ljava/io/InputStream;
    .restart local v4    # "i":I
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v9    # "urls":[Ljava/net/URL;
    :catch_5
    move-exception v11

    goto :goto_5

    :catch_6
    move-exception v10

    goto/16 :goto_4
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 304
    .local v0, "mtf":Lcom/sun/activation/registries/MailcapFile;
    :try_start_0
    new-instance v1, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "mtf":Lcom/sun/activation/registries/MailcapFile;
    .local v1, "mtf":Lcom/sun/activation/registries/MailcapFile;
    move-object v0, v1

    .line 308
    .end local v1    # "mtf":Lcom/sun/activation/registries/MailcapFile;
    .restart local v0    # "mtf":Lcom/sun/activation/registries/MailcapFile;
    :goto_0
    return-object v0

    .line 305
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "clis":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_2

    .line 201
    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, v0}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    .line 202
    .local v2, "mf":Lcom/sun/activation/registries/MailcapFile;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MailcapCommandMap: successfully loaded mailcap file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    if-eqz v0, :cond_1

    .line 220
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 223
    .end local v2    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :cond_1
    :goto_0
    return-object v2

    .line 207
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MailcapCommandMap: not loading mailcap file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :cond_3
    if-eqz v0, :cond_4

    .line 220
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 223
    :cond_4
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MailcapCommandMap: can\'t load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    :cond_5
    if-eqz v0, :cond_4

    .line 220
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 221
    :catch_1
    move-exception v4

    goto :goto_1

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 215
    .local v3, "sex":Ljava/lang/SecurityException;
    :try_start_6
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MailcapCommandMap: can\'t load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 219
    :cond_6
    if-eqz v0, :cond_4

    .line 220
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 221
    :catch_3
    move-exception v4

    goto :goto_1

    .line 217
    .end local v3    # "sex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v4

    .line 219
    if-eqz v0, :cond_7

    .line 220
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 222
    :cond_7
    :goto_2
    throw v4

    .line 221
    .restart local v2    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :catch_4
    move-exception v4

    goto :goto_0

    .end local v2    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :catch_5
    move-exception v5

    goto :goto_2

    :catch_6
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addMailcap(Ljava/lang/String;)V
    .locals 3
    .param p1, "mail_cap"    # Ljava/lang/String;

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    const-string v0, "MailcapCommandMap: add to PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2}, Lcom/sun/activation/registries/MailcapFile;-><init>()V

    aput-object v2, v0, v1

    .line 536
    :cond_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->appendToMailcap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MailcapCommandMap: createDataContentHandler for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 548
    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 550
    :cond_0
    if-eqz p1, :cond_1

    .line 551
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 553
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v5, v5

    if-lt v2, v5, :cond_2

    .line 571
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v5, :cond_6

    .line 587
    const/4 v1, 0x0

    :goto_2
    monitor-exit p0

    return-object v1

    .line 554
    :cond_2
    :try_start_1
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 553
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    :cond_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  search DB #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 558
    :cond_5
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 559
    .local v0, "cmdMap":Ljava/util/Map;
    if-eqz v0, :cond_3

    .line 560
    const-string v5, "content-handler"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 561
    .local v4, "v":Ljava/util/List;
    if-eqz v4, :cond_3

    .line 562
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v1

    .line 564
    .local v1, "dch":Ljavax/activation/DataContentHandler;
    if-eqz v1, :cond_3

    goto :goto_2

    .line 572
    .end local v0    # "cmdMap":Ljava/util/Map;
    .end local v1    # "dch":Ljavax/activation/DataContentHandler;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "v":Ljava/util/List;
    :cond_6
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v2

    if-nez v5, :cond_8

    .line 571
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 574
    :cond_8
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  search fallback DB #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 576
    :cond_9
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 577
    .restart local v0    # "cmdMap":Ljava/util/Map;
    if-eqz v0, :cond_7

    .line 578
    const-string v5, "content-handler"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 579
    .restart local v4    # "v":Ljava/util/List;
    if-eqz v4, :cond_7

    .line 580
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 581
    .restart local v3    # "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 582
    .restart local v1    # "dch":Ljavax/activation/DataContentHandler;
    if-eqz v1, :cond_7

    goto/16 :goto_2

    .line 547
    .end local v0    # "cmdMap":Ljava/util/Map;
    .end local v1    # "dch":Ljavax/activation/DataContentHandler;
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "v":Ljava/util/List;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 430
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 432
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 441
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v3, v4, :cond_4

    .line 449
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljavax/activation/CommandInfo;

    .line 450
    .local v0, "cmdInfos":[Ljavax/activation/CommandInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    check-cast v0, [Ljavax/activation/CommandInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    .restart local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    monitor-exit p0

    return-object v0

    .line 433
    .end local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 432
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_3
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 436
    .local v2, "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_2

    .line 437
    invoke-direct {p0, v2, v1}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 428
    .end local v1    # "cmdList":Ljava/util/List;
    .end local v2    # "cmdMap":Ljava/util/Map;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 442
    .restart local v1    # "cmdList":Ljava/util/List;
    .restart local v3    # "i":I
    :cond_4
    :try_start_2
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    if-nez v4, :cond_6

    .line 441
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 444
    :cond_6
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 445
    .restart local v2    # "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_5

    .line 446
    invoke-direct {p0, v2, v1}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "cmdName"    # Ljava/lang/String;

    .prologue
    .line 483
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 484
    :try_start_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 486
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 503
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v4, :cond_4

    .line 518
    const/4 v4, 0x0

    :goto_2
    monitor-exit p0

    return-object v4

    .line 487
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    if-nez v4, :cond_3

    .line 486
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    :cond_3
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 490
    .local v1, "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_2

    .line 492
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 493
    .local v3, "v":Ljava/util/List;
    if-eqz v3, :cond_2

    .line 494
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 496
    .local v0, "cmdClassName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 497
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, p2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 483
    .end local v0    # "cmdClassName":Ljava/lang/String;
    .end local v1    # "cmdMap":Ljava/util/Map;
    .end local v2    # "i":I
    .end local v3    # "v":Ljava/util/List;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 504
    .restart local v2    # "i":I
    :cond_4
    :try_start_2
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    if-nez v4, :cond_6

    .line 503
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 506
    :cond_6
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 507
    .restart local v1    # "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_5

    .line 509
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 510
    .restart local v3    # "v":Ljava/util/List;
    if-eqz v3, :cond_5

    .line 511
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    .restart local v0    # "cmdClassName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 514
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, p2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized getMimeTypes()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v2, "mtList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    .line 645
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 646
    .local v3, "mts":[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mts":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    .restart local v3    # "mts":[Ljava/lang/String;
    monitor-exit p0

    return-object v3

    .line 633
    .end local v3    # "mts":[Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v0

    if-nez v5, :cond_2

    .line 632
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_2
    iget-object v5, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/sun/activation/registries/MailcapFile;->getMimeTypes()[Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "ts":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 637
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 639
    aget-object v5, v4, v1

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 640
    aget-object v5, v4, v1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "mtList":Ljava/util/List;
    .end local v4    # "ts":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v0, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 668
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 670
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 683
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 684
    .local v1, "cmds":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cmds":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    .restart local v1    # "cmds":[Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 671
    .end local v1    # "cmds":[Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    if-nez v4, :cond_3

    .line 670
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 673
    :cond_3
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 674
    .restart local v1    # "cmds":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 675
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 677
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 678
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 666
    .end local v0    # "cmdList":Ljava/util/List;
    .end local v1    # "cmds":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v1, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 364
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 366
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 375
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v4, v4

    if-lt v3, v4, :cond_4

    .line 383
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljavax/activation/CommandInfo;

    .line 384
    .local v0, "cmdInfos":[Ljavax/activation/CommandInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    check-cast v0, [Ljavax/activation/CommandInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .restart local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    monitor-exit p0

    return-object v0

    .line 367
    .end local v0    # "cmdInfos":[Ljavax/activation/CommandInfo;
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 366
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    :cond_3
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 370
    .local v2, "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_2

    .line 371
    invoke-direct {p0, v2, v1}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 362
    .end local v1    # "cmdList":Ljava/util/List;
    .end local v2    # "cmdMap":Ljava/util/Map;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 376
    .restart local v1    # "cmdList":Ljava/util/List;
    .restart local v3    # "i":I
    :cond_4
    :try_start_2
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    if-nez v4, :cond_6

    .line 375
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 378
    :cond_6
    iget-object v4, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 379
    .restart local v2    # "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_5

    .line 380
    invoke-direct {p0, v2, v1}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
