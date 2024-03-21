.class public Lcom/adobe/fre/FREBitmapData;
.super Lcom/adobe/fre/FREObject;
.source "FREBitmapData.java"


# instance fields
.field private m_dataPointer:J


# direct methods
.method private constructor <init>(Lcom/adobe/fre/FREObject$CFREObjectWrapper;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/adobe/fre/FREObject;-><init>(Lcom/adobe/fre/FREObject$CFREObjectWrapper;)V

    return-void
.end method

.method protected constructor <init>([Lcom/adobe/fre/FREObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "flash.display.BitmapData"

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/adobe/fre/FREObject;-><init>(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)V

    return-void
.end method

.method public static newBitmapData(IIZ[Ljava/lang/Byte;)Lcom/adobe/fre/FREBitmapData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 65
    array-length v0, p3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 67
    new-array v0, v1, [Lcom/adobe/fre/FREObject;

    .line 68
    new-instance v2, Lcom/adobe/fre/FREObject;

    invoke-direct {v2, p0}, Lcom/adobe/fre/FREObject;-><init>(I)V

    const/4 p0, 0x0

    aput-object v2, v0, p0

    .line 69
    new-instance v2, Lcom/adobe/fre/FREObject;

    invoke-direct {v2, p1}, Lcom/adobe/fre/FREObject;-><init>(I)V

    const/4 p1, 0x1

    aput-object v2, v0, p1

    const/4 p1, 0x2

    .line 70
    new-instance v2, Lcom/adobe/fre/FREObject;

    invoke-direct {v2, p2}, Lcom/adobe/fre/FREObject;-><init>(Z)V

    aput-object v2, v0, p1

    const/4 p1, -0x1

    const/4 p1, 0x0

    const/4 p2, -0x1

    :goto_0
    const/4 v2, 0x3

    if-ge p0, v1, :cond_0

    sub-int/2addr v2, p0

    mul-int/lit8 v2, v2, 0x8

    .line 77
    aget-object v3, p3, p0

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    shl-int v2, v3, v2

    and-int/2addr v2, p2

    or-int/2addr p1, v2

    ushr-int/lit8 p2, p2, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    new-instance p0, Lcom/adobe/fre/FREObject;

    invoke-direct {p0, p1}, Lcom/adobe/fre/FREObject;-><init>(I)V

    aput-object p0, v0, v2

    .line 84
    :try_start_0
    new-instance p0, Lcom/adobe/fre/FREBitmapData;

    invoke-direct {p0, v0}, Lcom/adobe/fre/FREBitmapData;-><init>([Lcom/adobe/fre/FREObject;)V
    :try_end_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fillColor has wrong length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    nop

    goto :goto_1
.end method


# virtual methods
.method public native acquire()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getBits()Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getHeight()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getLineStride32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getWidth()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native hasAlpha()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native invalidateRect(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native isInvertedY()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native isPremultiplied()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
