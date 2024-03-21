.class public Lcom/ironsource/mediationsdk/ProgBannerManager;
.super Lcom/ironsource/mediationsdk/BaseProgManager;
.source "ProgBannerManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/ProgBannerManagerListener;
.implements Lcom/ironsource/mediationsdk/AuctionEventListener;
.implements Lcom/ironsource/mediationsdk/timer/BannerReloadTimer$ReloadIntervalInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;
    }
.end annotation


# instance fields
.field private mActiveSmash:Lcom/ironsource/mediationsdk/ProgBannerSmash;

.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

.field private mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

.field private mAuctionTrail:I

.field private mCurrentAuctionId:Ljava/lang/String;

.field private mCurrentLoadingIndex:I

.field private mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

.field private mCurrentSessionDepth:I

.field private mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

.field private mData:Lcom/ironsource/mediationsdk/BannerData;

.field private mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

.field private mGenericParams:Lorg/json/JSONObject;

.field private mInitMangerTimeStamp:J

.field private mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

.field private final mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/ProgBannerSmash;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field private mTimer:Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;

.field private mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/ProgBannerSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;",
            ">;"
        }
    .end annotation
.end field

.field private mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/BannerData;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/BannerData;",
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p3, p4}, Lcom/ironsource/mediationsdk/BaseProgManager;-><init>(Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 57
    sget-object p3, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->NONE:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const-string p3, ""

    .line 68
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionFallback:Ljava/lang/String;

    .line 76
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mStateLock:Ljava/lang/Object;

    .line 82
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAuctionEnabled = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerData;->isAuctionEnabled()Z

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 84
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    .line 87
    new-instance p2, Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/BannerData;->getBannerRefreshIntervalInSeconds()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;-><init>(I)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mTimer:Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;

    .line 88
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 90
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result p2

    iput p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentSessionDepth:I

    .line 97
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/BannerData;->getBannerDelayLoadFailureInSeconds()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->setDelayLoadFailureNotificationInSeconds(I)V

    .line 100
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerData;->isAuctionEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    new-instance p2, Lcom/ironsource/mediationsdk/AuctionHandler;

    const-string p3, "banner"

    iget-object p4, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/BannerData;->getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object p4

    invoke-direct {p2, p3, p4, p0}, Lcom/ironsource/mediationsdk/AuctionHandler;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->initAuctionHistory(Ljava/util/List;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setSmashMap(Ljava/util/List;)V

    .line 111
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mInitMangerTimeStamp:J

    .line 114
    sget-object p1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setState(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ProgBannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ironsource/mediationsdk/ProgBannerManager;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/ProgBannerManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->storeWaterfallPerformance()V

    return-void
.end method

.method static synthetic access$102(Lcom/ironsource/mediationsdk/ProgBannerManager;Lcom/ironsource/mediationsdk/model/BannerPlacement;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/ProgBannerManager;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->waitBeforeAuction()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/ProgBannerManager;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ironsource/mediationsdk/ProgBannerManager;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/mediationsdk/ProgBannerManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ironsource/mediationsdk/ProgBannerManager;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->compareStateAndSetIfTrue(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/ironsource/mediationsdk/ProgBannerManager;)Lcom/ironsource/mediationsdk/AuctionHandler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ironsource/mediationsdk/ProgBannerManager;)Lcom/ironsource/mediationsdk/AuctionHistory;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ironsource/mediationsdk/ProgBannerManager;)Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getBannerSizeForAuction()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ironsource/mediationsdk/ProgBannerManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->makeAuction()V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/ProgBannerManager;I[[Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/ProgBannerManager;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setState(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/ProgBannerManager;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->startLoadingBanner(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/ProgBannerManager;)Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mTimer:Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/ProgBannerManager;)Lcom/ironsource/mediationsdk/ProgBannerSmash;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/ProgBannerSmash;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/ProgBannerManager;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentSessionDepth:I

    return p0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/ProgBannerManager;I[[Ljava/lang/Object;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/ProgBannerManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->destroyActiveSmash()V

    return-void
.end method

.method private static addEventSizeFields(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 6

    .line 1055
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "BANNER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "SMART"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "LARGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "RECTANGLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "bannerAdSize"

    const/4 v1, 0x6

    .line 1073
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "custom_banner_size"

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_1
    const-string v0, "bannerAdSize"

    const/4 v1, 0x5

    .line 1069
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_2
    const-string v0, "bannerAdSize"

    .line 1065
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_3
    const-string v0, "bannerAdSize"

    .line 1061
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_4
    const-string v0, "bannerAdSize"

    .line 1057
    invoke-virtual {p0, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1079
    :goto_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Adaptive=true"

    const-string v0, "ext1"

    .line 1081
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ext1"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , Adaptive=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "ext1"

    .line 1084
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1087
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_4
        0x44dc31b -> :sswitch_3
        0x4b59da9 -> :sswitch_2
        0x7458732c -> :sswitch_1
        0x77297f71 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addSmashToWaterfall(Lcom/ironsource/mediationsdk/AuctionResponseItem;)V
    .locals 14

    .line 881
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/ProgBannerSmash;

    if-eqz v0, :cond_0

    .line 885
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v1

    iget-object v2, v0, Lcom/ironsource/mediationsdk/ProgBannerSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AdapterRepository;->createAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 889
    new-instance v1, Lcom/ironsource/mediationsdk/ProgBannerSmash;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/ProgBannerSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v6

    iget v8, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentSessionDepth:I

    iget-object v9, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    iget-object v10, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericParams:Lorg/json/JSONObject;

    iget v11, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionTrail:I

    iget-object v12, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionFallback:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->isReload()Z

    move-result v13

    move-object v3, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v13}, Lcom/ironsource/mediationsdk/ProgBannerSmash;-><init>(Lcom/ironsource/mediationsdk/BannerData;Lcom/ironsource/mediationsdk/ProgBannerManagerListener;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/AbstractAdapter;ILjava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Z)V

    const/4 v0, 0x1

    .line 892
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->setIsLoadCandidate(Z)V

    .line 895
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 900
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find matching smash for auction response item - item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->addViewWithFrameLayoutParams(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private canSendBannerCallbacks()Z
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private compareStateAndSetIfTrue(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)Z
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-ne v1, p1, :cond_0

    .line 134
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set state from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 137
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 139
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createWaterfallStringFromAuctionItem(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/ProgBannerSmash;

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    goto :goto_0

    .line 943
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "2"

    .line 946
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private destroyActiveSmash()V
    .locals 3

    .line 962
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/ProgBannerSmash;

    if-eqz v0, :cond_0

    .line 963
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveSmash = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/ProgBannerSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/ProgBannerSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->destroyBanner()V

    const/4 v0, 0x0

    .line 965
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/ProgBannerSmash;

    :cond_0
    return-void
.end method

.method private extractNonBidderProvidersFromWaterfall()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation

    .line 916
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 917
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgBannerSmash;

    .line 918
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->isBidder()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 922
    :cond_1
    new-instance v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getBannerSizeForAuction()Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->isSmart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1108
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->LEADERBOARD:Lcom/ironsource/mediationsdk/ISBannerSize;

    goto :goto_0

    .line 1111
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    goto :goto_0

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCurrentBannerSize()Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCurrentPlacementName()Ljava/lang/String;
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private handleEndOfWaterfallWithoutLoading()V
    .locals 9

    .line 800
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Empty waterfall"

    goto :goto_0

    :cond_0
    const-string v0, "Mediation No fill"

    .line 801
    :goto_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 803
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->releaseSmashesInWaterfall(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V

    .line 806
    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->compareStateAndSetIfTrue(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)Z

    move-result v1

    const/16 v2, 0x25e

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 808
    new-array v1, v1, [[Ljava/lang/Object;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    .line 809
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object v6, v1, v4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "reason"

    aput-object v7, v6, v4

    aput-object v0, v6, v5

    aput-object v6, v1, v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v6, v4

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    .line 811
    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v5

    aput-object v6, v1, v3

    const/16 v3, 0xc27

    .line 814
    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 816
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    .line 821
    :cond_1
    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->RELOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v6, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADED:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-direct {p0, v1, v6}, Lcom/ironsource/mediationsdk/ProgBannerManager;->compareStateAndSetIfTrue(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc81

    .line 823
    new-array v6, v5, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v3, v4

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v5

    aput-object v3, v6, v4

    invoke-direct {p0, v1, v6}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 825
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 826
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v2, v1, v5}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    .line 829
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mTimer:Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;->startReloadTimer(Lcom/ironsource/mediationsdk/timer/BannerReloadTimer$ReloadIntervalInterface;)V

    goto :goto_1

    .line 833
    :cond_2
    sget-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setState(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)V

    .line 834
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handlePlacementCapping()V
    .locals 2

    .line 928
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementBnShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 931
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd48

    .line 932
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I)V

    :cond_0
    return-void
.end method

.method private initAuctionHistory(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 122
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_0
    new-instance p1, Lcom/ironsource/mediationsdk/AuctionHistory;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/BannerData;->getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionSavedHistoryLimit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;-><init>(Ljava/util/List;I)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    return-void
.end method

.method private isReload()Z
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->RELOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isStateLoaded()Z
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADED:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isWaitingForAuctionResponse()Z
    .locals 3

    .line 1136
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1137
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->FIRST_AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isWaitingForLoadResponse()Z
    .locals 3

    .line 1130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1131
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->RELOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadNextSmash()V
    .locals 5

    .line 754
    iget v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentLoadingIndex:I

    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 757
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgBannerSmash;

    .line 760
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getIsLoadCandidate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading smash - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 765
    iput v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentLoadingIndex:I

    .line 768
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->handleEndOfWaterfallWithoutLoading()V

    return-void
.end method

.method private loadSmash(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 785
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->isBidder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    .line 789
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->makeCopy()Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {p1, v1, v2, v0}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/BannerPlacement;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private makeAuction()V
    .locals 2

    .line 661
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 664
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$3;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/ProgBannerManager$3;-><init>(Lcom/ironsource/mediationsdk/ProgBannerManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendImpressionData(Lcom/ironsource/mediationsdk/ProgBannerSmash;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V
    .locals 4

    .line 603
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceType()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    .line 605
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->reportImpressionDataToPublisher(Lcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    return-void
.end method

.method private sendMediationEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 990
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;)V
    .locals 1

    .line 994
    iget v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentSessionDepth:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 999
    invoke-static {v0, v1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v2

    .line 1003
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getCurrentBannerSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1005
    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->addEventSizeFields(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    .line 1009
    :cond_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    if-eqz v3, :cond_1

    const-string v3, "placement"

    .line 1010
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v3, "sessionDepth"

    .line 1014
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1017
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "auctionId"

    .line 1018
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1022
    :cond_2
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericParams:Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_3

    const-string p3, "genericParams"

    .line 1023
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1027
    :cond_3
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "auctionTrials"

    .line 1028
    iget v3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionTrail:I

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1030
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionFallback:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "auctionFallback"

    .line 1031
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p2, :cond_5

    .line 1037
    array-length p3, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_5

    aget-object v4, p2, v3

    .line 1038
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, v1

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1043
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 1047
    :cond_5
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, p1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1050
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private setSmashMap(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 730
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 732
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 735
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v2

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v6, v3, v0, v0}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 741
    new-instance v2, Lcom/ironsource/mediationsdk/ProgBannerSmash;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    iget v8, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentSessionDepth:I

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->isReload()Z

    move-result v9

    move-object v3, v2

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/mediationsdk/ProgBannerSmash;-><init>(Lcom/ironsource/mediationsdk/BannerData;Lcom/ironsource/mediationsdk/ProgBannerManagerListener;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/AbstractAdapter;IZ)V

    .line 742
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 745
    :cond_0
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can\'t load adapter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)V
    .locals 3

    .line 145
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private shouldAddAuctionParams(I)Z
    .locals 1

    const/16 v0, 0xc81

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc26

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc27

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc28

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0xdad

    if-eq p1, v0, :cond_1

    const/16 v0, 0xdae

    if-eq p1, v0, :cond_1

    const/16 v0, 0xdb2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private startLoadingBanner(Z)V
    .locals 3

    .line 210
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BannerData;->isAuctionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 215
    sget-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->FIRST_AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 217
    sget-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->RELOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 220
    :goto_0
    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->STARTED_LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->compareStateAndSetIfTrue(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    new-instance v0, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    const-string v0, ""

    .line 226
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericParams:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentLoadingIndex:I

    .line 235
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentSessionDepth:I

    if-eqz p1, :cond_3

    const/16 p1, 0xbc3

    .line 240
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I)V

    goto :goto_1

    :cond_3
    const/16 p1, 0xbb9

    .line 243
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I)V

    .line 246
    :goto_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerData;->isAuctionEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 248
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->makeAuction()V

    goto :goto_2

    .line 252
    :cond_4
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->updateWaterfallToNonBidding()V

    .line 255
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->loadNextSmash()V

    goto :goto_2

    .line 258
    :cond_5
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong state - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private storeWaterfallPerformance()V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;->storeWaterfallPerformance(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 957
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method

.method private updateWaterfall(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 845
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waterfall.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 849
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 850
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 855
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 858
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 861
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->addSmashToWaterfall(Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 864
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->createWaterfallStringFromAuctionItem(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    .line 868
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWaterfall() - next waterfall is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 874
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateWaterfallToNonBidding()V
    .locals 2

    .line 906
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->extractNonBidderProvidersFromWaterfall()Ljava/util/List;

    move-result-object v0

    .line 909
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getAuctionFallbackId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 911
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->updateWaterfall(Ljava/util/List;)Ljava/lang/String;

    return-void
.end method

.method private waitBeforeAuction()Z
    .locals 5

    .line 971
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mInitMangerTimeStamp:J

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/BannerData;->getTimeToWaitBeforeFirstAuctionInMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/BannerUtils;->getTimeToWaitBeforeFirstAuction(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 973
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waiting before auction - timeToWaitBeforeAuction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 976
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/ironsource/mediationsdk/ProgBannerManager$4;

    invoke-direct {v3, p0}, Lcom/ironsource/mediationsdk/ProgBannerManager$4;-><init>(Lcom/ironsource/mediationsdk/ProgBannerManager;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 2

    .line 263
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$2;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager$2;-><init>(Lcom/ironsource/mediationsdk/ProgBannerManager;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/BannerUtils;->verifyDestroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/BannerUtils$VerifyBannerListener;)V

    return-void
.end method

.method public isBannerVisible()Z
    .locals 4

    .line 1166
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1167
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "banner is null"

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return v1

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "banner or one of its parents are INVISIBLE or GONE"

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return v1

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1179
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "banner has no window focus"

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return v1

    .line 1184
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1185
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1186
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return v0
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V
    .locals 2

    .line 152
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->resetConfigurations(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 158
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->resetAdInfo()V

    .line 161
    sget-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->STARTED_LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->compareStateAndSetIfTrue(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->hasPendingInvocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager$1;-><init>(Lcom/ironsource/mediationsdk/ProgBannerManager;Lcom/ironsource/mediationsdk/model/BannerPlacement;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/BannerUtils;->verifyLoadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/BannerPlacement;Lcom/ironsource/mediationsdk/BannerUtils$VerifyBannerListener;)V

    goto :goto_0

    .line 201
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "can\'t load banner - already has pending invocation"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "can\'t load banner - loadBanner already called and still in progress"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auction failed | moving to fallback waterfall (error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->isWaitingForAuctionResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionFallback:Ljava/lang/String;

    .line 366
    iput p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionTrail:I

    const/4 p3, 0x0

    .line 367
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericParams:Lorg/json/JSONObject;

    .line 370
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->updateWaterfallToNonBidding()V

    const/4 p3, 0x3

    .line 373
    new-array p3, p3, [[Ljava/lang/Object;

    const/4 p4, 0x2

    new-array v0, p4, [Ljava/lang/Object;

    const-string v1, "duration"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 374
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const/4 p6, 0x1

    aput-object p5, v0, p6

    aput-object v0, p3, v2

    new-array p5, p4, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p5, v2

    .line 375
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, p6

    aput-object p5, p3, p6

    new-array p1, p4, [Ljava/lang/Object;

    const-string p5, "reason"

    aput-object p5, p1, v2

    aput-object p2, p1, p6

    aput-object p1, p3, p4

    const/16 p1, 0xdad

    .line 378
    invoke-direct {p0, p1, p3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 381
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->FIRST_AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->RELOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    :goto_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setState(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)V

    .line 384
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->loadNextSmash()V

    goto :goto_1

    .line 387
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "wrong state - mCurrentState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onAuctionSuccess(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/mediationsdk/AuctionResponseItem;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auctionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->isWaitingForAuctionResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    .line 304
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionFallback:Ljava/lang/String;

    .line 307
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 308
    iput p6, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionTrail:I

    .line 309
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 310
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericParams:Lorg/json/JSONObject;

    .line 313
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x2

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const p3, 0x157c2

    .line 314
    new-array v1, p4, [[Ljava/lang/Object;

    new-array v2, p4, [Ljava/lang/Object;

    const-string v3, "errorCode"

    aput-object v3, v2, v0

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    aput-object p9, v2, p6

    aput-object v2, v1, v0

    new-array p9, p4, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, p9, v0

    aput-object p10, p9, p6

    aput-object p9, v1, p6

    invoke-direct {p0, p3, v1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 318
    :cond_0
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, p5, p3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->updateConfigurations(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 321
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->adUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    sget-object p5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p3, p5}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->isAdUnitCapped(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p1, 0xdb2

    .line 323
    new-array p3, p6, [[Ljava/lang/Object;

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "auctionId"

    aput-object p5, p4, v0

    aput-object p2, p4, p6

    aput-object p4, p3, v0

    invoke-direct {p0, p1, p3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 326
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 329
    sget-object p2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setState(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)V

    .line 332
    sget-object p2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->FIRST_AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-ne p1, p2, :cond_4

    .line 333
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x20d

    const-string p3, "Ad unit is capped"

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {p2, p3, p1}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    :cond_1
    const/16 p2, 0xdae

    .line 338
    new-array p3, p6, [[Ljava/lang/Object;

    new-array p5, p4, [Ljava/lang/Object;

    const-string p9, "duration"

    aput-object p9, p5, v0

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    aput-object p7, p5, p6

    aput-object p5, p3, v0

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 341
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object p3, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->FIRST_AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-ne p2, p3, :cond_2

    sget-object p2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->RELOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    :goto_0
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setState(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->updateWaterfall(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xdb7

    .line 347
    new-array p3, p6, [[Ljava/lang/Object;

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "ext1"

    aput-object p5, p4, v0

    aput-object p1, p4, p6

    aput-object p4, p3, v0

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 350
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->loadNextSmash()V

    goto :goto_1

    .line 353
    :cond_3
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "wrong state - mCurrentState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onBannerClicked(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V
    .locals 5

    .line 521
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 523
    check-cast v0, [[Ljava/lang/Object;

    .line 526
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->canSendBannerCallbacks()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->onBannerAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 529
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_0
    const/16 v1, 0xc28

    .line 532
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getSessionDepth()I

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public onBannerLeftApplication(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V
    .locals 5

    .line 569
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 571
    check-cast v0, [[Ljava/lang/Object;

    .line 574
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->canSendBannerCallbacks()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 577
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_0
    const/16 v1, 0xc2b

    .line 580
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getSessionDepth()I

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public onBannerLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgBannerSmash;Z)V
    .locals 6

    .line 498
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    if-eq p1, p3, :cond_0

    .line 501
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoked with auctionId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and the current id is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const p1, 0x14573

    const/4 p3, 0x3

    .line 502
    new-array v0, p3, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    aput-object v2, v0, v4

    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, p3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong auction "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " State - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v3

    aput-object p3, v0, v3

    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "ext1"

    aput-object v2, p3, v4

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v3

    aput-object p3, v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->isWaitingForLoadResponse()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 509
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->loadNextSmash()V

    goto :goto_0

    .line 515
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "wrong state - mCurrentState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBannerLoadSuccess(Lcom/ironsource/mediationsdk/ProgBannerSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 12

    .line 395
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smash = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_0

    .line 398
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoked with auctionId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and the current id is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const p2, 0x14573

    .line 399
    new-array p3, v2, [[Ljava/lang/Object;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "errorCode"

    aput-object v1, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object v0, p3, v5

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "reason"

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong auction id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " State - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object v0, p3, v4

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "ext1"

    aput-object v1, v0, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object v0, p3, v3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->isWaitingForLoadResponse()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 406
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/ProgBannerSmash;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/ProgBannerSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->releaseMemory()V

    .line 411
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->releaseSmashesInWaterfall(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V

    .line 414
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/ProgBannerSmash;

    .line 417
    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->bindView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 420
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerData;->isAuctionEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 424
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz p2, :cond_2

    .line 427
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setAdInfo(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 430
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceType()I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {p3, p2, v0, v1}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportLoadSuccess(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 432
    iget-object v6, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, p3

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceType()I

    move-result v9

    iget-object v10, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportAuctionLose(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 435
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/BannerData;->getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->shouldSendBannerBURLFromImpression()Z

    move-result p3

    if-nez p3, :cond_3

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendImpressionData(Lcom/ironsource/mediationsdk/ProgBannerSmash;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    .line 440
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadSuccess winner instance "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " missing from waterfall. auctionId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const p2, 0x14575

    .line 441
    new-array p3, v2, [[Ljava/lang/Object;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "errorCode"

    aput-object v1, v0, v5

    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object v0, p3, v5

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "reason"

    aput-object v1, v0, v5

    const-string v1, "Loaded missing"

    aput-object v1, v0, v4

    aput-object v0, p3, v4

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "ext1"

    aput-object v1, v0, v5

    aput-object p1, v0, v4

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 446
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    if-ne p1, p2, :cond_5

    .line 452
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->canSendBannerCallbacks()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 455
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {p1, p2, v5}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdLoaded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V

    .line 458
    new-array p1, v4, [[Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "duration"

    aput-object p3, p2, v5

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {p3}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v4

    aput-object p2, p1, v5

    goto :goto_1

    .line 461
    :cond_4
    new-array p1, v3, [[Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "reason"

    aput-object p3, p2, v5

    const-string p3, "banner is destroyed"

    aput-object p3, p2, v4

    aput-object p2, p1, v5

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "duration"

    aput-object p3, p2, v5

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {p3}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v4

    aput-object p2, p1, v4

    :goto_1
    const/16 p2, 0xc26

    .line 465
    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    goto :goto_2

    .line 468
    :cond_5
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->canSendBannerCallbacks()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 470
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {p1, p2, v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdLoaded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V

    :cond_6
    const-string p1, "bannerReloadSucceeded"

    .line 473
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    const/16 p1, 0xc2c

    .line 475
    new-array p2, v4, [[Ljava/lang/Object;

    new-array p3, v3, [Ljava/lang/Object;

    const-string v0, "duration"

    aput-object v0, p3, v5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v4

    aput-object p3, p2, v5

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 480
    :goto_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->handlePlacementCapping()V

    .line 483
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 486
    sget-object p1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADED:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setState(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)V

    .line 489
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mTimer:Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;->startReloadTimer(Lcom/ironsource/mediationsdk/timer/BannerReloadTimer$ReloadIntervalInterface;)V

    goto :goto_3

    .line 492
    :cond_7
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "wrong state - mCurrentState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onBannerScreenDismissed(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V
    .locals 5

    .line 537
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 539
    check-cast v0, [[Ljava/lang/Object;

    .line 542
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->canSendBannerCallbacks()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 545
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_0
    const/16 v1, 0xc2a

    .line 548
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getSessionDepth()I

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public onBannerScreenPresented(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V
    .locals 5

    .line 553
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 555
    check-cast v0, [[Ljava/lang/Object;

    .line 558
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->canSendBannerCallbacks()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 561
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_0
    const/16 v1, 0xc29

    .line 564
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getSessionDepth()I

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public onBannerShown(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V
    .locals 8

    .line 585
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->isStateLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BannerData;->isAuctionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mData:Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BannerData;->getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->shouldSendBannerBURLFromImpression()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendImpressionData(Lcom/ironsource/mediationsdk/ProgBannerSmash;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    :cond_0
    const/16 p1, 0xc2f

    .line 593
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I)V

    goto :goto_0

    .line 595
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong state - mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x14573

    const/4 v1, 0x3

    .line 597
    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "errorCode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v3, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong State - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "ext1"

    aput-object v6, v3, v5

    aput-object p1, v3, v4

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onReloadInterval()V
    .locals 6

    .line 616
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "checking with IronsourceLifecycleManager if app in foreground"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v0, "start reload timer"

    .line 622
    invoke-static {}, Lcom/ironsource/lifecycle/IronsourceLifecycleManager;->getInstance()Lcom/ironsource/lifecycle/IronsourceLifecycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/lifecycle/IronsourceLifecycleManager;->isAppInBackground()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->isBannerVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADED:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    sget-object v4, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->STARTED_LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-direct {p0, v1, v4}, Lcom/ironsource/mediationsdk/ProgBannerManager;->compareStateAndSetIfTrue(Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v4, "start loading"

    invoke-virtual {v1, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 628
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/ProgBannerManager;->startLoadingBanner(Z)V

    goto :goto_0

    .line 631
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mCurrentState:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const-string v0, "banner is not visible - start reload timer"

    goto :goto_1

    :cond_2
    const-string v0, "app in background - start reload timer"

    :goto_1
    move-object v1, v0

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    .line 646
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xc80

    .line 649
    new-array v1, v3, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x266

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v4, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mTimer:Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/timer/BannerReloadTimer;->startReloadTimer(Lcom/ironsource/mediationsdk/timer/BannerReloadTimer$ReloadIntervalInterface;)V

    :cond_3
    return-void
.end method

.method public releaseSmashesInWaterfall(Lcom/ironsource/mediationsdk/ProgBannerSmash;)V
    .locals 3

    .line 1157
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgBannerManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgBannerSmash;

    .line 1158
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1159
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->releaseMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method
