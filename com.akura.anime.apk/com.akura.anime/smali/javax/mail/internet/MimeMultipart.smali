.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# static fields
.field private static bmparse:Z

.field private static ignoreMissingBoundaryParameter:Z

.field private static ignoreMissingEndBoundary:Z


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 102
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 103
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 104
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    .line 109
    :try_start_0
    const-string v3, "mail.mime.multipart.ignoremissingendboundary"

    .line 108
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 111
    :goto_0
    sput-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 114
    const-string v3, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 113
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 116
    :goto_1
    sput-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 119
    const-string v3, "mail.mime.multipart.bmparse"

    .line 118
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_3
    return-void

    :cond_0
    move v3, v2

    .line 112
    goto :goto_0

    :cond_1
    move v3, v2

    .line 117
    goto :goto_1

    :cond_2
    move v1, v2

    .line 121
    goto :goto_2

    .line 122
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 130
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 138
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Ljavax/mail/internet/ContentType;

    const-string v2, "multipart"

    invoke-direct {v1, v2, p1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 179
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "boundary"

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 202
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 130
    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 204
    instance-of v1, p1, Ljavax/mail/MessageAware;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 205
    check-cast v1, Ljavax/mail/MessageAware;

    invoke-interface {v1}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 206
    .local v0, "mc":Ljavax/mail/MessageContext;
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 209
    .end local v0    # "mc":Ljavax/mail/MessageContext;
    :cond_0
    instance-of v1, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v1, :cond_1

    .line 211
    check-cast p1, Ljavax/mail/MultipartDataSource;

    .end local p1    # "ds":Ljavax/activation/DataSource;
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 220
    :goto_0
    return-void

    .line 217
    .restart local p1    # "ds":Ljavax/activation/DataSource;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 218
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 219
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized parsebm()V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 718
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    move/from16 v43, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v43, :cond_0

    .line 1034
    :goto_0
    monitor-exit p0

    return-void

    .line 721
    :cond_0
    const/16 v25, 0x0

    .line 722
    .local v25, "in":Ljava/io/InputStream;
    const/16 v38, 0x0

    .line 723
    .local v38, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v40, 0x0

    .local v40, "start":J
    const-wide/16 v18, 0x0

    .line 726
    .local v18, "end":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    .line 727
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    move/from16 v43, v0

    if-nez v43, :cond_1

    .line 728
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v43, v0

    if-nez v43, :cond_1

    .line 729
    move-object/from16 v0, v25

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v43, v0

    if-nez v43, :cond_1

    .line 730
    new-instance v26, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v25    # "in":Ljava/io/InputStream;
    .local v26, "in":Ljava/io/InputStream;
    move-object/from16 v25, v26

    .line 734
    .end local v26    # "in":Ljava/io/InputStream;
    .restart local v25    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    move-object/from16 v0, v25

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v43, v0

    if-eqz v43, :cond_2

    .line 735
    move-object/from16 v0, v25

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object/from16 v38, v0

    .line 737
    :cond_2
    new-instance v15, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v15, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 738
    .local v15, "cType":Ljavax/mail/internet/ContentType;
    const/4 v11, 0x0

    .line 739
    .local v11, "boundary":Ljava/lang/String;
    const-string v43, "boundary"

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 740
    .local v12, "bp":Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 741
    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "--"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    .line 747
    :cond_3
    :try_start_3
    new-instance v31, Lcom/sun/mail/util/LineInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 748
    .local v31, "lin":Lcom/sun/mail/util/LineInputStream;
    const/16 v35, 0x0

    .line 750
    .local v35, "preamblesb":Ljava/lang/StringBuffer;
    const/16 v33, 0x0

    .line 751
    .local v33, "lineSeparator":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual/range {v31 .. v31}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v32

    .local v32, "line":Ljava/lang/String;
    if-nez v32, :cond_7

    .line 798
    :cond_5
    :goto_2
    if-nez v32, :cond_f

    .line 799
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "Missing start boundary"

    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1023
    .end local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v32    # "line":Ljava/lang/String;
    .end local v33    # "lineSeparator":Ljava/lang/String;
    .end local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v29

    .line 1024
    .local v29, "ioex":Ljava/io/IOException;
    :try_start_4
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "IO Error"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v43
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1025
    .end local v29    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v43

    .line 1027
    :try_start_5
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1031
    :goto_3
    :try_start_6
    throw v43
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 718
    .end local v11    # "boundary":Ljava/lang/String;
    .end local v12    # "bp":Ljava/lang/String;
    .end local v15    # "cType":Ljavax/mail/internet/ContentType;
    .end local v18    # "end":J
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v38    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v40    # "start":J
    :catchall_1
    move-exception v43

    monitor-exit p0

    throw v43

    .line 731
    .restart local v18    # "end":J
    .restart local v25    # "in":Ljava/io/InputStream;
    .restart local v38    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v40    # "start":J
    :catch_1
    move-exception v20

    .line 732
    .local v20, "ex":Ljava/lang/Exception;
    :try_start_7
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "No inputstream from datasource"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v43

    .line 742
    .end local v20    # "ex":Ljava/lang/Exception;
    .restart local v11    # "boundary":Ljava/lang/String;
    .restart local v12    # "bp":Ljava/lang/String;
    .restart local v15    # "cType":Ljavax/mail/internet/ContentType;
    :cond_6
    sget-boolean v43, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v43, :cond_3

    .line 743
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "Missing boundary parameter"

    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 759
    .restart local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v32    # "line":Ljava/lang/String;
    .restart local v33    # "lineSeparator":Ljava/lang/String;
    .restart local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_7
    :try_start_8
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    add-int/lit8 v24, v43, -0x1

    .local v24, "i":I
    :goto_4
    if-gez v24, :cond_c

    .line 764
    :cond_8
    const/16 v43, 0x0

    add-int/lit8 v44, v24, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 765
    if-eqz v11, :cond_e

    .line 766
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_5

    .line 781
    :cond_9
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v43

    if-lez v43, :cond_4

    .line 784
    if-nez v33, :cond_a

    .line 787
    :try_start_9
    const-string v43, "line.separator"

    const-string v44, "\n"

    invoke-static/range {v43 .. v44}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v33

    .line 793
    :cond_a
    :goto_5
    if-nez v35, :cond_b

    .line 794
    :try_start_a
    new-instance v35, Ljava/lang/StringBuffer;

    .end local v35    # "preamblesb":Ljava/lang/StringBuffer;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    add-int/lit8 v43, v43, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 795
    .restart local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_b
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 760
    :cond_c
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 761
    .local v14, "c":C
    const/16 v43, 0x20

    move/from16 v0, v43

    if-eq v14, v0, :cond_d

    const/16 v43, 0x9

    move/from16 v0, v43

    if-ne v14, v0, :cond_8

    .line 759
    :cond_d
    add-int/lit8 v24, v24, -0x1

    goto :goto_4

    .line 774
    .end local v14    # "c":C
    :cond_e
    const-string v43, "--"

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_9

    .line 775
    move-object/from16 v11, v32

    .line 776
    goto/16 :goto_2

    .line 788
    :catch_2
    move-exception v20

    .line 789
    .local v20, "ex":Ljava/lang/SecurityException;
    const-string v33, "\n"

    goto :goto_5

    .line 801
    .end local v20    # "ex":Ljava/lang/SecurityException;
    .end local v24    # "i":I
    :cond_f
    if-eqz v35, :cond_10

    .line 802
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 805
    :cond_10
    invoke-static {v11}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 806
    .local v10, "bndbytes":[B
    array-length v9, v10

    .line 813
    .local v9, "bl":I
    const/16 v43, 0x100

    move/from16 v0, v43

    new-array v8, v0, [I

    .line 814
    .local v8, "bcs":[I
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_6
    move/from16 v0, v24

    if-lt v0, v9, :cond_11

    .line 818
    new-array v0, v9, [I

    move-object/from16 v22, v0

    .line 820
    .local v22, "gss":[I
    move/from16 v24, v9

    :goto_7
    if-gtz v24, :cond_12

    .line 836
    add-int/lit8 v43, v9, -0x1

    const/16 v44, 0x1

    aput v44, v22, v43
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 842
    const/16 v16, 0x0

    .line 844
    .local v16, "done":Z
    :goto_8
    if-eqz v16, :cond_16

    .line 1027
    :goto_9
    :try_start_b
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1033
    :goto_a
    const/16 v43, 0x1

    :try_start_c
    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 815
    .end local v16    # "done":Z
    .end local v22    # "gss":[I
    :cond_11
    :try_start_d
    aget-byte v43, v10, v24

    add-int/lit8 v44, v24, 0x1

    aput v44, v8, v43

    .line 814
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 822
    .restart local v22    # "gss":[I
    :cond_12
    add-int/lit8 v30, v9, -0x1

    .local v30, "j":I
    :goto_b
    move/from16 v0, v30

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    .line 833
    :goto_c
    if-gtz v30, :cond_15

    .line 820
    :cond_13
    add-int/lit8 v24, v24, -0x1

    goto :goto_7

    .line 824
    :cond_14
    aget-byte v43, v10, v30

    sub-int v44, v30, v24

    aget-byte v44, v10, v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_13

    .line 826
    add-int/lit8 v43, v30, -0x1

    aput v24, v22, v43

    .line 822
    add-int/lit8 v30, v30, -0x1

    goto :goto_b

    .line 834
    :cond_15
    add-int/lit8 v30, v30, -0x1

    aput v24, v22, v30

    goto :goto_c

    .line 845
    .end local v30    # "j":I
    .restart local v16    # "done":Z
    :cond_16
    const/16 v23, 0x0

    .line 846
    .local v23, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v38, :cond_1a

    .line 847
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v40

    .line 849
    :cond_17
    invoke-virtual/range {v31 .. v31}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_18

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    if-gtz v43, :cond_17

    .line 851
    :cond_18
    if-nez v32, :cond_1b

    .line 852
    sget-boolean v43, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v43, :cond_19

    .line 853
    new-instance v43, Ljavax/mail/MessagingException;

    .line 854
    const-string v44, "missing multipart end boundary"

    .line 853
    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 856
    :cond_19
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    goto :goto_9

    .line 861
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v23

    .line 864
    :cond_1b
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->markSupported()Z

    move-result v43

    if-nez v43, :cond_1c

    .line 865
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "Stream doesn\'t support mark"

    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 867
    :cond_1c
    const/4 v13, 0x0

    .line 869
    .local v13, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v38, :cond_1d

    .line 870
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 884
    .restart local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    :goto_d
    new-array v0, v9, [B

    move-object/from16 v28, v0

    .line 885
    .local v28, "inbuf":[B
    new-array v0, v9, [B

    move-object/from16 v37, v0

    .line 886
    .local v37, "previnbuf":[B
    const/16 v27, 0x0

    .line 887
    .local v27, "inSize":I
    const/16 v36, 0x0

    .line 889
    .local v36, "prevSize":I
    const/16 v21, 0x1

    .line 895
    .local v21, "first":Z
    :goto_e
    add-int/lit8 v43, v9, 0x4

    move/from16 v0, v43

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v43, v0

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 896
    const/16 v17, 0x0

    .line 897
    .local v17, "eolLen":I
    const/16 v43, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v9}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v27

    .line 898
    move/from16 v0, v27

    if-ge v0, v9, :cond_21

    .line 900
    sget-boolean v43, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v43, :cond_1e

    .line 901
    new-instance v43, Ljavax/mail/MessagingException;

    .line 902
    const-string v44, "missing multipart end boundary"

    .line 901
    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 872
    .end local v17    # "eolLen":I
    .end local v21    # "first":Z
    .end local v27    # "inSize":I
    .end local v28    # "inbuf":[B
    .end local v36    # "prevSize":I
    .end local v37    # "previnbuf":[B
    :cond_1d
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    goto :goto_d

    .line 903
    .restart local v17    # "eolLen":I
    .restart local v21    # "first":Z
    .restart local v27    # "inSize":I
    .restart local v28    # "inbuf":[B
    .restart local v36    # "prevSize":I
    .restart local v37    # "previnbuf":[B
    :cond_1e
    if-eqz v38, :cond_1f

    .line 904
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    .line 905
    :cond_1f
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 906
    const/16 v16, 0x1

    .line 1009
    :cond_20
    :goto_f
    if-eqz v38, :cond_30

    .line 1010
    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v34

    .line 1021
    .local v34, "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-super {v0, v1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    goto/16 :goto_8

    .line 911
    .end local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_21
    add-int/lit8 v24, v9, -0x1

    :goto_11
    if-gez v24, :cond_27

    .line 915
    :cond_22
    if-gez v24, :cond_2b

    .line 916
    const/16 v17, 0x0

    .line 917
    if-nez v21, :cond_24

    .line 920
    add-int/lit8 v43, v36, -0x1

    aget-byte v6, v37, v43

    .line 921
    .local v6, "b":I
    const/16 v43, 0xd

    move/from16 v0, v43

    if-eq v6, v0, :cond_23

    const/16 v43, 0xa

    move/from16 v0, v43

    if-ne v6, v0, :cond_24

    .line 922
    :cond_23
    const/16 v17, 0x1

    .line 923
    const/16 v43, 0xa

    move/from16 v0, v43

    if-ne v6, v0, :cond_24

    const/16 v43, 0x2

    move/from16 v0, v36

    move/from16 v1, v43

    if-lt v0, v1, :cond_24

    .line 924
    add-int/lit8 v43, v36, -0x2

    aget-byte v6, v37, v43

    .line 925
    const/16 v43, 0xd

    move/from16 v0, v43

    if-ne v6, v0, :cond_24

    .line 926
    const/16 v17, 0x2

    .line 930
    .end local v6    # "b":I
    :cond_24
    if-nez v21, :cond_25

    if-lez v17, :cond_2a

    .line 931
    :cond_25
    if-eqz v38, :cond_26

    .line 934
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v44

    int-to-long v0, v9

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v18, v44, v46

    .line 937
    :cond_26
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 938
    .local v7, "b2":I
    const/16 v43, 0x2d

    move/from16 v0, v43

    if-ne v7, v0, :cond_29

    .line 939
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v43

    const/16 v44, 0x2d

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_29

    .line 940
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 941
    const/16 v16, 0x1

    .line 942
    goto/16 :goto_f

    .line 912
    .end local v7    # "b2":I
    :cond_27
    aget-byte v43, v28, v24

    aget-byte v44, v10, v24

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_22

    .line 911
    add-int/lit8 v24, v24, -0x1

    goto :goto_11

    .line 947
    .restart local v7    # "b2":I
    :cond_28
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 946
    :cond_29
    const/16 v43, 0x20

    move/from16 v0, v43

    if-eq v7, v0, :cond_28

    const/16 v43, 0x9

    move/from16 v0, v43

    if-eq v7, v0, :cond_28

    .line 949
    const/16 v43, 0xa

    move/from16 v0, v43

    if-eq v7, v0, :cond_20

    .line 951
    const/16 v43, 0xd

    move/from16 v0, v43

    if-ne v7, v0, :cond_2a

    .line 952
    const/16 v43, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 953
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v43

    const/16 v44, 0xa

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_20

    .line 954
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_f

    .line 958
    .end local v7    # "b2":I
    :cond_2a
    const/16 v24, 0x0

    .line 968
    :cond_2b
    add-int/lit8 v43, v24, 0x1

    aget-byte v44, v28, v24

    and-int/lit8 v44, v44, 0x7f

    aget v44, v8, v44

    sub-int v43, v43, v44

    aget v44, v22, v24

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 970
    .local v39, "skip":I
    const/16 v43, 0x2

    move/from16 v0, v39

    move/from16 v1, v43

    if-ge v0, v1, :cond_2e

    .line 974
    if-nez v38, :cond_2c

    const/16 v43, 0x1

    move/from16 v0, v36

    move/from16 v1, v43

    if-le v0, v1, :cond_2c

    .line 975
    const/16 v43, 0x0

    add-int/lit8 v44, v36, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 976
    :cond_2c
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    .line 977
    const-wide/16 v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 978
    const/16 v43, 0x1

    move/from16 v0, v36

    move/from16 v1, v43

    if-lt v0, v1, :cond_2d

    .line 980
    const/16 v43, 0x0

    add-int/lit8 v44, v36, -0x1

    aget-byte v44, v37, v44

    aput-byte v44, v37, v43

    .line 981
    const/16 v43, 0x1

    const/16 v44, 0x0

    aget-byte v44, v28, v44

    aput-byte v44, v37, v43

    .line 982
    const/16 v36, 0x2

    .line 1002
    :goto_12
    const/16 v21, 0x0

    .line 894
    goto/16 :goto_e

    .line 985
    :cond_2d
    const/16 v43, 0x0

    const/16 v44, 0x0

    aget-byte v44, v28, v44

    aput-byte v44, v37, v43

    .line 986
    const/16 v36, 0x1

    goto :goto_12

    .line 991
    :cond_2e
    if-lez v36, :cond_2f

    if-nez v38, :cond_2f

    .line 992
    const/16 v43, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v43

    move/from16 v2, v36

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 994
    :cond_2f
    move/from16 v36, v39

    .line 995
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    .line 996
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 998
    move-object/from16 v42, v28

    .line 999
    .local v42, "tmp":[B
    move-object/from16 v28, v37

    .line 1000
    move-object/from16 v37, v42

    goto :goto_12

    .line 1013
    .end local v39    # "skip":I
    .end local v42    # "tmp":[B
    :cond_30
    sub-int v43, v36, v17

    if-lez v43, :cond_31

    .line 1014
    const/16 v43, 0x0

    sub-int v44, v36, v17

    move-object/from16 v0, v37

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1017
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move/from16 v43, v0

    if-nez v43, :cond_32

    if-lez v27, :cond_32

    .line 1018
    const/16 v43, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v43

    move/from16 v2, v27

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1019
    :cond_32
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v34

    .restart local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    goto/16 :goto_10

    .line 1028
    .end local v8    # "bcs":[I
    .end local v9    # "bl":I
    .end local v10    # "bndbytes":[B
    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "done":Z
    .end local v17    # "eolLen":I
    .end local v21    # "first":Z
    .end local v22    # "gss":[I
    .end local v23    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v24    # "i":I
    .end local v27    # "inSize":I
    .end local v28    # "inbuf":[B
    .end local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v32    # "line":Ljava/lang/String;
    .end local v33    # "lineSeparator":Ljava/lang/String;
    .end local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v35    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v36    # "prevSize":I
    .end local v37    # "previnbuf":[B
    :catch_3
    move-exception v44

    goto/16 :goto_3

    .restart local v8    # "bcs":[I
    .restart local v9    # "bl":I
    .restart local v10    # "bndbytes":[B
    .restart local v16    # "done":Z
    .restart local v22    # "gss":[I
    .restart local v24    # "i":I
    .restart local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v32    # "line":Ljava/lang/String;
    .restart local v33    # "lineSeparator":Ljava/lang/String;
    .restart local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_4
    move-exception v43

    goto/16 :goto_a
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1052
    if-nez p3, :cond_1

    .line 1053
    const/4 v1, 0x0

    .line 1063
    :cond_0
    :goto_0
    return v1

    .line 1054
    :cond_1
    const/4 v1, 0x0

    .line 1055
    .local v1, "total":I
    :goto_1
    if-gtz p3, :cond_3

    .line 1063
    :cond_2
    if-gtz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 1056
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1057
    .local v0, "bsize":I
    if-lez v0, :cond_2

    .line 1059
    add-int/2addr p2, v0

    .line 1060
    add-int/2addr v1, v0

    .line 1061
    sub-int/2addr p3, v0

    goto :goto_1
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1071
    :goto_0
    cmp-long v2, p2, v4

    if-gtz v2, :cond_0

    .line 1077
    return-void

    .line 1072
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 1073
    .local v0, "cur":J
    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    .line 1074
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "can\'t skip"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1075
    :cond_1
    sub-long/2addr p2, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 326
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 346
    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1092
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1109
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 256
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .locals 5
    .param p1, "CID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 270
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 271
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 277
    const/4 v2, 0x0

    :cond_0
    monitor-exit p0

    return-object v2

    .line 272
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    .line 273
    .local v2, "part":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 271
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 243
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 378
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isComplete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 365
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    move/from16 v33, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v33, :cond_0

    .line 702
    :goto_0
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    :try_start_1
    sget-boolean v33, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v33, :cond_1

    .line 466
    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v33

    monitor-exit p0

    throw v33

    .line 470
    :cond_1
    const/16 v24, 0x0

    .line 471
    .local v24, "in":Ljava/io/InputStream;
    const/16 v32, 0x0

    .line 472
    .local v32, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v34, 0x0

    .local v34, "start":J
    const-wide/16 v18, 0x0

    .line 475
    .local v18, "end":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    .line 476
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    move/from16 v33, v0

    if-nez v33, :cond_2

    .line 477
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v33, v0

    if-nez v33, :cond_2

    .line 478
    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v33, v0

    if-nez v33, :cond_2

    .line 479
    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v24    # "in":Ljava/io/InputStream;
    .local v25, "in":Ljava/io/InputStream;
    move-object/from16 v24, v25

    .line 483
    .end local v25    # "in":Ljava/io/InputStream;
    .restart local v24    # "in":Ljava/io/InputStream;
    :cond_2
    :try_start_3
    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v33, v0

    if-eqz v33, :cond_3

    .line 484
    move-object/from16 v0, v24

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object/from16 v32, v0

    .line 486
    :cond_3
    new-instance v15, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 487
    .local v15, "cType":Ljavax/mail/internet/ContentType;
    const/4 v11, 0x0

    .line 488
    .local v11, "boundary":Ljava/lang/String;
    const-string v33, "boundary"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 489
    .local v12, "bp":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 490
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v36, "--"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    .line 496
    :cond_4
    :try_start_4
    new-instance v27, Lcom/sun/mail/util/LineInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 497
    .local v27, "lin":Lcom/sun/mail/util/LineInputStream;
    const/16 v31, 0x0

    .line 499
    .local v31, "preamblesb":Ljava/lang/StringBuffer;
    const/16 v29, 0x0

    .line 500
    .local v29, "lineSeparator":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual/range {v27 .. v27}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, "line":Ljava/lang/String;
    if-nez v28, :cond_8

    .line 547
    :cond_6
    :goto_2
    if-nez v28, :cond_10

    .line 548
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "Missing start boundary"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 691
    .end local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "line":Ljava/lang/String;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v26

    .line 692
    .local v26, "ioex":Ljava/io/IOException;
    :try_start_5
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "IO Error"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v33
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 693
    .end local v26    # "ioex":Ljava/io/IOException;
    :catchall_1
    move-exception v33

    .line 695
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 699
    :goto_3
    :try_start_7
    throw v33

    .line 480
    .end local v11    # "boundary":Ljava/lang/String;
    .end local v12    # "bp":Ljava/lang/String;
    .end local v15    # "cType":Ljavax/mail/internet/ContentType;
    :catch_1
    move-exception v21

    .line 481
    .local v21, "ex":Ljava/lang/Exception;
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "No inputstream from datasource"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v33

    .line 491
    .end local v21    # "ex":Ljava/lang/Exception;
    .restart local v11    # "boundary":Ljava/lang/String;
    .restart local v12    # "bp":Ljava/lang/String;
    .restart local v15    # "cType":Ljavax/mail/internet/ContentType;
    :cond_7
    sget-boolean v33, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v33, :cond_4

    .line 492
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "Missing boundary parameter"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 508
    .restart local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v28    # "line":Ljava/lang/String;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_8
    :try_start_8
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v23, v33, -0x1

    .local v23, "i":I
    :goto_4
    if-gez v23, :cond_d

    .line 513
    :cond_9
    const/16 v33, 0x0

    add-int/lit8 v36, v23, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 514
    if-eqz v11, :cond_f

    .line 515
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_6

    .line 530
    :cond_a
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v33

    if-lez v33, :cond_5

    .line 533
    if-nez v29, :cond_b

    .line 536
    :try_start_9
    const-string v33, "line.separator"

    const-string v36, "\n"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v29

    .line 542
    :cond_b
    :goto_5
    if-nez v31, :cond_c

    .line 543
    :try_start_a
    new-instance v31, Ljava/lang/StringBuffer;

    .end local v31    # "preamblesb":Ljava/lang/StringBuffer;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 544
    .restart local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_c
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 509
    :cond_d
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 510
    .local v14, "c":C
    const/16 v33, 0x20

    move/from16 v0, v33

    if-eq v14, v0, :cond_e

    const/16 v33, 0x9

    move/from16 v0, v33

    if-ne v14, v0, :cond_9

    .line 508
    :cond_e
    add-int/lit8 v23, v23, -0x1

    goto :goto_4

    .line 523
    .end local v14    # "c":C
    :cond_f
    const-string v33, "--"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 524
    move-object/from16 v11, v28

    .line 525
    goto/16 :goto_2

    .line 537
    :catch_2
    move-exception v21

    .line 538
    .local v21, "ex":Ljava/lang/SecurityException;
    const-string v29, "\n"

    goto :goto_5

    .line 550
    .end local v21    # "ex":Ljava/lang/SecurityException;
    .end local v23    # "i":I
    :cond_10
    if-eqz v31, :cond_11

    .line 551
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 554
    :cond_11
    invoke-static {v11}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 555
    .local v9, "bndbytes":[B
    array-length v8, v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 561
    .local v8, "bl":I
    const/16 v16, 0x0

    .line 563
    .local v16, "done":Z
    :goto_6
    if-eqz v16, :cond_12

    .line 695
    :goto_7
    :try_start_b
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 701
    :goto_8
    const/16 v33, 0x1

    :try_start_c
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 564
    :cond_12
    const/16 v22, 0x0

    .line 565
    .local v22, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v32, :cond_16

    .line 566
    :try_start_d
    invoke-interface/range {v32 .. v32}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v34

    .line 568
    :cond_13
    invoke-virtual/range {v27 .. v27}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_14

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v33

    if-gtz v33, :cond_13

    .line 570
    :cond_14
    if-nez v28, :cond_17

    .line 571
    sget-boolean v33, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v33, :cond_15

    .line 572
    new-instance v33, Ljavax/mail/MessagingException;

    .line 573
    const-string v36, "missing multipart end boundary"

    .line 572
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 575
    :cond_15
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    goto :goto_7

    .line 580
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v22

    .line 583
    :cond_17
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->markSupported()Z

    move-result v33

    if-nez v33, :cond_18

    .line 584
    new-instance v33, Ljavax/mail/MessagingException;

    const-string v36, "Stream doesn\'t support mark"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 586
    :cond_18
    const/4 v13, 0x0

    .line 588
    .local v13, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v32, :cond_1c

    .line 589
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 593
    .restart local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    :goto_9
    const/4 v10, 0x1

    .line 595
    .local v10, "bol":Z
    const/16 v17, -0x1

    .local v17, "eol1":I
    const/16 v20, -0x1

    .line 601
    .local v20, "eol2":I
    :cond_19
    :goto_a
    if-eqz v10, :cond_22

    .line 607
    add-int/lit8 v33, v8, 0x4

    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 609
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_b
    move/from16 v0, v23

    if-lt v0, v8, :cond_1d

    .line 612
    :cond_1a
    move/from16 v0, v23

    if-ne v0, v8, :cond_20

    .line 614
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 615
    .local v7, "b2":I
    const/16 v33, 0x2d

    move/from16 v0, v33

    if-ne v7, v0, :cond_1f

    .line 616
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v33

    const/16 v36, 0x2d

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_1f

    .line 617
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 618
    const/16 v16, 0x1

    .line 685
    .end local v7    # "b2":I
    .end local v23    # "i":I
    :cond_1b
    :goto_c
    if-eqz v32, :cond_29

    .line 686
    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v30

    .line 689
    .local v30, "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-super {v0, v1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    goto/16 :goto_6

    .line 591
    .end local v10    # "bol":Z
    .end local v17    # "eol1":I
    .end local v20    # "eol2":I
    .end local v30    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_1c
    invoke-interface/range {v32 .. v32}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    goto :goto_9

    .line 610
    .restart local v10    # "bol":Z
    .restart local v17    # "eol1":I
    .restart local v20    # "eol2":I
    .restart local v23    # "i":I
    :cond_1d
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v33

    aget-byte v36, v9, v23

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    .line 609
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 624
    .restart local v7    # "b2":I
    :cond_1e
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 623
    :cond_1f
    const/16 v33, 0x20

    move/from16 v0, v33

    if-eq v7, v0, :cond_1e

    const/16 v33, 0x9

    move/from16 v0, v33

    if-eq v7, v0, :cond_1e

    .line 626
    const/16 v33, 0xa

    move/from16 v0, v33

    if-eq v7, v0, :cond_1b

    .line 628
    const/16 v33, 0xd

    move/from16 v0, v33

    if-ne v7, v0, :cond_20

    .line 629
    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 630
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v33

    const/16 v36, 0xa

    move/from16 v0, v33

    move/from16 v1, v36

    if-eq v0, v1, :cond_1b

    .line 631
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->reset()V

    goto :goto_c

    .line 636
    .end local v7    # "b2":I
    :cond_20
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->reset()V

    .line 640
    if-eqz v13, :cond_22

    const/16 v33, -0x1

    move/from16 v0, v17

    move/from16 v1, v33

    if-eq v0, v1, :cond_22

    .line 641
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    const/16 v33, -0x1

    move/from16 v0, v20

    move/from16 v1, v33

    if-eq v0, v1, :cond_21

    .line 643
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 644
    :cond_21
    const/16 v20, -0x1

    move/from16 v17, v20

    .line 649
    .end local v23    # "i":I
    :cond_22
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v6

    .local v6, "b":I
    if-gez v6, :cond_24

    .line 650
    sget-boolean v33, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v33, :cond_23

    .line 651
    new-instance v33, Ljavax/mail/MessagingException;

    .line 652
    const-string v36, "missing multipart end boundary"

    .line 651
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 653
    :cond_23
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 654
    const/16 v16, 0x1

    .line 655
    goto/16 :goto_c

    .line 662
    :cond_24
    const/16 v33, 0xd

    move/from16 v0, v33

    if-eq v6, v0, :cond_25

    const/16 v33, 0xa

    move/from16 v0, v33

    if-ne v6, v0, :cond_28

    .line 663
    :cond_25
    const/4 v10, 0x1

    .line 664
    if-eqz v32, :cond_26

    .line 665
    invoke-interface/range {v32 .. v32}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v36

    const-wide/16 v38, 0x1

    sub-long v18, v36, v38

    .line 666
    :cond_26
    move/from16 v17, v6

    .line 667
    const/16 v33, 0xd

    move/from16 v0, v33

    if-ne v6, v0, :cond_19

    .line 668
    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 669
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v33, 0xa

    move/from16 v0, v33

    if-ne v6, v0, :cond_27

    .line 670
    move/from16 v20, v6

    goto/16 :goto_a

    .line 672
    :cond_27
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_a

    .line 675
    :cond_28
    const/4 v10, 0x0

    .line 676
    if-eqz v13, :cond_19

    .line 677
    invoke-virtual {v13, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_a

    .line 688
    .end local v6    # "b":I
    :cond_29
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v30

    .restart local v30    # "part":Ljavax/mail/internet/MimeBodyPart;
    goto/16 :goto_d

    .line 696
    .end local v8    # "bl":I
    .end local v9    # "bndbytes":[B
    .end local v10    # "bol":Z
    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "done":Z
    .end local v17    # "eol1":I
    .end local v20    # "eol2":I
    .end local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "line":Ljava/lang/String;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    .end local v30    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_3
    move-exception v36

    goto/16 :goto_3

    .restart local v8    # "bl":I
    .restart local v9    # "bndbytes":[B
    .restart local v16    # "done":Z
    .restart local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v28    # "line":Ljava/lang/String;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_4
    move-exception v33

    goto/16 :goto_8
.end method

.method public removeBodyPart(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 310
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    .line 311
    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 293
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .locals 1
    .param p1, "preamble"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 231
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 417
    return-void

    .line 416
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    new-instance v5, Ljavax/mail/internet/ContentType;

    iget-object v6, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v6, "boundary"

    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 427
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "boundary":Ljava/lang/String;
    new-instance v2, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v2, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 432
    .local v2, "los":Lcom/sun/mail/util/LineOutputStream;
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 433
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 434
    .local v3, "pb":[B
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 436
    array-length v4, v3

    if-lez v4, :cond_0

    .line 437
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 438
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 442
    .end local v3    # "pb":[B
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 443
    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 444
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v4, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 445
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "los":Lcom/sun/mail/util/LineOutputStream;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
