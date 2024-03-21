.class public Lcom/ironsource/adobeair/BannerHelper;
.super Ljava/lang/Object;
.source "BannerHelper.java"


# static fields
.field private static final mInstance:Lcom/ironsource/adobeair/BannerHelper;


# instance fields
.field private final BANNER_POSITION_TOP:I

.field private final ERROR_CODE:Ljava/lang/String;

.field private final ERROR_DESCRIPTION:Ljava/lang/String;

.field private mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mBannerContainer:Landroid/widget/FrameLayout;

.field private mIsBannerLoaded:Z

.field public mIsInitBannerCalled:Z

.field public mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/ironsource/adobeair/BannerHelper;

    invoke-direct {v0}, Lcom/ironsource/adobeair/BannerHelper;-><init>()V

    sput-object v0, Lcom/ironsource/adobeair/BannerHelper;->mInstance:Lcom/ironsource/adobeair/BannerHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "error_code"

    .line 26
    iput-object v0, p0, Lcom/ironsource/adobeair/BannerHelper;->ERROR_CODE:Ljava/lang/String;

    const-string v0, "error_description"

    .line 27
    iput-object v0, p0, Lcom/ironsource/adobeair/BannerHelper;->ERROR_DESCRIPTION:Ljava/lang/String;

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/ironsource/adobeair/BannerHelper;->BANNER_POSITION_TOP:I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/adobeair/BannerHelper;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/ironsource/adobeair/BannerHelper;->mBannerContainer:Landroid/widget/FrameLayout;

    .line 46
    iput-object v0, p0, Lcom/ironsource/adobeair/BannerHelper;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/ironsource/adobeair/BannerHelper;->mIsBannerLoaded:Z

    .line 48
    iput-boolean v0, p0, Lcom/ironsource/adobeair/BannerHelper;->mIsInitBannerCalled:Z

    return-void
.end method

.method static synthetic access$000()Lcom/ironsource/adobeair/BannerHelper;
    .locals 1

    .line 24
    sget-object v0, Lcom/ironsource/adobeair/BannerHelper;->mInstance:Lcom/ironsource/adobeair/BannerHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ironsource/adobeair/BannerHelper;)Landroid/widget/FrameLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ironsource/adobeair/BannerHelper;->mBannerContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ironsource/adobeair/BannerHelper;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ironsource/adobeair/BannerHelper;->mBannerContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ironsource/adobeair/BannerHelper;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ironsource/adobeair/BannerHelper;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ironsource/adobeair/BannerHelper;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ironsource/adobeair/BannerHelper;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ironsource/adobeair/BannerHelper;Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adobeair/BannerHelper;->getBannerSize(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$402(Lcom/ironsource/adobeair/BannerHelper;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/ironsource/adobeair/BannerHelper;->mIsBannerLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ironsource/adobeair/BannerHelper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ironsource/adobeair/BannerHelper;->parseErrorToEvent(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/adobeair/BannerHelper;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adobeair/BannerHelper;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBannerSize(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    const-string v0, "CUSTOM"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance p1, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(II)V

    return-object p1

    .line 176
    :cond_0
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/adobeair/BannerHelper;
    .locals 2

    const-class v0, Lcom/ironsource/adobeair/BannerHelper;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/ironsource/adobeair/BannerHelper;->mInstance:Lcom/ironsource/adobeair/BannerHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    :try_start_0
    const-string v2, "error_code"

    .line 161
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_description"

    .line 162
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method private parseErrorToEvent(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adobeair/BannerHelper;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public destroyBanner()V
    .locals 3

    .line 181
    sget-object v0, Lcom/ironsource/adobeair/BannerHelper;->mInstance:Lcom/ironsource/adobeair/BannerHelper;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ironsource/adobeair/BannerHelper$2;

    invoke-direct {v2, p0}, Lcom/ironsource/adobeair/BannerHelper$2;-><init>(Lcom/ironsource/adobeair/BannerHelper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public displayBanner()V
    .locals 3

    .line 203
    sget-object v0, Lcom/ironsource/adobeair/BannerHelper;->mInstance:Lcom/ironsource/adobeair/BannerHelper;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ironsource/adobeair/BannerHelper$3;

    invoke-direct {v2, p0}, Lcom/ironsource/adobeair/BannerHelper$3;-><init>(Lcom/ironsource/adobeair/BannerHelper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hideBanner()V
    .locals 3

    .line 222
    sget-object v0, Lcom/ironsource/adobeair/BannerHelper;->mInstance:Lcom/ironsource/adobeair/BannerHelper;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ironsource/adobeair/BannerHelper$4;

    invoke-direct {v2, p0}, Lcom/ironsource/adobeair/BannerHelper$4;-><init>(Lcom/ironsource/adobeair/BannerHelper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized loadAndShowBanner(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 10

    monitor-enter p0

    .line 63
    :try_start_0
    sget-object v2, Lcom/ironsource/adobeair/AndroidBridge;->extContext:Lcom/adobe/fre/FREContext;

    .line 65
    iget-object v8, p0, Lcom/ironsource/adobeair/BannerHelper;->mUIHandler:Landroid/os/Handler;

    new-instance v9, Lcom/ironsource/adobeair/BannerHelper$1;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/adobeair/BannerHelper$1;-><init>(Lcom/ironsource/adobeair/BannerHelper;Lcom/adobe/fre/FREContext;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method

.method public loadBanner(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 2

    .line 52
    sget-object v0, Lcom/ironsource/adobeair/BannerHelper;->mInstance:Lcom/ironsource/adobeair/BannerHelper;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-boolean v1, p0, Lcom/ironsource/adobeair/BannerHelper;->mIsInitBannerCalled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ironsource/adobeair/BannerHelper;->mIsBannerLoaded:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/ironsource/adobeair/BannerHelper;->mIsBannerLoaded:Z

    .line 58
    invoke-virtual/range {p0 .. p5}, Lcom/ironsource/adobeair/BannerHelper;->loadAndShowBanner(Ljava/lang/String;IIILjava/lang/String;)V

    .line 59
    monitor-exit v0

    return-void

    .line 54
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
