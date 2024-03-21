.class Lcom/ironsource/mediationsdk/LWSProgRvManager;
.super Lcom/ironsource/mediationsdk/BaseProgManager;
.source "LWSProgRvManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/LWSRvManagerListener;
.implements Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;
.implements Lcom/ironsource/mediationsdk/AuctionEventListener;
.implements Lcom/ironsource/mediationsdk/IProgRvManager;
.implements Lcom/ironsource/environment/NetworkStateReceiverListener;
.implements Lcom/ironsource/mediationsdk/AdExpirationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;
    }
.end annotation


# instance fields
.field private mAdvancedLoading:Z

.field private mAuctionFailedReason:Ljava/lang/String;

.field private mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

.field private mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

.field private mAuctionStartTime:J

.field private mAuctionTrial:I

.field private mCurrentPlacementName:Ljava/lang/String;

.field private mExpiredAdsManager:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

.field private mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

.field private mGenericParams:Lorg/json/JSONObject;

.field private mIsAuctionEnabled:Z

.field private mIsShowingVideo:Z

.field private mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

.field private mLastChangedAvailabilityTime:J

.field private mLastReportedAvailabilityState:Ljava/lang/Boolean;

.field private mMaxSmashesToLoad:I

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

.field private mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

.field private mSessionDepth:I

.field private mShouldTrackNetworkState:Z

.field private mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

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

.field private final smashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/LWSProgRvSmash;",
            ">;"
        }
    .end annotation
.end field

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 108
    invoke-direct {v8, v0, v1}, Lcom/ironsource/mediationsdk/BaseProgManager;-><init>(Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v0, ""

    .line 61
    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    const/4 v9, 0x0

    .line 65
    iput-boolean v9, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    const/4 v10, 0x1

    .line 74
    iput v10, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const v0, 0x13da0

    .line 110
    invoke-direct {v8, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    .line 111
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_INITIATING:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {v8, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    .line 113
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v1

    iput v1, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mMaxSmashesToLoad:I

    .line 114
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdvancedLoading()Z

    move-result v1

    iput-boolean v1, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAdvancedLoading:Z

    const-string v1, ""

    .line 115
    iput-object v1, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    .line 116
    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericParams:Lorg/json/JSONObject;

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v13

    .line 118
    iput-boolean v9, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    .line 120
    new-instance v0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getLoadWhileShowSupportArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToDeleteOldWaterfallAfterAuction()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;-><init>(Ljava/util/List;I)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastChangedAvailabilityTime:J

    .line 126
    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    .line 127
    iget-boolean v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHandler;

    const-string v1, "rewardedVideo"

    invoke-direct {v0, v1, v13, v8}, Lcom/ironsource/mediationsdk/AuctionHandler;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    .line 130
    :cond_1
    new-instance v0, Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-direct {v0, v13, v8}, Lcom/ironsource/mediationsdk/RvLoadTrigger;-><init>(Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 136
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v9, v9}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 138
    new-instance v7, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v5

    iget v4, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    move-object v0, v7

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v16, v4

    move-object/from16 v4, p0

    move-object/from16 v17, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/LWSRvManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;I)V

    .line 139
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v2, v17

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_3
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory;

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionSavedHistoryLimit()I

    move-result v1

    invoke-direct {v0, v14, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;-><init>(Ljava/util/List;I)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    .line 145
    new-instance v0, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;-><init>(Ljava/util/List;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    .line 147
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v11

    const v2, 0x13da1

    .line 148
    new-array v3, v10, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v4, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v10

    aput-object v4, v3, v9

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v8, v2, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(ILjava/util/Map;)V

    .line 150
    new-instance v0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getExpiredDurationInMinutes()I

    move-result v1

    invoke-direct {v0, v1, v8}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;-><init>(ILcom/ironsource/mediationsdk/AdExpirationListener;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mExpiredAdsManager:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    .line 153
    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeFirstAuctionMs()J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadRewardedVideo(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->makeAuction()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/LWSProgRvManager;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHistory;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/LWSProgRvManager;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    return p0
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHandler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ironsource/mediationsdk/LWSProgRvManager;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/LWSProgRvManager;ILjava/util/Map;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V

    return-void
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/LWSProgRvManager;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/LWSProgRvManager;ILjava/util/Map;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(ILjava/util/Map;)V

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

    .line 717
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 718
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 719
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->shouldAddSmashToWaterfallRequest(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 722
    :cond_1
    new-instance v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAuctionResponseItemAsStringForReporting(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 786
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

    .line 789
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

.method private handleLoadFailure()V
    .locals 1

    .line 852
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    .line 853
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 854
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->loadError()V

    return-void
.end method

.method private loadRewardedVideo(J)V
    .locals 5

    .line 587
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->areAllSmashesCapped()Z

    move-result v0

    const v1, 0x13c69

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    const-string p1, "all smashes are capped"

    .line 588
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 589
    new-array p1, v4, [[Ljava/lang/Object;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p2, v3

    const v0, 0x13881

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    aput-object p2, p1, v3

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p2, v3

    const-string v0, "all smashes are capped"

    aput-object v0, p2, v2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 590
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V

    return-void

    .line 595
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->resetConfigurations(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 597
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;->storeWaterfallPerformance(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 601
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 604
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager$1;-><init>(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_2
    const-string p1, "auction fallback flow starting"

    .line 611
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->updateWaterfallToNonBidding()V

    .line 617
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "loadSmashes -  waterfall is empty"

    .line 618
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 619
    new-array p1, v4, [[Ljava/lang/Object;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p2, v3

    const v0, 0x13884

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    aput-object p2, p1, v3

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p2, v3

    const-string v0, "waterfall is empty"

    aput-object v0, p2, v2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 620
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V

    return-void

    :cond_3
    const/16 p1, 0x3e8

    .line 625
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    .line 627
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmashes()V

    :goto_0
    return-void
.end method

.method private loadSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->loadVideo(Ljava/lang/String;)V

    return-void
.end method

.method private loadSmashes()V
    .locals 7

    .line 798
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "loadSmashes -  waterfall is empty"

    .line 799
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    const v0, 0x13c69

    const/4 v2, 0x2

    .line 800
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    const v5, 0x13884

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v1

    const-string v1, "waterfall is empty"

    aput-object v1, v2, v6

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 801
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V

    return-void

    .line 805
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v0, 0x0

    .line 810
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mMaxSmashesToLoad:I

    if-ge v0, v2, :cond_4

    .line 811
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 812
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getIsLoadCandidate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 814
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAdvancedLoading:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advanced Loading: Starting to load bidder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". No other instances will be loaded at the same time."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 822
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 823
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    goto :goto_1

    .line 826
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as a non bidder is being loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 828
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    goto :goto_1

    .line 833
    :cond_2
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

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

    .line 914
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logApi(Ljava/lang/String;)V
    .locals 3

    .line 918
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logErrorInternal(Ljava/lang/String;)V
    .locals 4

    .line 909
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LWSProgRvManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V
    .locals 3

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 899
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LWSProgRvManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 4

    .line 904
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LWSProgRvManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private makeAuction()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq v1, v2, :cond_0

    .line 654
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    .line 655
    new-instance v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;-><init>(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 703
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportAvailabilityIfNeeded(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 866
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(ZLjava/util/Map;)V

    return-void
.end method

.method private reportAvailabilityIfNeeded(ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 871
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_3

    .line 872
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    .line 873
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastChangedAvailabilityTime:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    .line 874
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastChangedAvailabilityTime:J

    if-nez p2, :cond_1

    .line 876
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v3, "duration"

    .line 878
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    const/16 v1, 0x457

    goto :goto_0

    :cond_2
    const/16 v1, 0x458

    .line 879
    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 880
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 882
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sendMediationEvent(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 935
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;ZZ)V

    return-void
.end method

.method private sendMediationEvent(ILjava/util/Map;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .line 947
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 948
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "programmatic"

    const/4 v2, 0x2

    .line 950
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 951
    iget-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "auctionId"

    .line 952
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :cond_0
    iget-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericParams:Lorg/json/JSONObject;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-virtual {p4}, Lorg/json/JSONObject;->length()I

    move-result p4

    if-lez p4, :cond_1

    const-string p4, "genericParams"

    .line 956
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 959
    iget-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "placement"

    .line 960
    iget-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    :cond_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 964
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p3

    iget p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionTrial:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    invoke-virtual {p3, v0, p4, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    :cond_3
    const-string p3, "sessionDepth"

    .line 967
    iget p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 970
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 971
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 974
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LWSProgRvManager: RV sendMediationEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p3, p4, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 977
    :cond_4
    :goto_0
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 978
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 939
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;ZZ)V

    return-void
.end method

.method private sendMediationEventWithPlacement(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 943
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;ZZ)V

    return-void
.end method

.method private sendMediationEventWithoutAuctionId(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 931
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;ZZ)V

    return-void
.end method

.method private sendMediationEventWithoutAuctionId(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 927
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;ZZ)V

    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V
    .locals 2

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 862
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    return-void
.end method

.method private shouldAddAuctionParams(I)Z
    .locals 1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x516

    if-eq p1, v0, :cond_1

    const/16 v0, 0x515

    if-eq p1, v0, :cond_1

    const/16 v0, 0x517

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

.method private shouldNotifyNetworkAvailabilityChanged(Z)Z
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1060
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->isRewardedVideoAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 1064
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showVideo(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    const-string v0, "showVideo()"

    .line 633
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)V

    .line 637
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setCappedPerSession()V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rewarded video is now session capped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 642
    :cond_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementRvShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x578

    .line 644
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(I)V

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mExpiredAdsManager:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->cancelExpirationTimer()V

    .line 647
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->showVideo(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method private updateWaterfall(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 730
    iget-object v0, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 731
    iget-object v0, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 733
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 736
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v9, v14}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->getAuctionResponseItemAsStringForReporting(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget-object v0, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    if-eqz v1, :cond_1

    .line 745
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    iget-object v2, v1, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/AdapterRepository;->createAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 747
    new-instance v15, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    iget v4, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    iget v7, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionTrial:I

    iget-object v8, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;-><init>(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/LWSRvManagerListener;Lcom/ironsource/mediationsdk/AbstractAdapter;ILjava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 748
    invoke-virtual {v15, v13}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setIsLoadCandidate(Z)V

    .line 749
    invoke-virtual {v10, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v0, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v0, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 757
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWaterfall() - could not find matching smash for auction response item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 761
    :cond_2
    iget-object v0, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->updateWaterFall(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V

    .line 762
    iget-object v0, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->areWaterFallsOverMaximum()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const v0, 0x13da6

    .line 763
    new-array v3, v13, [[Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waterfalls hold too many with size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getNumberOfWaterfalls()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v9, v0, v3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 766
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWaterfall() - next waterfall is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-direct {v9, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Updated waterfall is empty"

    .line 771
    invoke-direct {v9, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x51f

    .line 774
    new-array v3, v13, [[Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "ext1"

    aput-object v4, v1, v2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v13

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    return-void
.end method

.method private updateWaterfallToNonBidding()V
    .locals 4

    .line 709
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->extractNonBidderProvidersFromWaterfall()Ljava/util/List;

    move-result-object v0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fallback_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->updateWaterfall(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public isRewardedVideoAvailable()Z
    .locals 3

    .line 245
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 255
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isReadyToShow()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method public onAdExpired()V
    .locals 6

    .line 985
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v0, 0x2

    .line 986
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x421

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, v0, v4

    const-string v2, "loaded ads are expired"

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(ZLjava/util/Map;)V

    const-wide/16 v0, 0x0

    .line 987
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadRewardedVideo(J)V

    return-void
.end method

.method public onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 5

    .line 551
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

    .line 552
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 555
    iput p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionTrial:I

    .line 556
    iput-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    const/4 p3, 0x0

    .line 557
    iput-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericParams:Lorg/json/JSONObject;

    .line 560
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->updateWaterfallToNonBidding()V

    .line 562
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 p4, 0x515

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    .line 563
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

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    .line 565
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

    invoke-static {p3}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 568
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmashes()V

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

    const-string v0, "makeAuction(): success"

    .line 521
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 522
    iput-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 524
    iput p6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionTrial:I

    .line 525
    iput-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericParams:Lorg/json/JSONObject;

    const-string p3, ""

    .line 526
    iput-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    .line 529
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x2

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const p3, 0x157c2

    .line 530
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

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p9

    invoke-direct {p0, p3, p9}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 534
    :cond_0
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, p5, p3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->updateConfigurations(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 537
    iget-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->adUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    sget-object p5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p3, p5}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->isAdUnitCapped(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p1, 0x517

    .line 539
    new-array p3, p6, [[Ljava/lang/Object;

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "auctionId"

    aput-object p5, p4, v0

    aput-object p2, p4, p6

    aput-object p4, p3, v0

    invoke-static {p3}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 540
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V

    goto :goto_0

    .line 542
    :cond_1
    iget-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericParams:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->updateWaterfall(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/16 p1, 0x516

    .line 543
    new-array p2, p6, [[Ljava/lang/Object;

    new-array p3, p4, [Ljava/lang/Object;

    const-string p4, "duration"

    aput-object p4, p3, v0

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, p6

    aput-object p3, p2, v0

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 544
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmashes()V

    :goto_0
    return-void
.end method

.method public onLoadError(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 10

    .line 315
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadError mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-ne v2, v3, :cond_0

    goto/16 :goto_7

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq v2, v3, :cond_1

    .line 331
    monitor-exit v1

    return-void

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 339
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getIsLoadCandidate()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 340
    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAdvancedLoading:Z

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v3, :cond_4

    if-eqz v6, :cond_3

    goto :goto_1

    .line 355
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Advanced Loading: Starting to load bidder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". No other instances will be loaded at the same time."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 356
    invoke-direct {p0, v8}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 357
    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    const-string p1, "a non bidder is being loaded"

    goto :goto_2

    :cond_5
    const-string p1, "a non bidder was already loaded successfully"

    .line 349
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 351
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    goto :goto_5

    .line 361
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 363
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAdvancedLoading:Z

    if-eqz v8, :cond_9

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mMaxSmashesToLoad:I

    if-ge v7, v8, :cond_9

    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 377
    :cond_7
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isLoadingInProgress()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    .line 379
    :cond_8
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isReadyToShow()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 384
    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    if-nez v6, :cond_b

    if-nez v3, :cond_b

    const-string p1, "onLoadError(): No other available smashes"

    .line 385
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 386
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    if-nez p1, :cond_a

    .line 387
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 389
    :cond_a
    sget-object p1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    .line 390
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->loadError()V

    .line 392
    :cond_b
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 397
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    goto :goto_6

    :cond_c
    return-void

    .line 322
    :cond_d
    :goto_7
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadError was invoked with auctionId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and the current id is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    const v0, 0x13da3

    const/4 v2, 0x2

    .line 323
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v5

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v6, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadError wrong auction ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object v2, v3, v4

    invoke-virtual {p1, v0, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 324
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 392
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :goto_8
    nop

    goto :goto_8
.end method

.method public onLoadSuccess(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 12

    .line 273
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSuccess mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v1, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-ne v1, v2, :cond_4

    .line 287
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    .line 288
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionStartTime:J

    const/4 v8, 0x0

    sub-long/2addr v1, v6

    const/16 v6, 0x3eb

    .line 289
    new-array v7, v5, [[Ljava/lang/Object;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "duration"

    aput-object v9, v8, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v5

    aput-object v8, v7, v3

    invoke-static {v7}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 290
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mExpiredAdsManager:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->startExpirationTimer(J)V

    .line 292
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v11, :cond_1

    .line 296
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v11, v3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->setAdInfo(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 298
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v1, v11, v2, v3}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportLoadSuccess(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 299
    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v9

    iget-object v10, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual/range {v6 .. v11}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportAuctionLose(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    goto/16 :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "Smash is null"

    .line 303
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoadSuccess winner instance "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " missing from waterfall. auctionId: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and the current id is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logErrorInternal(Ljava/lang/String;)V

    const p1, 0x13da5

    const/4 v2, 0x3

    .line 304
    new-array v2, v2, [[Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v3

    const/16 v7, 0x3f2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object v6, v2, v3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "reason"

    aput-object v7, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded missing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object v6, v2, v5

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "ext1"

    aput-object v7, v6, v3

    aput-object v1, v6, v5

    aput-object v6, v2, v4

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 308
    :cond_3
    :goto_1
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 310
    :cond_4
    monitor-exit v0

    return-void

    .line 278
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSuccess was invoked with auctionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and the current id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    const v1, 0x13da3

    .line 279
    new-array v2, v4, [[Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object v6, v2, v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoadSuccess wrong auction ID "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    aput-object v4, v2, v5

    invoke-virtual {p1, v1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 280
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onLoadTriggered()V
    .locals 2

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadTriggered: RV load was triggered in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 576
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadRewardedVideo(J)V

    return-void
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .locals 4

    .line 1002
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    if-nez v0, :cond_0

    return-void

    .line 1006
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Availability Changed To: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1008
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->shouldNotifyNetworkAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    const-string v0, "onRewardedVideoAdClicked"

    .line 508
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 9

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdClosed, mediation state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    .line 463
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    .line 464
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 465
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 469
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x4b3

    .line 476
    new-array v4, v3, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ext1"

    aput-object v6, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "otherRVAvailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "true|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, "false"

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    aput-object v5, v4, v0

    .line 476
    invoke-virtual {p1, v1, v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 479
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getShowingSmash()Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 480
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->setShowingSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    .line 482
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, v1, :cond_4

    .line 483
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    :cond_4
    return-void
.end method

.method public onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 1

    const-string v0, "onRewardedVideoAdEnded"

    .line 496
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdEnded()V

    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 9

    .line 403
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->setShowingSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    .line 404
    iget v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    const-string v0, "onRewardedVideoAdOpened"

    .line 405
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 407
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_0

    .line 411
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->setAdInfo(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 413
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportImpressionDataToPublisher(Lcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 420
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Smash is null"

    .line 421
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRewardedVideoAdOpened showing instance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " missing from waterfall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logErrorInternal(Ljava/lang/String;)V

    const v3, 0x13da5

    const/4 v4, 0x3

    .line 422
    new-array v4, v4, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v2

    const/16 v7, 0x3f3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v6, v4, v2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "reason"

    aput-object v7, v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing missing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v6, v4, v1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "ext1"

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;)V

    .line 426
    :cond_2
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 427
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 431
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showStart()V

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    const-string v0, "onRewardedVideoAdRewarded"

    .line 502
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 7

    .line 436
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->setAdInfo(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    const/16 v1, 0x459

    const/4 v2, 0x2

    .line 447
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    aput-object v4, v3, v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(ILjava/util/Map;)V

    .line 449
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 450
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, p2, :cond_1

    .line 454
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 456
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showError()V

    return-void
.end method

.method public onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 1

    const-string v0, "onRewardedVideoAdStarted"

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdStarted()V

    return-void
.end method

.method public shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 4

    .line 1023
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LWSProgRvManager Should Track Network State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1025
    :try_start_0
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    .line 1027
    iget-boolean p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    if-eqz p2, :cond_1

    .line 1028
    iget-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_0

    .line 1029
    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiverListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 1032
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 1034
    :cond_1
    iget-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz p2, :cond_2

    .line 1035
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1039
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an error from receiver with message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 10

    .line 162
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x459

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "showRewardedVideo error: empty default placement"

    .line 166
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 167
    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x3fd

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    iget-object v9, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 169
    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object v7, v5, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    aput-object v2, v5, v4

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(ILjava/util/Map;ZZ)V

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showRewardedVideo("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logApi(Ljava/lang/String;)V

    const/16 v5, 0x44c

    .line 175
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(I)V

    .line 177
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    if-eqz v5, :cond_1

    const-string p1, "showRewardedVideo error: can\'t show ad while an ad is already showing"

    .line 179
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 180
    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x3fe

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    iget-object v9, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 182
    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object v7, v5, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    aput-object v2, v5, v4

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(ILjava/util/Map;)V

    .line 183
    monitor-exit v0

    return-void

    .line 186
    :cond_1
    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v6, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq v5, v6, :cond_2

    const-string p1, "showRewardedVideo error: show called while no ads are available"

    .line 188
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 189
    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x3ff

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    iget-object v9, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 191
    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object v7, v5, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    aput-object v2, v5, v4

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(ILjava/util/Map;)V

    .line 192
    monitor-exit v0

    return-void

    .line 195
    :cond_2
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showRewardedVideo error: placement "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is capped"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 198
    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x20c

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    iget-object v9, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 200
    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object v7, v5, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    aput-object v2, v5, v4

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(ILjava/util/Map;)V

    .line 201
    monitor-exit v0

    return-void

    .line 204
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 207
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isReadyToShow()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 208
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    .line 209
    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->reportShowChance(Z)V

    .line 211
    sget-object v3, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    goto :goto_1

    .line 214
    :cond_4
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getExpirationTimestamp()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getExpirationTimestamp()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :cond_5
    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->reportShowChance(Z)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    const-string p1, "showRewardedVideo(): No ads to show"

    .line 222
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v3

    const-string v4, "Rewarded Video"

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLWSWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 224
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "errorCode"

    const/16 v5, 0x1fd

    .line 225
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "reason"

    .line 226
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "ext1"

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(ILjava/util/Map;)V

    .line 231
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showError()V

    .line 232
    monitor-exit v0

    return-void

    .line 234
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_9

    .line 237
    invoke-direct {p0, v6, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->showVideo(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void

    :cond_9
    return-void

    .line 234
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :goto_3
    nop

    goto :goto_3
.end method
