.class public Ljavax/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field public static final ALL:I = -0x1

.field static final ALL_ASCII:I = 0x1

.field static final MOSTLY_ASCII:I = 0x2

.field static final MOSTLY_NONASCII:I = 0x3

.field private static decodeStrict:Z

.field private static defaultJavaCharset:Ljava/lang/String;

.field private static defaultMIMECharset:Ljava/lang/String;

.field private static encodeEolStrict:Z

.field private static foldEncodedWords:Z

.field private static foldText:Z

.field private static java2mime:Ljava/util/Hashtable;

.field private static mime2java:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    sput-boolean v5, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 136
    sput-boolean v4, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 137
    sput-boolean v4, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 138
    sput-boolean v5, Ljavax/mail/internet/MimeUtility;->foldText:Z

    .line 142
    :try_start_0
    const-string v6, "mail.mime.decodetext.strict"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    :goto_0
    sput-boolean v6, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 145
    const-string v6, "mail.mime.encodeeol.strict"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    if-eqz v3, :cond_4

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v5

    :goto_1
    sput-boolean v6, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 148
    const-string v6, "mail.mime.foldencodedwords"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_5

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v5

    :goto_2
    sput-boolean v6, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 151
    const-string v6, "mail.mime.foldtext"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    if-eqz v3, :cond_6

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_3
    sput-boolean v4, Ljavax/mail/internet/MimeUtility;->foldText:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1209
    :goto_4
    new-instance v4, Ljava/util/Hashtable;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    .line 1210
    new-instance v4, Ljava/util/Hashtable;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    .line 1216
    :try_start_1
    const-class v4, Ljavax/mail/internet/MimeUtility;

    .line 1217
    const-string v5, "/META-INF/javamail.charset.map"

    .line 1216
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1219
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 1221
    :try_start_2
    new-instance v2, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v2, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1224
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_3
    move-object v0, v2

    check-cast v0, Lcom/sun/mail/util/LineInputStream;

    move-object v4, v0

    sget-object v5, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V

    .line 1227
    move-object v0, v2

    check-cast v0, Lcom/sun/mail/util/LineInputStream;

    move-object v4, v0

    sget-object v5, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1230
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1241
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_5
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1242
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_1"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_1"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-1"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_2"

    const-string v6, "ISO-8859-2"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_2"

    const-string v6, "ISO-8859-2"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-2"

    const-string v6, "ISO-8859-2"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_3"

    const-string v6, "ISO-8859-3"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_3"

    const-string v6, "ISO-8859-3"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-3"

    const-string v6, "ISO-8859-3"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_4"

    const-string v6, "ISO-8859-4"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_4"

    const-string v6, "ISO-8859-4"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-4"

    const-string v6, "ISO-8859-4"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_5"

    const-string v6, "ISO-8859-5"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_5"

    const-string v6, "ISO-8859-5"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-5"

    const-string v6, "ISO-8859-5"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_6"

    const-string v6, "ISO-8859-6"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_6"

    const-string v6, "ISO-8859-6"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-6"

    const-string v6, "ISO-8859-6"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_7"

    const-string v6, "ISO-8859-7"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_7"

    const-string v6, "ISO-8859-7"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-7"

    const-string v6, "ISO-8859-7"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_8"

    const-string v6, "ISO-8859-8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_8"

    const-string v6, "ISO-8859-8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-8"

    const-string v6, "ISO-8859-8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "8859_9"

    const-string v6, "ISO-8859-9"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859_9"

    const-string v6, "ISO-8859-9"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso8859-9"

    const-string v6, "ISO-8859-9"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "sjis"

    const-string v6, "Shift_JIS"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "jis"

    const-string v6, "ISO-2022-JP"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "iso2022jp"

    const-string v6, "ISO-2022-JP"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "euc_jp"

    const-string v6, "euc-jp"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "koi8_r"

    const-string v6, "koi8-r"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "euc_cn"

    const-string v6, "euc-cn"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "euc_tw"

    const-string v6, "euc-tw"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v5, "euc_kr"

    const-string v6, "euc-kr"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :cond_1
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1288
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "iso-2022-cn"

    const-string v6, "ISO2022CN"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "iso-2022-kr"

    const-string v6, "ISO2022KR"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "utf-8"

    const-string v6, "UTF8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "utf8"

    const-string v6, "UTF8"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "ja_jp.iso2022-7"

    const-string v6, "ISO2022JP"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "ja_jp.eucjp"

    const-string v6, "EUCJIS"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "euc-kr"

    const-string v6, "KSC5601"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "euckr"

    const-string v6, "KSC5601"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "us-ascii"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v5, "x-us-ascii"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_2
    return-void

    :cond_3
    move v6, v5

    .line 144
    goto/16 :goto_0

    :cond_4
    move v6, v4

    .line 147
    goto/16 :goto_1

    :cond_5
    move v6, v4

    .line 150
    goto/16 :goto_2

    :cond_6
    move v4, v5

    .line 153
    goto/16 :goto_3

    .line 1228
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .line 1230
    :goto_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1234
    :goto_7
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1236
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    goto/16 :goto_5

    .line 1231
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    goto :goto_7

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto/16 :goto_5

    .line 1228
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 154
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    goto/16 :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAscii(Ljava/io/InputStream;IZ)I
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "max"    # I
    .param p2, "breakOnNonAscii"    # Z

    .prologue
    .line 1416
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v12, 0x0

    .line 1418
    .local v12, "non_ascii":I
    const/16 v3, 0x1000

    .line 1419
    .local v3, "block":I
    const/4 v10, 0x0

    .line 1420
    .local v10, "linelen":I
    const/4 v11, 0x0

    .local v11, "longLine":Z
    const/4 v2, 0x0

    .line 1421
    .local v2, "badEOL":Z
    sget-boolean v13, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    if-eqz v13, :cond_2

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    .line 1422
    .local v5, "checkEOL":Z
    :goto_0
    const/4 v4, 0x0

    check-cast v4, [B

    .line 1423
    .local v4, "buf":[B
    if-eqz p1, :cond_0

    .line 1424
    const/4 v13, -0x1

    if-ne p1, v13, :cond_3

    const/16 v3, 0x1000

    .line 1425
    :goto_1
    new-array v4, v3, [B

    .line 1427
    :cond_0
    :goto_2
    if-nez p1, :cond_4

    .line 1465
    :cond_1
    :goto_3
    if-nez p1, :cond_e

    if-eqz p2, :cond_e

    .line 1472
    const/4 v13, 0x3

    .line 1489
    :goto_4
    return v13

    .line 1421
    .end local v4    # "buf":[B
    .end local v5    # "checkEOL":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1424
    .restart local v4    # "buf":[B
    .restart local v5    # "checkEOL":Z
    :cond_3
    const/16 v13, 0x1000

    invoke-static {p1, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    .line 1429
    :cond_4
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v13, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .local v9, "len":I
    const/4 v13, -0x1

    if-eq v9, v13, :cond_1

    .line 1431
    const/4 v8, 0x0

    .line 1432
    .local v8, "lastb":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-lt v6, v9, :cond_5

    .line 1461
    const/4 v13, -0x1

    if-eq p1, v13, :cond_0

    .line 1462
    sub-int/2addr p1, v9

    goto :goto_2

    .line 1437
    :cond_5
    aget-byte v13, v4, v6

    and-int/lit16 v1, v13, 0xff

    .line 1438
    .local v1, "b":I
    if-eqz v5, :cond_8

    .line 1439
    const/16 v13, 0xd

    if-ne v8, v13, :cond_6

    const/16 v13, 0xa

    if-ne v1, v13, :cond_7

    .line 1440
    :cond_6
    const/16 v13, 0xd

    if-eq v8, v13, :cond_8

    const/16 v13, 0xa

    if-ne v1, v13, :cond_8

    .line 1441
    :cond_7
    const/4 v2, 0x1

    .line 1442
    :cond_8
    const/16 v13, 0xd

    if-eq v1, v13, :cond_9

    const/16 v13, 0xa

    if-ne v1, v13, :cond_b

    .line 1443
    :cond_9
    const/4 v10, 0x0

    .line 1449
    :cond_a
    :goto_6
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_d

    .line 1450
    if-eqz p2, :cond_c

    .line 1451
    const/4 v13, 0x3

    goto :goto_4

    .line 1445
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 1446
    const/16 v13, 0x3e6

    if-le v10, v13, :cond_a

    .line 1447
    const/4 v11, 0x1

    goto :goto_6

    .line 1453
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 1456
    :goto_7
    move v8, v1

    .line 1432
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1455
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1458
    .end local v1    # "b":I
    .end local v6    # "i":I
    .end local v8    # "lastb":I
    .end local v9    # "len":I
    :catch_0
    move-exception v7

    .line 1459
    .local v7, "ioex":Ljava/io/IOException;
    goto :goto_3

    .line 1474
    .end local v7    # "ioex":Ljava/io/IOException;
    :cond_e
    if-nez v12, :cond_11

    .line 1479
    if-eqz v2, :cond_f

    .line 1480
    const/4 v13, 0x3

    goto :goto_4

    .line 1482
    :cond_f
    if-eqz v11, :cond_10

    .line 1483
    const/4 v13, 0x2

    goto :goto_4

    .line 1485
    :cond_10
    const/4 v13, 0x1

    goto :goto_4

    .line 1487
    :cond_11
    if-le v0, v12, :cond_12

    .line 1488
    const/4 v13, 0x2

    goto :goto_4

    .line 1489
    :cond_12
    const/4 v13, 0x3

    goto :goto_4
.end method

.method static checkAscii(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1345
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v3, 0x0

    .line 1346
    .local v3, "non_ascii":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1348
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1355
    if-nez v3, :cond_2

    .line 1356
    const/4 v4, 0x1

    .line 1360
    :goto_1
    return v4

    .line 1349
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1350
    add-int/lit8 v3, v3, 0x1

    .line 1348
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1352
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1357
    :cond_2
    if-le v0, v3, :cond_3

    .line 1358
    const/4 v4, 0x2

    goto :goto_1

    .line 1360
    :cond_3
    const/4 v4, 0x3

    goto :goto_1
.end method

.method static checkAscii([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 1374
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v2, 0x0

    .line 1376
    .local v2, "non_ascii":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 1386
    if-nez v2, :cond_2

    .line 1387
    const/4 v3, 0x1

    .line 1391
    :goto_1
    return v3

    .line 1380
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1381
    add-int/lit8 v2, v2, 0x1

    .line 1376
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1383
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1388
    :cond_2
    if-le v0, v2, :cond_3

    .line 1389
    const/4 v3, 0x2

    goto :goto_1

    .line 1391
    :cond_3
    const/4 v3, 0x3

    goto :goto_1
.end method

.method public static decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 306
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 317
    .end local p0    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 308
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    new-instance v0, Lcom/sun/mail/util/QPDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPDecoderStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 310
    :cond_2
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 312
    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    :cond_3
    new-instance v0, Lcom/sun/mail/util/UUDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUDecoderStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 314
    :cond_4
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    .line 861
    const/4 v4, 0x0

    .line 862
    .local v4, "start":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 863
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    const-string v5, "=?"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, "i":I
    if-gez v2, :cond_1

    .line 886
    :cond_0
    if-nez v4, :cond_2

    .line 890
    .end local p0    # "word":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 864
    .restart local p0    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 867
    .local v1, "end":I
    if-ltz v1, :cond_0

    .line 870
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 871
    if-ltz v1, :cond_0

    .line 874
    const-string v5, "?="

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 875
    if-ltz v1, :cond_0

    .line 877
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 879
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 883
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    add-int/lit8 v4, v1, 0x2

    goto :goto_0

    .line 888
    .end local v1    # "end":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 889
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 880
    .restart local v1    # "end":I
    .restart local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "etext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 501
    const-string v2, " \t\n\r"

    .line 513
    .local v2, "lwsp":Ljava/lang/String;
    const-string v10, "=?"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 581
    .end local p0    # "etext":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 518
    .restart local p0    # "etext":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/util/StringTokenizer;

    const/4 v10, 0x1

    invoke-direct {v7, p0, v2, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 519
    .local v7, "st":Ljava/util/StringTokenizer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 520
    .local v6, "sb":Ljava/lang/StringBuffer;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 521
    .local v9, "wsb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 523
    .local v4, "prevWasEncoded":Z
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_1

    .line 580
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 581
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v10, 0x20

    if-eq v0, v10, :cond_2

    const/16 v10, 0x9

    if-eq v0, v10, :cond_2

    .line 528
    const/16 v10, 0xd

    if-eq v0, v10, :cond_2

    const/16 v10, 0xa

    if-ne v0, v10, :cond_3

    .line 529
    :cond_2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 534
    :cond_3
    :try_start_0
    invoke-static {v5}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "word":Ljava/lang/String;
    if-nez v4, :cond_4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 540
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_4
    const/4 v4, 0x1

    .line 576
    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    .line 543
    .end local v8    # "word":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 545
    .local v3, "pex":Ljavax/mail/internet/ParseException;
    move-object v8, v5

    .line 547
    .restart local v8    # "word":Ljava/lang/String;
    sget-boolean v10, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v10, :cond_9

    .line 548
    invoke-static {v8}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "dword":Ljava/lang/String;
    if-eq v1, v8, :cond_7

    .line 552
    if-eqz v4, :cond_5

    const-string v10, "=?"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 557
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 558
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 561
    :cond_6
    const-string v10, "?="

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 562
    move-object v8, v1

    goto :goto_2

    .line 565
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 566
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 567
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 571
    .end local v1    # "dword":Ljava/lang/String;
    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 572
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 573
    :cond_a
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "eword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 760
    const-string v16, "=?"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 761
    new-instance v16, Ljavax/mail/internet/ParseException;

    .line 762
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "encoded word does not start with \"=?\": "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 761
    invoke-direct/range {v16 .. v17}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 765
    :cond_0
    const/4 v13, 0x2

    .line 766
    .local v13, "start":I
    const/16 v16, 0x3f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .local v11, "pos":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_1

    .line 767
    new-instance v16, Ljavax/mail/internet/ParseException;

    .line 768
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "encoded word does not include charset: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 767
    invoke-direct/range {v16 .. v17}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 769
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 772
    .local v4, "charset":Ljava/lang/String;
    add-int/lit8 v13, v11, 0x1

    .line 773
    const/16 v16, 0x3f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_2

    .line 774
    new-instance v16, Ljavax/mail/internet/ParseException;

    .line 775
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "encoded word does not include encoding: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 774
    invoke-direct/range {v16 .. v17}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 776
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 779
    .local v7, "encoding":Ljava/lang/String;
    add-int/lit8 v13, v11, 0x1

    .line 780
    const-string v16, "?="

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_3

    .line 781
    new-instance v16, Ljavax/mail/internet/ParseException;

    .line 782
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "encoded word does not end with \"?=\": "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 781
    invoke-direct/range {v16 .. v17}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 790
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 794
    .local v15, "word":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_9

    .line 797
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {v15}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 801
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    const-string v16, "B"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 802
    new-instance v10, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v10, v2}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    .line 814
    .local v10, "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 815
    .local v5, "count":I
    new-array v3, v5, [B

    .line 817
    .local v3, "bytes":[B
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v3, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 821
    if-gtz v5, :cond_8

    const-string v6, ""

    .line 827
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bytes":[B
    .end local v5    # "count":I
    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "decodedWord":Ljava/lang/String;
    :goto_1
    add-int/lit8 v16, v11, 0x2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 829
    add-int/lit8 v16, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 830
    .local v12, "rest":Ljava/lang/String;
    sget-boolean v16, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v16, :cond_4

    .line 831
    invoke-static {v12}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 832
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 834
    .end local v12    # "rest":Ljava/lang/String;
    :cond_5
    return-object v6

    .line 803
    .end local v6    # "decodedWord":Ljava/lang/String;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    :cond_6
    const-string v16, "Q"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 804
    new-instance v10, Lcom/sun/mail/util/QDecoderStream;

    invoke-direct {v10, v2}, Lcom/sun/mail/util/QDecoderStream;-><init>(Ljava/io/InputStream;)V

    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 806
    .end local v10    # "is":Ljava/io/InputStream;
    :cond_7
    new-instance v16, Ljava/io/UnsupportedEncodingException;

    .line 807
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "unknown encoding: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 806
    invoke-direct/range {v16 .. v17}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 835
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v14

    .line 838
    .local v14, "uex":Ljava/io/UnsupportedEncodingException;
    throw v14

    .line 822
    .end local v14    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bytes":[B
    .restart local v5    # "count":I
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_8
    :try_start_1
    new-instance v6, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v6, v3, v0, v5, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 839
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bytes":[B
    .end local v5    # "count":I
    .end local v10    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v9

    .line 841
    .local v9, "ioex":Ljava/io/IOException;
    new-instance v16, Ljavax/mail/internet/ParseException;

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 825
    .end local v9    # "ioex":Ljava/io/IOException;
    :cond_9
    :try_start_2
    const-string v6, ""
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .restart local v6    # "decodedWord":Ljava/lang/String;
    goto :goto_1

    .line 842
    .end local v6    # "decodedWord":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 850
    .local v8, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v16, Ljava/io/UnsupportedEncodingException;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method private static doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 17
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "b64"    # Z
    .param p2, "jcharset"    # Ljava/lang/String;
    .param p3, "avail"    # I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "first"    # Z
    .param p6, "encodingWord"    # Z
    .param p7, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 699
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 701
    .local v10, "bytes":[B
    if-eqz p1, :cond_0

    .line 702
    invoke-static {v10}, Lcom/sun/mail/util/BEncoderStream;->encodedLength([B)I

    move-result v14

    .line 707
    .local v14, "len":I
    :goto_0
    move/from16 v0, p3

    if-le v14, v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .local v16, "size":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_1

    .line 710
    const/4 v2, 0x0

    div-int/lit8 v3, v16, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 712
    div-int/lit8 v2, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 713
    const/4 v7, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 712
    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 742
    .end local v16    # "size":I
    :goto_1
    return-void

    .line 704
    .end local v14    # "len":I
    :cond_0
    move/from16 v0, p6

    invoke-static {v10, v0}, Lcom/sun/mail/util/QEncoderStream;->encodedLength([BZ)I

    move-result v14

    .restart local v14    # "len":I
    goto :goto_0

    .line 716
    :cond_1
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 718
    .local v15, "os":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_3

    .line 719
    new-instance v12, Lcom/sun/mail/util/BEncoderStream;

    invoke-direct {v12, v15}, Lcom/sun/mail/util/BEncoderStream;-><init>(Ljava/io/OutputStream;)V

    .line 724
    .local v12, "eos":Ljava/io/OutputStream;
    :goto_2
    :try_start_0
    invoke-virtual {v12, v10}, Ljava/io/OutputStream;->write([B)V

    .line 725
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_3
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 731
    .local v11, "encodedBytes":[B
    if-nez p5, :cond_2

    .line 732
    sget-boolean v2, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    if-eqz v2, :cond_4

    .line 733
    const-string v2, "\r\n "

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    :cond_2
    :goto_4
    move-object/from16 v0, p7

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    array-length v2, v11

    if-lt v13, v2, :cond_5

    .line 740
    const-string v2, "?="

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 721
    .end local v11    # "encodedBytes":[B
    .end local v12    # "eos":Ljava/io/OutputStream;
    .end local v13    # "i":I
    :cond_3
    new-instance v12, Lcom/sun/mail/util/QEncoderStream;

    move/from16 v0, p6

    invoke-direct {v12, v15, v0}, Lcom/sun/mail/util/QEncoderStream;-><init>(Ljava/io/OutputStream;Z)V

    .restart local v12    # "eos":Ljava/io/OutputStream;
    goto :goto_2

    .line 735
    .restart local v11    # "encodedBytes":[B
    :cond_4
    const-string v2, " "

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 739
    .restart local v13    # "i":I
    :cond_5
    aget-byte v2, v11, v13

    int-to-char v2, v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 738
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 726
    .end local v11    # "encodedBytes":[B
    .end local v13    # "i":I
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 335
    if-nez p1, :cond_1

    .line 348
    .end local p0    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 337
    .restart local p0    # "os":Ljava/io/OutputStream;
    :cond_1
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 339
    :cond_2
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 341
    :cond_3
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 342
    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 343
    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 344
    :cond_4
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 345
    :cond_5
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 372
    if-nez p1, :cond_1

    .line 385
    .end local p0    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 374
    .restart local p0    # "os":Ljava/io/OutputStream;
    :cond_1
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 376
    :cond_2
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 378
    :cond_3
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 379
    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 380
    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    :cond_4
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0, p2}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    .line 382
    :cond_5
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 607
    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 635
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "encodingWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 651
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v8

    .line 652
    .local v8, "ascii":I
    if-ne v8, v5, :cond_0

    .line 689
    .end local p0    # "string":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 657
    .restart local p0    # "string":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_2

    .line 658
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "jcharset":Ljava/lang/String;
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p1

    .line 664
    :goto_1
    if-nez p2, :cond_1

    .line 665
    const/4 v0, 0x3

    if-eq v8, v0, :cond_3

    .line 666
    const-string p2, "Q"

    .line 672
    :cond_1
    :goto_2
    const-string v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 673
    const/4 v1, 0x1

    .line 680
    .local v1, "b64":Z
    :goto_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 685
    .local v7, "outb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v3, v0, 0x44

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "=?"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, p3

    .line 681
    invoke-static/range {v0 .. v7}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 689
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 661
    .end local v1    # "b64":Z
    .end local v2    # "jcharset":Ljava/lang/String;
    .end local v7    # "outb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "jcharset":Ljava/lang/String;
    goto :goto_1

    .line 668
    :cond_3
    const-string p2, "B"

    goto :goto_2

    .line 674
    :cond_4
    const-string v0, "Q"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    const/4 v1, 0x0

    .restart local v1    # "b64":Z
    goto :goto_3

    .line 677
    .end local v1    # "b64":Z
    :cond_5
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown transfer encoding: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 677
    invoke-direct {v0, v3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fold(ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "used"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/16 v9, 0x4c

    const/16 v8, 0x20

    const/16 v7, 0x9

    .line 968
    sget-boolean v6, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v6, :cond_0

    move-object v6, p1

    .line 1015
    :goto_0
    return-object v6

    .line 974
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "end":I
    :goto_1
    if-gez v1, :cond_3

    .line 979
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_2

    .line 980
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 983
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, p0

    if-gt v6, v9, :cond_5

    move-object v6, p1

    .line 984
    goto :goto_0

    .line 975
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 976
    .local v0, "c":C
    if-eq v0, v8, :cond_4

    if-eq v0, v7, :cond_4

    const/16 v6, 0xd

    if-eq v0, v6, :cond_4

    const/16 v6, 0xa

    if-ne v0, v6, :cond_1

    .line 974
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 987
    .end local v0    # "c":C
    :cond_5
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 988
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 989
    .local v3, "lastc":C
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, p0

    if-gt v6, v9, :cond_6

    .line 1014
    :goto_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1015
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 990
    :cond_6
    const/4 v4, -0x1

    .line 991
    .local v4, "lastspace":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_8

    .line 1000
    :cond_7
    if-ne v4, v10, :cond_c

    .line 1002
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    const-string p1, ""

    .line 1004
    const/4 p0, 0x0

    .line 1005
    goto :goto_3

    .line 992
    :cond_8
    if-eq v4, v10, :cond_9

    add-int v6, p0, v2

    if-gt v6, v9, :cond_7

    .line 994
    :cond_9
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 995
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_a

    if-ne v0, v7, :cond_b

    .line 996
    :cond_a
    if-eq v3, v8, :cond_b

    if-eq v3, v7, :cond_b

    .line 997
    move v4, v2

    .line 998
    :cond_b
    move v3, v0

    .line 991
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1007
    .end local v0    # "c":C
    :cond_c
    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1008
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1009
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1010
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1011
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1012
    const/4 p0, 0x1

    goto :goto_2
.end method

.method public static getDefaultJavaCharset()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1154
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1159
    const/4 v0, 0x0

    .line 1161
    .local v0, "mimecs":Ljava/lang/String;
    :try_start_0
    const-string v3, "mail.mime.charset"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1163
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1164
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1165
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1186
    :goto_1
    return-object v3

    .line 1169
    :cond_0
    :try_start_1
    const-string v3, "file.encoding"

    .line 1170
    const-string v4, "8859_1"

    .line 1169
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1186
    :cond_1
    :goto_2
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_1

    .line 1171
    :catch_0
    move-exception v2

    .line 1179
    .local v2, "sex":Ljava/lang/SecurityException;
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljavax/mail/internet/MimeUtility$1NullInputStream;

    invoke-direct {v3}, Ljavax/mail/internet/MimeUtility$1NullInputStream;-><init>()V

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1180
    .local v1, "reader":Ljava/io/InputStreamReader;
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1181
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1182
    const-string v3, "8859_1"

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_2

    .line 1162
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .end local v2    # "sex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method static getDefaultMIMECharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1193
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1195
    :try_start_0
    const-string v0, "mail.mime.charset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :cond_0
    :goto_0
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1199
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    .line 1200
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    return-object v0

    .line 1196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 8
    .param p0, "dh"    # Ljavax/activation/DataHandler;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const/4 v3, 0x0

    .line 248
    .local v3, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 249
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v5

    invoke-static {v5}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v5

    .line 290
    :goto_0
    return-object v5

    .line 252
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .local v2, "cType":Ljavax/mail/internet/ContentType;
    const-string v5, "text/*"

    invoke-virtual {v2, v5}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    new-instance v0, Ljavax/mail/internet/AsciiOutputStream;

    invoke-direct {v0, v6, v6}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 261
    .local v0, "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_1
    invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    :goto_1
    invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 273
    const-string v3, "base64"

    :goto_2
    move-object v1, v2

    .end local v2    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v1    # "cType":Ljavax/mail/internet/ContentType;
    move-object v5, v3

    .line 290
    goto :goto_0

    .line 253
    .end local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :catch_0
    move-exception v4

    .line 254
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "base64"

    goto :goto_0

    .line 267
    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    .restart local v2    # "cType":Ljavax/mail/internet/ContentType;
    :pswitch_0
    const-string v3, "7bit"

    .line 268
    goto :goto_2

    .line 270
    :pswitch_1
    const-string v3, "quoted-printable"

    .line 271
    goto :goto_2

    .line 280
    .end local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :cond_1
    new-instance v0, Ljavax/mail/internet/AsciiOutputStream;

    sget-boolean v5, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    invoke-direct {v0, v7, v5}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 282
    .restart local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_2
    invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 284
    :goto_3
    invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 285
    const-string v3, "7bit"

    goto :goto_2

    .line 287
    :cond_2
    const-string v3, "base64"

    goto :goto_2

    .line 262
    :catch_1
    move-exception v5

    goto :goto_1

    .line 283
    :catch_2
    move-exception v5

    goto :goto_3

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 9
    .param p0, "ds"    # Ljavax/activation/DataSource;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const/4 v5, 0x0

    .line 186
    .local v5, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 189
    .local v2, "encoding":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    :try_start_1
    invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 195
    const-string v7, "text/*"

    invoke-virtual {v1, v7}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v6

    .line 197
    .local v6, "isText":Z
    const/4 v8, -0x1

    if-eqz v6, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-static {v5, v8, v7}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/io/InputStream;IZ)I

    move-result v4

    .line 198
    .local v4, "i":I
    packed-switch v4, :pswitch_data_0

    .line 206
    const-string v2, "base64"

    .line 212
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v0, v1

    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v0    # "cType":Ljavax/mail/internet/ContentType;
    move-object v7, v2

    .line 215
    .end local v4    # "i":I
    .end local v6    # "isText":Z
    :goto_3
    return-object v7

    .line 191
    :catch_0
    move-exception v3

    .line 192
    .local v3, "ex":Ljava/lang/Exception;
    :goto_4
    const-string v7, "base64"

    goto :goto_3

    .line 197
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v6    # "isText":Z
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 200
    .restart local v4    # "i":I
    :pswitch_0
    const-string v2, "7bit"

    .line 201
    goto :goto_1

    .line 203
    :pswitch_1
    const-string v2, "quoted-printable"

    .line 204
    goto :goto_1

    .line 213
    :catch_1
    move-exception v7

    goto :goto_2

    .line 191
    .end local v4    # "i":I
    .end local v6    # "isText":Z
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v0    # "cType":Ljavax/mail/internet/ContentType;
    goto :goto_4

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .prologue
    .line 1084
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 1089
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1090
    .local v2, "len":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    move v1, v3

    .line 1096
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    :goto_1
    return v1

    .line 1091
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gez v4, :cond_0

    .line 1090
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1095
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    move v1, v3

    .line 1096
    goto :goto_1
.end method

.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 1108
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 1114
    .end local p0    # "charset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1113
    .restart local p0    # "charset":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1114
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    .locals 6
    .param p0, "is"    # Lcom/sun/mail/util/LineInputStream;
    .param p1, "table"    # Ljava/util/Hashtable;

    .prologue
    .line 1306
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1311
    .local v0, "currLine":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1330
    .end local v0    # "currLine":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1307
    :catch_0
    move-exception v1

    .line 1308
    .local v1, "ioex":Ljava/io/IOException;
    goto :goto_1

    .line 1313
    .end local v1    # "ioex":Ljava/io/IOException;
    .restart local v0    # "currLine":Ljava/lang/String;
    :cond_2
    const-string v5, "--"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "--"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1318
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1323
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, " \t"

    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    .local v3, "tk":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1326
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1327
    .local v4, "value":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1328
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 1131
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 1137
    .end local p0    # "charset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1136
    .restart local p0    # "charset":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1137
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method static final nonascii(I)Z
    .locals 1
    .param p0, "b"    # I

    .prologue
    .line 1493
    const/16 v0, 0x7f

    if-ge p0, v0, :cond_1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "specials"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x5c

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x22

    .line 910
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 916
    .local v5, "len":I
    const/4 v6, 0x0

    .line 917
    .local v6, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_1

    .line 943
    if-eqz v6, :cond_0

    .line 944
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, 0x2

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 945
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 946
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 948
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local p0    # "word":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 918
    .restart local p0    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 919
    .local v0, "c":C
    if-eq v0, v9, :cond_2

    if-eq v0, v12, :cond_2

    if-eq v0, v11, :cond_2

    if-ne v0, v10, :cond_7

    .line 921
    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, 0x3

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 922
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 923
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    const/4 v4, 0x0

    .line 925
    .local v4, "lastc":I
    move v3, v2

    .local v3, "j":I
    :goto_2
    if-lt v3, v5, :cond_3

    .line 936
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 937
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 926
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 927
    .local v1, "cc":C
    if-eq v1, v9, :cond_4

    if-eq v1, v12, :cond_4

    .line 928
    if-eq v1, v11, :cond_4

    if-ne v1, v10, :cond_5

    .line 929
    :cond_4
    if-ne v1, v10, :cond_6

    if-ne v4, v11, :cond_6

    .line 933
    :cond_5
    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 934
    move v4, v1

    .line 925
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 932
    :cond_6
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 938
    .end local v1    # "cc":C
    .end local v3    # "j":I
    .end local v4    # "lastc":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    const/16 v8, 0x20

    if-lt v0, v8, :cond_8

    const/16 v8, 0x7f

    if-ge v0, v8, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_9

    .line 940
    :cond_8
    const/4 v6, 0x1

    .line 917
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x9

    const/16 v8, 0x20

    const/4 v7, 0x0

    .line 1027
    sget-boolean v5, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v5, :cond_1

    .line 1074
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1030
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 1032
    .local v3, "sb":Ljava/lang/StringBuffer;
    :goto_1
    const-string v5, "\r\n"

    invoke-static {p0, v5}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "i":I
    if-gez v1, :cond_2

    .line 1070
    if-eqz v3, :cond_0

    .line 1071
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1072
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1033
    :cond_2
    move v4, v1

    .line 1034
    .local v4, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1035
    .local v2, "l":I
    add-int/lit8 v1, v1, 0x1

    .line 1036
    if-ge v1, v2, :cond_3

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 1037
    add-int/lit8 v1, v1, 0x1

    .line 1038
    :cond_3
    if-eqz v4, :cond_4

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_c

    .line 1042
    :cond_4
    if-ge v1, v2, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-eq v0, v8, :cond_5

    if-ne v0, v9, :cond_a

    .line 1043
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 1044
    :goto_2
    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_9

    if-eq v0, v9, :cond_9

    .line 1046
    :cond_6
    if-nez v3, :cond_7

    .line 1047
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1048
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    if-eqz v4, :cond_8

    .line 1049
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1052
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1053
    goto :goto_1

    .line 1045
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1056
    .end local v0    # "c":C
    :cond_a
    if-nez v3, :cond_b

    .line 1057
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1058
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_b
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1059
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 1063
    :cond_c
    if-nez v3, :cond_d

    .line 1064
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1065
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_d
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1066
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1067
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1
.end method
