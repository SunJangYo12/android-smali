.class public Ljavax/mail/internet/MailDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "MailDateFormat.java"


# static fields
.field private static cal:Ljava/util/Calendar; = null

.field static debug:Z = false

.field private static final serialVersionUID:J = -0x711451d5f59c82abL

.field private static tz:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/mail/internet/MailDateFormat;->debug:Z

    .line 342
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->tz:Ljava/util/TimeZone;

    .line 343
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljavax/mail/internet/MailDateFormat;->tz:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "EEE, d MMM yyyy HH:mm:ss \'XXXXX\' (z)"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 142
    return-void
.end method

.method private static declared-synchronized ourUTC(IIIIIIIZ)Ljava/util/Date;
    .locals 4
    .param p0, "year"    # I
    .param p1, "mon"    # I
    .param p2, "mday"    # I
    .param p3, "hour"    # I
    .param p4, "min"    # I
    .param p5, "sec"    # I
    .param p6, "tzoffset"    # I
    .param p7, "lenient"    # Z

    .prologue
    .line 348
    const-class v1, Ljavax/mail/internet/MailDateFormat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 349
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p7}, Ljava/util/Calendar;->setLenient(Z)V

    .line 350
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 351
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 352
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 353
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 354
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 v2, 0xc

    add-int v3, p4, p6

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 355
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, p5}, Ljava/util/Calendar;->set(II)V

    .line 357
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static parseDate([CLjava/text/ParsePosition;Z)Ljava/util/Date;
    .locals 14
    .param p0, "orig"    # [C
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .param p2, "lenient"    # Z

    .prologue
    .line 262
    const/4 v2, -0x1

    .line 263
    .local v2, "day":I
    const/4 v1, -0x1

    .line 264
    .local v1, "month":I
    const/4 v0, -0x1

    .line 265
    .local v0, "year":I
    const/4 v3, 0x0

    .line 266
    .local v3, "hours":I
    const/4 v4, 0x0

    .line 267
    .local v4, "minutes":I
    const/4 v5, 0x0

    .line 268
    .local v5, "seconds":I
    const/4 v6, 0x0

    .line 271
    .local v6, "offset":I
    :try_start_0
    new-instance v10, Ljavax/mail/internet/MailDateParser;

    invoke-direct {v10, p0}, Ljavax/mail/internet/MailDateParser;-><init>([C)V

    .line 274
    .local v10, "p":Ljavax/mail/internet/MailDateParser;
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipUntilNumber()V

    .line 275
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v2

    .line 277
    const/16 v7, 0x2d

    invoke-virtual {v10, v7}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 278
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 282
    :cond_0
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseMonth()I

    move-result v1

    .line 283
    const/16 v7, 0x2d

    invoke-virtual {v10, v7}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v7

    if-nez v7, :cond_1

    .line 284
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 288
    :cond_1
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v0

    .line 289
    const/16 v7, 0x32

    if-ge v0, v7, :cond_5

    .line 290
    add-int/lit16 v0, v0, 0x7d0

    .line 298
    :cond_2
    :goto_0
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 299
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v3

    .line 302
    const/16 v7, 0x3a

    invoke-virtual {v10, v7}, Ljavax/mail/internet/MailDateParser;->skipChar(C)V

    .line 303
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v4

    .line 306
    const/16 v7, 0x3a

    invoke-virtual {v10, v7}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 307
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 313
    :cond_3
    :try_start_1
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 314
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseTimeZone()I
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 322
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->getIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    move/from16 v7, p2

    .line 323
    invoke-static/range {v0 .. v7}, Ljavax/mail/internet/MailDateFormat;->ourUTC(IIIIIIIZ)Ljava/util/Date;

    move-result-object v8

    .line 338
    .end local v10    # "p":Ljavax/mail/internet/MailDateParser;
    :goto_2
    return-object v8

    .line 291
    .restart local v10    # "p":Ljavax/mail/internet/MailDateParser;
    :cond_5
    const/16 v7, 0x64

    if-ge v0, v7, :cond_2

    .line 292
    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    .line 315
    :catch_0
    move-exception v11

    .line 316
    .local v11, "pe":Ljava/text/ParseException;
    sget-boolean v7, Ljavax/mail/internet/MailDateFormat;->debug:Z

    if-eqz v7, :cond_4

    .line 317
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "No timezone? : \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 317
    invoke-virtual {v7, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 327
    .end local v10    # "p":Ljavax/mail/internet/MailDateParser;
    .end local v11    # "pe":Ljava/text/ParseException;
    :catch_1
    move-exception v9

    .line 333
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v7, Ljavax/mail/internet/MailDateFormat;->debug:Z

    if-eqz v7, :cond_6

    .line 334
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Bad date: \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 338
    const/4 v8, 0x0

    goto :goto_2
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 11
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "dateStrBuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    const/16 v10, 0xa

    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 166
    .local v6, "start":I
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 167
    const/4 v3, 0x0

    .line 170
    .local v3, "pos":I
    add-int/lit8 v3, v6, 0x19

    :goto_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x58

    if-ne v7, v8, :cond_0

    .line 174
    iget-object v7, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 175
    iget-object v7, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 176
    iget-object v7, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 177
    iget-object v8, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 176
    add-int v0, v7, v8

    .line 179
    .local v0, "offset":I
    if-gez v0, :cond_1

    .line 180
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    const/16 v7, 0x2d

    invoke-virtual {p2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 181
    neg-int v0, v0

    move v3, v4

    .line 185
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :goto_1
    div-int/lit8 v7, v0, 0x3c

    div-int/lit16 v5, v7, 0x3e8

    .line 186
    .local v5, "rawOffsetInMins":I
    div-int/lit8 v1, v5, 0x3c

    .line 187
    .local v1, "offsetInHrs":I
    rem-int/lit8 v2, v5, 0x3c

    .line 189
    .local v2, "offsetInMins":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    div-int/lit8 v7, v1, 0xa

    invoke-static {v7, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 190
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    rem-int/lit8 v7, v1, 0xa

    invoke-static {v7, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v4, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 191
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    div-int/lit8 v7, v2, 0xa

    invoke-static {v7, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 192
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    rem-int/lit8 v7, v2, 0xa

    invoke-static {v7, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v4, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 195
    return-object p2

    .line 170
    .end local v0    # "offset":I
    .end local v1    # "offsetInHrs":I
    .end local v2    # "offsetInMins":I
    .end local v5    # "rawOffsetInMins":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .restart local v0    # "offset":I
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    const/16 v7, 0x2b

    invoke-virtual {p2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v3, v4

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat;->isLenient()Z

    move-result v1

    invoke-static {v0, p2, v1}, Ljavax/mail/internet/MailDateFormat;->parseDate([CLjava/text/ParsePosition;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "newCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method setCalendar() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 2
    .param p1, "newNumberFormat"    # Ljava/text/NumberFormat;

    .prologue
    .line 370
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method setNumberFormat() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
