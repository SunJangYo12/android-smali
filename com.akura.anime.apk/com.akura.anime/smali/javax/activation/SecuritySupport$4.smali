.class Ljavax/activation/SecuritySupport$4;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/activation/SecuritySupport$4;->val$name:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 112
    const/4 v2, 0x0

    check-cast v2, [Ljava/net/URL;

    .line 114
    .local v2, "ret":[Ljava/net/URL;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v4, "v":Ljava/util/List;
    iget-object v5, p0, Ljavax/activation/SecuritySupport$4;->val$name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 116
    .local v1, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3

    .line 121
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 122
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Ljava/net/URL;

    .line 123
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/net/URL;

    move-object v2, v0

    .line 127
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v4    # "v":Ljava/util/List;
    :cond_2
    :goto_1
    return-object v2

    .line 117
    .restart local v1    # "e":Ljava/util/Enumeration;
    .restart local v4    # "v":Ljava/util/List;
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 118
    .local v3, "url":Ljava/net/URL;
    if-eqz v3, :cond_0

    .line 119
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 125
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "v":Ljava/util/List;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 126
    :catch_1
    move-exception v5

    goto :goto_1
.end method
