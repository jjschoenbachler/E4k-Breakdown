.class public Lcom/marpies/ane/facebook/utils/BitmapDataUtils;
.super Ljava/lang/Object;
.source "BitmapDataUtils.java"


# static fields
.field private static final mBGRToRGBColorTransform:[F

.field private static final mColorFilter:Landroid/graphics/ColorMatrixColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    .line 26
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/marpies/ane/facebook/utils/BitmapDataUtils;->mBGRToRGBColorTransform:[F

    .line 33
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v1, Landroid/graphics/ColorMatrix;

    sget-object v2, Lcom/marpies/ane/facebook/utils/BitmapDataUtils;->mBGRToRGBColorTransform:[F

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v0, Lcom/marpies/ane/facebook/utils/BitmapDataUtils;->mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmap(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREWrongThreadException;,
            Lcom/adobe/fre/FREInvalidObjectException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 43
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 46
    sget-object v3, Lcom/marpies/ane/facebook/utils/BitmapDataUtils;->mColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 47
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 48
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V

    const/4 p0, 0x0

    .line 49
    invoke-virtual {v1, v0, p0, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method
