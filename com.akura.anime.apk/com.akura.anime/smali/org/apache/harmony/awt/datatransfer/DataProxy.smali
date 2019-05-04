.class public final Lorg/apache/harmony/awt/datatransfer/DataProxy;
.super Ljava/lang/Object;
.source "DataProxy.java"

# interfaces
.implements Ljava/awt/datatransfer/Transferable;


# static fields
.field public static final charsetTextClasses:[Ljava/lang/Class;

.field public static final unicodeTextClasses:[Ljava/lang/Class;


# instance fields
.field private final data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

.field private final flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/io/Reader;

    aput-object v1, v0, v3

    const-class v1, Ljava/nio/CharBuffer;

    aput-object v1, v0, v4

    const-class v1, [C

    aput-object v1, v0, v5

    .line 62
    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->unicodeTextClasses:[Ljava/lang/Class;

    .line 65
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [B

    aput-object v1, v0, v2

    const-class v1, Ljava/nio/ByteBuffer;

    aput-object v1, v0, v3

    const-class v1, Ljava/io/InputStream;

    aput-object v1, v0, v4

    .line 64
    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->charsetTextClasses:[Ljava/lang/Class;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/awt/datatransfer/DataProvider;)V
    .locals 1
    .param p1, "data"    # Lorg/apache/harmony/awt/datatransfer/DataProvider;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    .line 72
    invoke-static {}, Ljava/awt/datatransfer/SystemFlavorMap;->getDefaultFlavorMap()Ljava/awt/datatransfer/FlavorMap;

    move-result-object v0

    check-cast v0, Ljava/awt/datatransfer/SystemFlavorMap;

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;

    .line 73
    return-void
.end method

.method private createBufferedImage(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Ljava/awt/image/BufferedImage;
    .locals 24
    .param p1, "b"    # Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 273
    move-object/from16 v0, p1

    iget v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    if-lez v1, :cond_0

    move-object/from16 v0, p1

    iget v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    if-gtz v1, :cond_1

    .line 274
    :cond_0
    const/4 v1, 0x0

    .line 327
    :goto_0
    return-object v1

    .line 277
    :cond_1
    const/4 v6, 0x0

    .line 278
    .local v6, "cm":Ljava/awt/image/ColorModel;
    const/16 v23, 0x0

    .line 280
    .local v23, "wr":Ljava/awt/image/WritableRaster;
    move-object/from16 v0, p1

    iget v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_5

    .line 281
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isRGB(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isBGR(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    const/4 v1, 0x0

    goto :goto_0

    .line 284
    :cond_2
    const/4 v1, 0x3

    new-array v5, v1, [I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    aput v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    aput v2, v5, v1

    const/4 v1, 0x2

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    aput v2, v5, v1

    .line 285
    .local v5, "masks":[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    .line 286
    .local v21, "buffer":[I
    new-instance v22, Ljava/awt/image/DirectColorModel;

    const/16 v1, 0x18

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    move-object/from16 v0, v22

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 288
    .end local v6    # "cm":Ljava/awt/image/ColorModel;
    .local v22, "cm":Ljava/awt/image/ColorModel;
    new-instance v1, Ljava/awt/image/DataBufferInt;

    move-object/from16 v0, v21

    array-length v2, v0

    move-object/from16 v0, v21

    invoke-direct {v1, v0, v2}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    .line 289
    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    .line 290
    const/4 v6, 0x0

    .line 287
    invoke-static/range {v1 .. v6}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v23

    move-object/from16 v6, v22

    .line 324
    .end local v5    # "masks":[I
    .end local v21    # "buffer":[I
    .end local v22    # "cm":Ljava/awt/image/ColorModel;
    .restart local v6    # "cm":Ljava/awt/image/ColorModel;
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    if-nez v23, :cond_a

    .line 325
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 292
    :cond_5
    move-object/from16 v0, p1

    iget v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_8

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_8

    .line 293
    const/4 v1, 0x3

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    .line 295
    .local v8, "bits":[I
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isRGB(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 296
    const/4 v1, 0x3

    new-array v14, v1, [I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v14, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput v2, v14, v1

    .line 302
    .local v14, "offsets":[I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    .line 303
    .local v21, "buffer":[B
    new-instance v6, Ljava/awt/image/ComponentColorModel;

    .line 304
    .end local v6    # "cm":Ljava/awt/image/ColorModel;
    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v7

    .line 305
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 306
    const/4 v11, 0x1

    .line 307
    const/4 v12, 0x0

    .line 303
    invoke-direct/range {v6 .. v12}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    .line 310
    .restart local v6    # "cm":Ljava/awt/image/ColorModel;
    new-instance v9, Ljava/awt/image/DataBufferByte;

    move-object/from16 v0, v21

    array-length v1, v0

    move-object/from16 v0, v21

    invoke-direct {v9, v0, v1}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    .line 311
    move-object/from16 v0, p1

    iget v10, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    move-object/from16 v0, p1

    iget v11, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    move-object/from16 v0, p1

    iget v12, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    const/4 v13, 0x3

    const/4 v15, 0x0

    .line 309
    invoke-static/range {v9 .. v15}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v23

    goto :goto_1

    .line 297
    .end local v14    # "offsets":[I
    .end local v21    # "buffer":[B
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isBGR(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 298
    const/4 v1, 0x3

    new-array v14, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v14, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v14, v1

    .restart local v14    # "offsets":[I
    goto :goto_2

    .line 300
    .end local v14    # "offsets":[I
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 313
    .end local v8    # "bits":[I
    :cond_8
    move-object/from16 v0, p1

    iget v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_9

    move-object/from16 v0, p1

    iget v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 314
    :cond_9
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v1, v1, [S

    if-eqz v1, :cond_3

    .line 315
    const/4 v1, 0x3

    new-array v5, v1, [I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    aput v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    aput v2, v5, v1

    const/4 v1, 0x2

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    aput v2, v5, v1

    .line 316
    .restart local v5    # "masks":[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [S

    .line 317
    .local v21, "buffer":[S
    new-instance v6, Ljava/awt/image/DirectColorModel;

    .end local v6    # "cm":Ljava/awt/image/ColorModel;
    move-object/from16 v0, p1

    iget v1, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    invoke-direct {v6, v1, v2, v3, v4}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 319
    .restart local v6    # "cm":Ljava/awt/image/ColorModel;
    new-instance v15, Ljava/awt/image/DataBufferUShort;

    move-object/from16 v0, v21

    array-length v1, v0

    move-object/from16 v0, v21

    invoke-direct {v15, v0, v1}, Ljava/awt/image/DataBufferUShort;-><init>([SI)V

    .line 320
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    move/from16 v18, v0

    .line 321
    const/16 v20, 0x0

    move-object/from16 v19, v5

    .line 318
    invoke-static/range {v15 .. v20}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v23

    goto/16 :goto_1

    .line 327
    .end local v5    # "masks":[I
    .end local v21    # "buffer":[S
    :cond_a
    new-instance v1, Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-direct {v1, v6, v0, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    goto/16 :goto_0

    .line 293
    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method private getCharset(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;

    .prologue
    .line 215
    const-string v0, "charset"

    invoke-virtual {p1, v0}, Ljava/awt/datatransfer/DataFlavor;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileList(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v2, "application/x-java-file-list"

    invoke-interface {v1, v2}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v1, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v1

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getFileList()[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "files":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 156
    new-instance v1, Ljava/io/IOException;

    const-string v2, "awt.4F"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getHTML(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v2, "text/html"

    invoke-interface {v1, v2}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v1, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v1

    .line 166
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getHTML()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 169
    new-instance v1, Ljava/io/IOException;

    const-string v2, "awt.4F"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getImage(Ljava/awt/datatransfer/DataFlavor;)Ljava/awt/Image;
    .locals 3
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v2, "image/x-java-image"

    invoke-interface {v1, v2}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v1, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v1

    .line 255
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getRawBitmap()Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object v0

    .line 256
    .local v0, "bitmap":Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    if-nez v0, :cond_1

    .line 258
    new-instance v1, Ljava/io/IOException;

    const-string v2, "awt.4F"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->createBufferedImage(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method private getPlainText(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v2, "text/plain"

    invoke-interface {v1, v2}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v1, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v1

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getText()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 143
    new-instance v1, Ljava/io/IOException;

    const-string v2, "awt.4F"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getSerializedObject(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 6
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p1}, Ljava/awt/datatransfer/SystemFlavorMap;->encodeDataFlavor(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "nativeFormat":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 198
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v4, v2}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    :cond_0
    new-instance v4, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v4, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v4

    .line 201
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getSerializedObject(Ljava/lang/Class;)[B

    move-result-object v0

    .line 202
    .local v0, "bytes":[B
    if-nez v0, :cond_2

    .line 204
    new-instance v4, Ljava/io/IOException;

    const-string v5, "awt.4F"

    invoke-static {v5}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    :cond_2
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 208
    .local v3, "str":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 220
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 245
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 223
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassReader()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassCharBuffer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, [C

    if-ne v3, v4, :cond_3

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [C

    .line 231
    .local v1, "chars":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v5, v3, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    move-object p1, v1

    .line 232
    goto :goto_0

    .line 234
    .end local v1    # "chars":[C
    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getCharset(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "charset":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, [B

    if-ne v3, v4, :cond_4

    .line 236
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "bytes":[B
    move-object p1, v0

    .line 237
    goto :goto_0

    .line 239
    .end local v0    # "bytes":[B
    :cond_4
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassByteBuffer()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 240
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 241
    .restart local v0    # "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 243
    .end local v0    # "bytes":[B
    :cond_5
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassInputStream()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 245
    .restart local v0    # "bytes":[B
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .end local p1    # "text":Ljava/lang/String;
    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 247
    .end local v0    # "bytes":[B
    .restart local p1    # "text":Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v3, p2}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v3
.end method

.method private getURL(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 4
    .param p1, "f"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v2, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v3, "application/x-java-url"

    invoke-interface {v2, v3}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    new-instance v2, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v2, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v2

    .line 179
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v2}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 182
    new-instance v2, Ljava/io/IOException;

    const-string v3, "awt.4F"

    invoke-static {v3}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 188
    .restart local v1    # "url":Ljava/net/URL;
    :cond_2
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 191
    :cond_3
    new-instance v2, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v2, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v2
.end method

.method private isBGR(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z
    .locals 2
    .param p1, "b"    # Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    .prologue
    .line 268
    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    const v1, 0xff00

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    const/high16 v1, 0xff0000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRGB(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z
    .locals 2
    .param p1, "b"    # Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    .prologue
    .line 264
    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    const/high16 v1, 0xff0000

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    const v1, 0xff00

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDataProvider()Lorg/apache/harmony/awt/datatransfer/DataProvider;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    return-object v0
.end method

.method public getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .param p1, "flavor"    # Ljava/awt/datatransfer/DataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getPrimaryType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getHTML(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 87
    :cond_0
    const-string v1, "text/uri-list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getURL(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getPlainText(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorJavaFileListType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getFileList(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorSerializedObjectType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getSerializedObject(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_4
    sget-object v1, Lorg/apache/harmony/awt/datatransfer/DataProvider;->urlFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {p1, v1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getURL(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 101
    :cond_5
    const-string v1, "image/x-java-image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    const-class v1, Ljava/awt/Image;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getImage(Ljava/awt/datatransfer/DataFlavor;)Ljava/awt/Image;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_6
    new-instance v1, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v1, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v1
.end method

.method public getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 8

    .prologue
    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/awt/datatransfer/DataFlavor;>;"
    iget-object v6, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v6}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getNativeFormats()[Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "natives":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-lt v2, v6, :cond_0

    .line 122
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/awt/datatransfer/DataFlavor;

    return-object v6

    .line 114
    :cond_0
    iget-object v6, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/awt/datatransfer/SystemFlavorMap;->getFlavorsForNative(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "flavors":Ljava/util/List;, "Ljava/util/List<Ljava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/awt/datatransfer/DataFlavor;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/datatransfer/DataFlavor;

    .line 117
    .local v0, "f":Ljava/awt/datatransfer/DataFlavor;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public isDataFlavorSupported(Ljava/awt/datatransfer/DataFlavor;)Z
    .locals 3
    .param p1, "flavor"    # Ljava/awt/datatransfer/DataFlavor;

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    .line 127
    .local v0, "flavors":[Ljava/awt/datatransfer/DataFlavor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 132
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 128
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const/4 v2, 0x1

    goto :goto_1

    .line 127
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
