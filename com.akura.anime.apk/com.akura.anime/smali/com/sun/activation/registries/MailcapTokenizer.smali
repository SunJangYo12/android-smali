.class public Lcom/sun/activation/registries/MailcapTokenizer;
.super Ljava/lang/Object;
.source "MailcapTokenizer.java"


# static fields
.field public static final EOI_TOKEN:I = 0x5

.field public static final EQUALS_TOKEN:I = 0x3d

.field public static final SEMICOLON_TOKEN:I = 0x3b

.field public static final SLASH_TOKEN:I = 0x2f

.field public static final START_TOKEN:I = 0x1

.field public static final STRING_TOKEN:I = 0x2

.field public static final UNKNOWN_TOKEN:I


# instance fields
.field private autoquoteChar:C

.field private currentToken:I

.field private currentTokenValue:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private dataIndex:I

.field private dataLength:I

.field private isAutoquoting:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    .line 64
    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    .line 71
    const/16 v0, 0x3b

    iput-char v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->autoquoteChar:C

    .line 72
    return-void
.end method

.method private static fixEscapeSequences(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "inputString"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 263
    .local v3, "inputLength":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 266
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 267
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 268
    .local v1, "currentChar":C
    const/16 v5, 0x5c

    if-eq v1, v5, :cond_1

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_1
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_2

    .line 272
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 273
    .local v4, "nextChar":C
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    .end local v4    # "nextChar":C
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static isControlChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 250
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    return v0
.end method

.method private static isSpecialChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "lAnswer":Z
    sparse-switch p0, :sswitch_data_0

    .line 246
    :goto_0
    return v0

    .line 242
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private static isStringTokenChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 258
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isSpecialChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isControlChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isWhiteSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhiteSpaceChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 254
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    return v0
.end method

.method public static nameForToken(I)Ljava/lang/String;
    .locals 1
    .param p0, "token"    # I

    .prologue
    .line 101
    const-string v0, "really unknown"

    .line 103
    .local v0, "name":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 127
    :goto_0
    return-object v0

    .line 105
    :sswitch_0
    const-string v0, "unknown"

    .line 106
    goto :goto_0

    .line 108
    :sswitch_1
    const-string v0, "start"

    .line 109
    goto :goto_0

    .line 111
    :sswitch_2
    const-string v0, "string"

    .line 112
    goto :goto_0

    .line 114
    :sswitch_3
    const-string v0, "EOI"

    .line 115
    goto :goto_0

    .line 117
    :sswitch_4
    const-string v0, "\'/\'"

    .line 118
    goto :goto_0

    .line 120
    :sswitch_5
    const-string v0, "\';\'"

    .line 121
    goto :goto_0

    .line 123
    :sswitch_6
    const-string v0, "\'=\'"

    goto :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3b -> :sswitch_5
        0x3d -> :sswitch_6
    .end sparse-switch
.end method

.method private processAutoquoteToken()V
    .locals 5

    .prologue
    .line 204
    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    .line 208
    .local v2, "initialIndex":I
    const/4 v1, 0x0

    .line 209
    .local v1, "foundTerminator":Z
    :goto_0
    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v4, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v3, v4, :cond_0

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 220
    iget-object v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v4, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/activation/registries/MailcapTokenizer;->fixEscapeSequences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    iput-object v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 221
    return-void

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v4, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 211
    .local v0, "c":C
    iget-char v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->autoquoteChar:C

    if-eq v0, v3, :cond_2

    .line 212
    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_0

    .line 214
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processStringToken()V
    .locals 3

    .prologue
    .line 190
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    .line 193
    .local v0, "initialIndex":I
    :goto_0
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/activation/registries/MailcapTokenizer;->isStringTokenChar(C)Z

    move-result v1

    .line 193
    if-nez v1, :cond_1

    .line 198
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 199
    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 200
    return-void

    .line 195
    :cond_1
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentToken()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    return v0
.end method

.method public getCurrentTokenValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    return-object v0
.end method

.method public nextToken()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x3d

    const/16 v4, 0x3b

    const/4 v3, 0x5

    .line 145
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v1, v2, :cond_9

    .line 147
    :goto_0
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/activation/registries/MailcapTokenizer;->isWhiteSpaceChar(C)Z

    move-result v1

    .line 147
    if-nez v1, :cond_2

    .line 152
    :cond_0
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v1, v2, :cond_8

    .line 154
    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 155
    .local v0, "c":C
    iget-boolean v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    if-eqz v1, :cond_4

    .line 156
    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_3

    .line 157
    :cond_1
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 158
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 159
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    .line 185
    .end local v0    # "c":C
    :goto_1
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    return v1

    .line 149
    :cond_2
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_0

    .line 161
    .restart local v0    # "c":C
    :cond_3
    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->processAutoquoteToken()V

    goto :goto_1

    .line 164
    :cond_4
    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->isStringTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->processStringToken()V

    goto :goto_1

    .line 166
    :cond_5
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_6

    if-eq v0, v4, :cond_6

    if-ne v0, v5, :cond_7

    .line 167
    :cond_6
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 168
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 169
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_1

    .line 171
    :cond_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 172
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 173
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_1

    .line 177
    .end local v0    # "c":C
    :cond_8
    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 178
    iput-object v6, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    goto :goto_1

    .line 181
    :cond_9
    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 182
    iput-object v6, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public setIsAutoquoting(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    .line 86
    return-void
.end method
