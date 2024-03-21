.class public final Lcom/appsflyer/internal/bz;
.super Ljava/io/FilterInputStream;
.source ""


# static fields
.field private static final valueOf:S


# instance fields
.field private AFInAppEventParameterName:[B

.field private AFInAppEventType:I

.field private AFKeystoreWrapper:[B

.field private AFLogger$LogLevel:I

.field private AFVersionDeclaration:I

.field private AppsFlyer2dXConversionCallback:I

.field private getLevel:I

.field private init:I

.field private onAppOpenAttributionNative:I

.field private onAttributionFailureNative:I

.field private onDeepLinkingNative:I

.field private values:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    sput-short v0, Lcom/appsflyer/internal/bz;->valueOf:S

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[II[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 33
    iput p1, p0, Lcom/appsflyer/internal/bz;->AppsFlyer2dXConversionCallback:I

    const/16 p1, 0x8

    .line 62
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    .line 63
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/appsflyer/internal/bz;->AFInAppEventParameterName:[B

    .line 64
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/appsflyer/internal/bz;->values:[B

    .line 66
    iput p1, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    .line 67
    iput p1, p0, Lcom/appsflyer/internal/bz;->init:I

    const/4 v0, 0x5

    .line 70
    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    const/16 v0, 0x10

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    iput p5, p0, Lcom/appsflyer/internal/bz;->getLevel:I

    .line 71
    iput p6, p0, Lcom/appsflyer/internal/bz;->AFLogger$LogLevel:I

    const/4 p5, 0x3

    const/4 v0, 0x0

    if-ne p6, p5, :cond_0

    .line 74
    iget-object p6, p0, Lcom/appsflyer/internal/bz;->AFInAppEventParameterName:[B

    invoke-static {p4, v0, p6, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    :cond_0
    aget p1, p2, v0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    const/4 p4, 0x1

    aget p2, p2, p4

    int-to-long v4, p2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    if-nez p3, :cond_1

    long-to-int p2, v0

    .line 1199
    iput p2, p0, Lcom/appsflyer/internal/bz;->AFVersionDeclaration:I

    shr-long p2, v0, p5

    .line 1200
    sget-short p4, Lcom/appsflyer/internal/bz;->valueOf:S

    int-to-long p4, p4

    mul-long p4, p4, p2

    shr-long/2addr p4, p1

    long-to-int p4, p4

    iput p4, p0, Lcom/appsflyer/internal/bz;->onDeepLinkingNative:I

    shr-long p4, v0, p1

    long-to-int p1, p4

    .line 1201
    iput p1, p0, Lcom/appsflyer/internal/bz;->onAttributionFailureNative:I

    .line 1202
    sget-short p1, Lcom/appsflyer/internal/bz;->valueOf:S

    int-to-long p4, p1

    add-long/2addr p2, p4

    long-to-int p1, p2

    iput p1, p0, Lcom/appsflyer/internal/bz;->onAppOpenAttributionNative:I

    return-void

    :cond_1
    long-to-int p2, v0

    .line 1190
    iput p2, p0, Lcom/appsflyer/internal/bz;->AFVersionDeclaration:I

    mul-int p4, p2, p3

    .line 1191
    iput p4, p0, Lcom/appsflyer/internal/bz;->onDeepLinkingNative:I

    xor-int/2addr p2, p3

    .line 1192
    iput p2, p0, Lcom/appsflyer/internal/bz;->onAttributionFailureNative:I

    shr-long p1, v0, p1

    long-to-int p1, p1

    .line 1193
    iput p1, p0, Lcom/appsflyer/internal/bz;->onAppOpenAttributionNative:I

    return-void
.end method

.method private AFInAppEventParameterName()V
    .locals 15

    .line 212
    iget v0, p0, Lcom/appsflyer/internal/bz;->AFLogger$LogLevel:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    iget-object v3, p0, Lcom/appsflyer/internal/bz;->values:[B

    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    array-length v4, v4

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v4, v6

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    const/4 v7, 0x2

    aget-byte v4, v4, v7

    const/16 v8, 0x8

    shl-int/2addr v4, v8

    const v9, 0xff00

    and-int/2addr v4, v9

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    .line 220
    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    const/4 v10, 0x4

    aget-byte v4, v4, v10

    shl-int/lit8 v4, v4, 0x18

    and-int/2addr v3, v4

    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    const/4 v11, 0x5

    aget-byte v4, v4, v11

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v6

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    const/4 v6, 0x6

    aget-byte v4, v4, v6

    shl-int/2addr v4, v8

    and-int/2addr v4, v9

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    const/4 v9, 0x7

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v0

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget v12, p0, Lcom/appsflyer/internal/bz;->getLevel:I

    if-ge v0, v12, :cond_1

    .line 226
    sget-short v12, Lcom/appsflyer/internal/bz;->valueOf:S

    iget v13, p0, Lcom/appsflyer/internal/bz;->getLevel:I

    sub-int/2addr v13, v0

    mul-int v12, v12, v13

    add-int/2addr v12, v4

    shl-int/lit8 v13, v4, 0x4

    iget v14, p0, Lcom/appsflyer/internal/bz;->onAttributionFailureNative:I

    add-int/2addr v13, v14

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v4, 0x5

    iget v14, p0, Lcom/appsflyer/internal/bz;->onAppOpenAttributionNative:I

    add-int/2addr v13, v14

    xor-int/2addr v12, v13

    sub-int/2addr v3, v12

    .line 229
    sget-short v12, Lcom/appsflyer/internal/bz;->valueOf:S

    iget v13, p0, Lcom/appsflyer/internal/bz;->getLevel:I

    sub-int/2addr v13, v0

    mul-int v12, v12, v13

    add-int/2addr v12, v3

    shl-int/lit8 v13, v3, 0x4

    iget v14, p0, Lcom/appsflyer/internal/bz;->AFVersionDeclaration:I

    add-int/2addr v13, v14

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v3, 0x5

    iget v14, p0, Lcom/appsflyer/internal/bz;->onDeepLinkingNative:I

    add-int/2addr v13, v14

    xor-int/2addr v12, v13

    sub-int/2addr v4, v12

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    shr-int/lit8 v12, v4, 0x18

    int-to-byte v12, v12

    aput-byte v12, v0, v2

    .line 234
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v0, v5

    .line 235
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 236
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 237
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    shr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v10

    .line 238
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    shr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v11

    .line 239
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 240
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    int-to-byte v3, v3

    aput-byte v3, v0, v9

    .line 241
    iget v0, p0, Lcom/appsflyer/internal/bz;->AFLogger$LogLevel:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_2

    .line 1253
    iget-object v1, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    aget-byte v3, v1, v0

    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFInAppEventParameterName:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->values:[B

    iget-object v1, p0, Lcom/appsflyer/internal/bz;->AFInAppEventParameterName:[B

    iget-object v3, p0, Lcom/appsflyer/internal/bz;->values:[B

    array-length v3, v3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method private values()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget v0, p0, Lcom/appsflyer/internal/bz;->AppsFlyer2dXConversionCallback:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/bz;->AppsFlyer2dXConversionCallback:I

    .line 270
    :cond_0
    iget v0, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 273
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    iget v2, p0, Lcom/appsflyer/internal/bz;->AppsFlyer2dXConversionCallback:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 277
    iget v0, p0, Lcom/appsflyer/internal/bz;->AppsFlyer2dXConversionCallback:I

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    .line 287
    :cond_1
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    rsub-int/lit8 v5, v0, 0x8

    invoke-virtual {v2, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    add-int/2addr v0, v2

    if-lt v0, v1, :cond_1

    :cond_2
    if-lt v0, v1, :cond_4

    .line 310
    invoke-direct {p0}, Lcom/appsflyer/internal/bz;->AFInAppEventParameterName()V

    .line 313
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/bz;->AppsFlyer2dXConversionCallback:I

    .line 316
    iput v3, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    .line 320
    iget v0, p0, Lcom/appsflyer/internal/bz;->AppsFlyer2dXConversionCallback:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lcom/appsflyer/internal/bz;->init:I

    goto :goto_0

    .line 306
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_6
    :goto_0
    iget v0, p0, Lcom/appsflyer/internal/bz;->init:I

    return v0
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/appsflyer/internal/bz;->values()I

    .line 166
    iget v0, p0, Lcom/appsflyer/internal/bz;->init:I

    iget v1, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/appsflyer/internal/bz;->values()I

    .line 114
    iget v0, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    iget v1, p0, Lcom/appsflyer/internal/bz;->init:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    iget v1, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/appsflyer/internal/bz;->values()I

    .line 137
    iget v2, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    iget v3, p0, Lcom/appsflyer/internal/bz;->init:I

    if-lt v2, v3, :cond_1

    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 143
    iget-object v3, p0, Lcom/appsflyer/internal/bz;->AFKeystoreWrapper:[B

    iget v4, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/appsflyer/internal/bz;->AFInAppEventType:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v1

    move v1, v2

    goto :goto_0

    :cond_2
    return p3
.end method

.method public final skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 154
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method
