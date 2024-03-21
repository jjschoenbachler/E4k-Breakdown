.class Lcom/ironsource/mediationsdk/ProgIsManager;
.super Lcom/ironsource/mediationsdk/BaseProgManager;
.source "ProgIsManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/ProgIsManagerListener;
.implements Lcom/ironsource/mediationsdk/AuctionEventListener;
.implements Lcom/ironsource/mediationsdk/IProgManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;
    }
.end annotation


# instance fields
.field private mAdvancedLoading:Z

.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

.field private mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

.field private mAuctionTrial:I

.field private mCurrentAuctionId:Ljava/lang/String;

.field private mCurrentPlacementName:Ljava/lang/String;

.field private mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

.field private mGenericParams:Lorg/json/JSONObject;

.field private mInitMangerTime:J

.field private mIsAuctionEnabled:Z

.field private mLoadStartTime:J

.field private mMaxSmashesToLoad:I

.field private mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

.field mShouldTrackNetworkState:Z

.field private final mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/ProgIsSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

.field private mTimeToWaitBeforeFirstAction:J

.field private mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/ProgIsSmash;",
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
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 66
    invoke-direct {v7, v0, v1}, Lcom/ironsource/mediationsdk/BaseProgManager;-><init>(Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v0, ""

    .line 62
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    const/4 v8, 0x0

    .line 63
    iput-boolean v8, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mShouldTrackNetworkState:Z

    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const v0, 0x14188

    .line 68
    invoke-direct {v7, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I)V

    .line 69
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_NOT_INITIALIZED:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {v7, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    .line 74
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    const-string v0, ""

    .line 75
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v0

    iput v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mMaxSmashesToLoad:I

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdvancedLoading()Z

    move-result v0

    iput-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mAdvancedLoading:Z

    .line 80
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->setDelayLoadFailureNotificationInSeconds(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;I)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v11

    .line 83
    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeFirstAuctionMs()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mTimeToWaitBeforeFirstAction:J

    .line 84
    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result v0

    const/4 v12, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    .line 86
    iget-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHandler;

    const-string v1, "interstitial"

    invoke-direct {v0, v1, v11, v7}, Lcom/ironsource/mediationsdk/AuctionHandler;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    .line 90
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 93
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v8, v8}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 94
    invoke-static {}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->getInstance()Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->isAdapterVersionISCompatible(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    new-instance v15, Lcom/ironsource/mediationsdk/ProgIsSmash;

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v5

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/ProgIsSmash;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/ProgIsManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 96
    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_3
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionSavedHistoryLimit()I

    move-result v1

    invoke-direct {v0, v13, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;-><init>(Ljava/util/List;I)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    .line 103
    new-instance v0, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;-><init>(Ljava/util/List;)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    .line 105
    iget-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 106
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->initForBidding()V

    goto :goto_2

    .line 111
    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mInitMangerTime:J

    .line 112
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {v7, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v9

    const v2, 0x14189

    .line 114
    new-array v3, v12, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v4, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v12

    aput-object v4, v3, v8

    invoke-direct {v7, v2, v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$002(Lcom/ironsource/mediationsdk/ProgIsManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/ProgIsManager;Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    return-void
.end method

.method static synthetic access$102(Lcom/ironsource/mediationsdk/ProgIsManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHandler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHistory;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/ProgIsManager;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mInitMangerTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/ProgIsManager;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mTimeToWaitBeforeFirstAction:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/ProgIsManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->makeAuction()V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/ProgIsManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/ProgIsManager;ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/ProgIsManager;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method private extractNonBidderProvidersFromWaterfall()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 254
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    new-instance v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/ProgIsSmash;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "2"

    .line 276
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

.method private loadSmash(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V

    const/16 v1, 0x7d2

    .line 321
    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 322
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->loadInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method private loadSmashes()V
    .locals 8

    .line 328
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    const/16 v0, 0x83e

    const/4 v2, 0x2

    .line 330
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    const/16 v5, 0x40b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v1

    const-string v1, "Empty waterfall"

    aput-object v1, v2, v7

    aput-object v2, v3, v7

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 331
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v3, "Empty waterfall"

    invoke-direct {v2, v5, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 335
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    const/4 v0, 0x0

    .line 338
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mMaxSmashesToLoad:I

    if-ge v0, v2, :cond_4

    .line 339
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 341
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getIsLoadCandidate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 343
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAdvancedLoading:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advanced Loading: Starting to load bidder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". No other instances will be loaded at the same time."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 351
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    goto :goto_1

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as a non bidder is being loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 357
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_2
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private logAPIError(Ljava/lang/String;)V
    .locals 3

    .line 760
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 4

    .line 766
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgIsManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    .locals 2

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 753
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private makeAuction()V
    .locals 1

    .line 121
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_AUCTION:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 122
    new-instance v0, Lcom/ironsource/mediationsdk/ProgIsManager$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManager$1;-><init>(Lcom/ironsource/mediationsdk/ProgIsManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendMediationEvent(I)V
    .locals 2

    const/4 v0, 0x0

    .line 772
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 778
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;Z)V
    .locals 6

    .line 796
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 797
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "programmatic"

    const/4 v2, 0x1

    .line 798
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auctionId"

    .line 801
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "genericParams"

    .line 805
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 808
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "placement"

    .line 809
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    :cond_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 813
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p3

    iget v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 818
    :try_start_0
    array-length p3, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_4

    aget-object v4, p2, v3

    .line 819
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, v2

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 823
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMediationEvent "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 826
    :cond_4
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 827
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I)V
    .locals 2

    const/4 v0, 0x0

    .line 790
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 784
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 2

    const/4 v0, 0x0

    .line 851
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 857
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V
    .locals 5

    .line 875
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object p2

    .line 877
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auctionId"

    .line 878
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "genericParams"

    .line 882
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    .line 885
    iget-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "placement"

    .line 886
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    :cond_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldAddAuctionParams(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 890
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p4

    iget v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {p4, p2, v0, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 895
    :try_start_0
    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_4

    aget-object v2, p3, v1

    .line 896
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 900
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS sendProviderEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    invoke-virtual {p4, v0, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 903
    :cond_4
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p3, p1, p4}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 904
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 2

    const/4 v0, 0x0

    .line 869
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 863
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V
    .locals 2

    .line 745
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method private shouldAddAuctionParams(I)Z
    .locals 1

    const/16 v0, 0x7d2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x898

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8a5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x89c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x899

    if-eq p1, v0, :cond_1

    const/16 v0, 0x89b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x83e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8fd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8fc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8ff

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

.method private showInterstitial(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    .locals 1

    .line 476
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_SHOWING:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 477
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->showInterstitial()V

    const/16 v0, 0x899

    .line 478
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 480
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)V

    .line 481
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setCappedPerSession()V

    const/16 v0, 0x961

    .line 483
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was session capped"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 487
    :cond_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementIsShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isInterstitialPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x960

    .line 489
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I)V

    :cond_1
    return-void
.end method

.method private updateWaterfall(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 283
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 284
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/ProgIsSmash;

    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setIsLoadCandidate(Z)V

    .line 291
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWaterfall() - could not find matching smash for auction response item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 300
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

    .line 301
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Updated waterfall is empty"

    .line 305
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    :cond_2
    const/16 p1, 0x907

    .line 308
    new-array v1, v2, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ext1"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    aput-object v3, v1, v5

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private updateWaterfallToNonBidding()V
    .locals 2

    .line 241
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->extractNonBidderProvidersFromWaterfall()Ljava/util/List;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->getAuctionFallbackId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 246
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfall(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isInterstitialReady()Z
    .locals 3

    monitor-enter p0

    .line 496
    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mShouldTrackNetworkState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_2

    .line 497
    :cond_1
    monitor-exit p0

    return v1

    .line 500
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 501
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isReadyToShow()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 502
    monitor-exit p0

    return v0

    .line 506
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 495
    monitor-exit p0

    throw v0

    :goto_0
    nop

    goto :goto_0
.end method

.method public declared-synchronized loadInterstitial()V
    .locals 4

    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_SHOWING:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    const-string v0, "loadInterstitial: load cannot be invoked while showing an ad"

    .line 375
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 376
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x40d

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 381
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->hasPendingInvocation(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "loadInterstitial: load is already in progress"

    .line 382
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    const-string v0, ""

    .line 386
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    const-string v0, ""

    .line 387
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    .line 391
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->resetConfigurations(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 394
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->resetAdInfo()V

    const/16 v0, 0x7d1

    .line 396
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I)V

    .line 397
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mLoadStartTime:J

    .line 399
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;->storeWaterfallPerformance(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 403
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 406
    :cond_4
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->makeAuction()V

    goto :goto_0

    .line 408
    :cond_5
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfallToNonBidding()V

    .line 409
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmashes()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 372
    monitor-exit p0

    throw v0
.end method

.method public onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 5

    .line 217
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

    .line 218
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 221
    iput p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    .line 222
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    const/4 p3, 0x0

    .line 223
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    .line 226
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfallToNonBidding()V

    .line 228
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 p4, 0x8fc

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    .line 229
    new-array p2, v2, [[Ljava/lang/Object;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v3, "errorCode"

    aput-object v3, p3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    aput-object p3, p2, v1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p3, "duration"

    aput-object p3, p1, v1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v0

    aput-object p1, p2, v0

    invoke-direct {p0, p4, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    .line 231
    new-array p3, p3, [[Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    aput-object v3, p3, v1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, p1, v1

    aput-object p2, p1, v0

    aput-object p1, p3, v0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "duration"

    aput-object p2, p1, v1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    aput-object p1, p3, v2

    invoke-direct {p0, p4, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 234
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmashes()V

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

    .line 187
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 189
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericParams:Lorg/json/JSONObject;

    .line 190
    iput p6, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    const-string p3, ""

    .line 191
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    .line 194
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x2

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const p3, 0x157c2

    .line 195
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

    invoke-direct {p0, p3, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 199
    :cond_0
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, p5, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateConfigurations(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 202
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    sget-object p5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p3, p5}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->isAdUnitCapped(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p1, 0x8ff

    .line 204
    new-array p3, p6, [[Ljava/lang/Object;

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "auctionId"

    aput-object p5, p4, v0

    aput-object p2, p4, p6

    aput-object p4, p3, v0

    invoke-direct {p0, p1, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 205
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 206
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p4, 0x20d

    const-string p5, "Ad unit is capped"

    invoke-direct {p3, p4, p5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8fd

    .line 208
    new-array p3, p6, [[Ljava/lang/Object;

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "duration"

    aput-object p5, p4, v0

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p4, p6

    aput-object p4, p3, v0

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfall(Ljava/util/List;)V

    .line 211
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmashes()V

    :goto_0
    return-void
.end method

.method public onInterstitialAdClicked(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 2

    const-string v0, "onInterstitialAdClicked"

    .line 720
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/16 v0, 0x7d6

    .line 722
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdClosed(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 8

    .line 671
    monitor-enter p0

    :try_start_0
    const-string v0, "onInterstitialAdClosed"

    .line 672
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    const/16 v2, 0x89c

    const/4 v3, 0x1

    .line 676
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "sessionDepth"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object v5, v4, v7

    invoke-direct {p0, v2, p1, v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    .line 677
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 679
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 680
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 681
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;J)V
    .locals 8

    .line 553
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 555
    monitor-enter p0

    .line 556
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialAdLoadFailed error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    const/16 v2, 0x486

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8a5

    .line 559
    new-array v2, v3, [[Ljava/lang/Object;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    aput-object v6, v2, v4

    new-array p1, v3, [Ljava/lang/Object;

    const-string v6, "duration"

    aput-object v6, p1, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v5

    aput-object p1, v2, v5

    invoke-direct {p0, v1, p2, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x898

    const/4 v2, 0x3

    .line 562
    new-array v2, v2, [[Ljava/lang/Object;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object v6, v2, v4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "reason"

    aput-object v7, v6, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v5

    aput-object v6, v2, v5

    new-array p1, v3, [Ljava/lang/Object;

    const-string v6, "duration"

    aput-object v6, p1, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v5

    aput-object p1, v2, v3

    invoke-direct {p0, v1, p2, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 568
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 569
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p1, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 576
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getIsLoadCandidate()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 577
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAdvancedLoading:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p3, :cond_4

    if-eqz p4, :cond_3

    goto :goto_2

    .line 592
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Advanced Loading: Starting to load bidder "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". No other instances will be loaded at the same time."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 594
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    const-string p1, "a non bidder is being loaded"

    goto :goto_3

    :cond_5
    const-string p1, "a non bidder was already loaded successfully"

    .line 586
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " as "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 587
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 588
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    goto :goto_6

    .line 599
    :cond_6
    :goto_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAdvancedLoading:Z

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mMaxSmashesToLoad:I

    if-ge v1, v2, :cond_9

    :goto_5
    const/4 p3, 0x1

    goto/16 :goto_1

    .line 613
    :cond_7
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isLoadingInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 616
    :cond_8
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isReadyToShow()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p4, 0x1

    goto/16 :goto_1

    .line 621
    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne p1, p2, :cond_a

    if-nez p3, :cond_a

    .line 622
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p4, "No ads to show"

    const/16 v1, 0x1fd

    invoke-direct {p3, v1, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/16 p1, 0x83e

    .line 623
    new-array p2, v5, [[Ljava/lang/Object;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "errorCode"

    aput-object p4, p3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v5

    aput-object p3, p2, v4

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 624
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 626
    :cond_a
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "smashesToLoad.size() = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 630
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 631
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    goto :goto_7

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    .line 626
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :goto_8
    nop

    goto :goto_8
.end method

.method public onInterstitialAdOpened(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 8

    .line 640
    monitor-enter p0

    :try_start_0
    const-string v0, "onInterstitialAdOpened"

    .line 641
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    const/16 v0, 0x7d5

    .line 642
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 644
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_0

    .line 648
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setAdInfo(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 650
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    .line 651
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->reportImpressionDataToPublisher(Lcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 657
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Smash is null"

    .line 658
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdOpened showing instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " missing from waterfall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    const v0, 0x1418d

    const/4 v1, 0x3

    .line 659
    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "errorCode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x3f3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Showing missing "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ext1"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 663
    :cond_2
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 664
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInterstitialAdReady(Lcom/ironsource/mediationsdk/ProgIsSmash;J)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    .line 513
    monitor-enter p0

    :try_start_0
    const-string v2, "onInterstitialAdReady"

    .line 514
    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    const/16 v2, 0x7d3

    const/4 v3, 0x1

    .line 515
    new-array v4, v3, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "duration"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v6, v4, v8

    invoke-direct {p0, v2, v0, v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 520
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v2, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :cond_0
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v4, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne v2, v4, :cond_4

    .line 525
    sget-object v2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 526
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-wide v9, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mLoadStartTime:J

    const/4 v2, 0x0

    sub-long/2addr v6, v9

    const/16 v2, 0x7d4

    .line 527
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v9, v5, [Ljava/lang/Object;

    const-string v10, "duration"

    aput-object v10, v9, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v3

    aput-object v9, v4, v8

    invoke-direct {p0, v2, v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 529
    iget-boolean v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v2, :cond_3

    .line 530
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v14, :cond_1

    const-string v2, ""

    .line 533
    invoke-virtual {v14, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->setAdInfo(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 535
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v3

    iget-object v4, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2, v14, v3, v4}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportLoadSuccess(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 536
    iget-object v9, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v10, v2

    check-cast v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v11, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v12

    iget-object v13, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual/range {v9 .. v14}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportAuctionLose(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "Smash is null"

    .line 539
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterstitialAdReady winner instance "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " missing from waterfall"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    const v2, 0x1418d

    const/4 v4, 0x3

    .line 540
    new-array v4, v4, [[Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v8

    const/16 v7, 0x3f2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v6, v4, v8

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "reason"

    aput-object v7, v6, v8

    const-string v7, "Loaded missing"

    aput-object v7, v6, v3

    aput-object v6, v4, v3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "ext1"

    aput-object v7, v6, v8

    aput-object v0, v6, v3

    aput-object v6, v4, v5

    invoke-direct {p0, v2, v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 544
    :cond_3
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdReady(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 546
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 7

    .line 697
    monitor-enter p0

    .line 698
    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setAdInfo(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 706
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 707
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/16 v0, 0x89b

    const/4 v1, 0x2

    .line 708
    new-array v2, v1, [[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "errorCode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v1, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    aput-object v1, v2, v6

    invoke-direct {p0, v0, p2, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    .line 710
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 713
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 2

    const-string v0, "onInterstitialAdShowSucceeded"

    .line 688
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 689
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/16 v0, 0x89a

    .line 690
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdVisible(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 1

    const-string v0, "onInterstitialAdVisible"

    .line 729
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 5

    const/4 v0, 0x1

    .line 734
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    aput-object v2, v1, v4

    const/16 p1, 0x89e

    invoke-direct {p0, p1, p2, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method public onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 1

    const/16 v0, 0x89d

    .line 739
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 3

    .line 910
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should Track Network State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 911
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mShouldTrackNetworkState:Z

    return-void
.end method

.method public declared-synchronized showInterstitial(Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_SHOWING:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    const/16 v2, 0x83f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v1, :cond_0

    const-string p1, "showInterstitial error: can\'t show ad while an ad is already showing"

    .line 420
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 421
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x40c

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v6, v0, v7}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 423
    new-array v0, v5, [[Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    aput-object v6, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v4

    aput-object p1, v1, v3

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 427
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    const/16 v6, 0x1fd

    if-eq v0, v1, :cond_1

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showInterstitial() error state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    const-string p1, "showInterstitial error: show called while no ads are available"

    .line 431
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v1

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v1, v0, v7}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 434
    new-array v0, v5, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v4

    aput-object p1, v1, v3

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    :cond_1
    if-nez p1, :cond_2

    :try_start_2
    const-string p1, "showInterstitial error: empty default placement"

    .line 440
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 441
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3fc

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v6, v0, v7}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 443
    new-array v0, v5, [[Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    aput-object v6, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v4

    aput-object p1, v1, v3

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    .line 447
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    const/16 v0, 0x834

    .line 449
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I)V

    .line 451
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isInterstitialPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "placement "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is capped"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x20c

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v6, v0, v7}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 456
    new-array v0, v5, [[Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    aput-object v6, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v4

    aput-object p1, v1, v3

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 460
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 461
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isReadyToShow()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 462
    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->showInterstitial(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 463
    monitor-exit p0

    return-void

    .line 465
    :cond_4
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showInterstitial "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isReadyToShow() == false"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_5
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    const-string v0, "Interstitial"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 470
    new-array p1, v5, [[Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "errorCode"

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object v0, p1, v4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "reason"

    aput-object v1, v0, v4

    const-string v1, "Show Fail - No ads to show"

    aput-object v1, v0, v3

    aput-object v0, p1, v3

    invoke-direct {p0, v2, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 417
    monitor-exit p0

    throw p1

    :goto_1
    nop

    goto :goto_1
.end method
