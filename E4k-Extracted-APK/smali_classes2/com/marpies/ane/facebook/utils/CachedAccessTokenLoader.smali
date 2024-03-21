.class public Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;
.super Ljava/lang/Object;
.source "CachedAccessTokenLoader.java"


# static fields
.field private static final NUMBER_OF_CHECKS:I = 0xa

.field private static checkCount:I

.field private static mListenerID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 24
    sget v0, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->mListenerID:I

    return v0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->load(Z)V

    return-void
.end method

.method public static load(I)V
    .locals 0

    .line 31
    sput p0, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->mListenerID:I

    const/4 p0, 0x0

    .line 32
    invoke-static {p0}, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->load(Z)V

    return-void
.end method

.method private static load(Z)V
    .locals 3

    .line 36
    sget v0, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->checkCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->checkCount:I

    if-nez p0, :cond_0

    .line 37
    sget p0, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->checkCount:I

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    const-string p0, "cachedAccessTokenLoaded"

    .line 38
    sget v0, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->mListenerID:I

    const-string v1, "found"

    const-string v2, "false"

    .line 39
    invoke-static {v0, v1, v2}, Lcom/marpies/ane/facebook/utils/StringUtils;->getSingleValueJSONString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p0, v0}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader$1;

    invoke-direct {v0}, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader$1;-><init>()V

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
