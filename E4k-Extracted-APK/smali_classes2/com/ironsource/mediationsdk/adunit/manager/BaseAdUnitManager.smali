.class public abstract Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;
.super Ljava/lang/Object;
.source "BaseAdUnitManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;
.implements Lcom/ironsource/mediationsdk/AuctionEventListener;
.implements Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;
.implements Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;
.implements Lcom/ironsource/environment/NetworkStateReceiverListener;
.implements Lcom/ironsource/mediationsdk/AdExpirationListener;
.implements Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolderEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
        "*>;Adapter:",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
        "*+",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;",
        "Lcom/ironsource/mediationsdk/AuctionEventListener;",
        "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;",
        "Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;",
        "Lcom/ironsource/environment/NetworkStateReceiverListener;",
        "Lcom/ironsource/mediationsdk/AdExpirationListener;",
        "Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolderEventListener;"
    }
.end annotation


# instance fields
.field private impressionDataListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

.field protected mAuctionFallback:Ljava/lang/String;

.field protected mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

.field protected mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

.field protected mAuctionResponseGenericParam:Lorg/json/JSONObject;

.field protected mAuctionTrial:I

.field protected mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

.field protected mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

.field protected mExpiredAdsManager:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

.field protected mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

.field protected mInitDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

.field private mLastChangedAvailabilityTime:J

.field private mLastReportedAvailabilityState:Ljava/lang/Boolean;

.field protected mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

.field protected mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

.field protected mLoadingModeManager:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;

.field protected mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

.field protected mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field protected mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

.field protected mShouldTrackNetworkState:Z

.field protected mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

.field protected final mStateLock:Ljava/lang/Object;

.field protected mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder<",
            "TSmash;>;"
        }
    .end annotation
.end field

.field protected mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;",
            ">;"
        }
    .end annotation
.end field

.field protected mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;
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
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;Ljava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;",
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionFallback:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mShouldTrackNetworkState:Z

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastChangedAvailabilityTime:J

    .line 1022
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->impressionDataListeners:Ljava/util/Set;

    .line 121
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", loading mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;-><init>()V

    .line 126
    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    .line 128
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    .line 129
    new-instance p3, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->MEDIATION:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    invoke-direct {p3, v1, v2, p0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;)V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    .line 130
    new-instance p3, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    .line 131
    new-instance p3, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v1

    invoke-direct {p3, v1, p0}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;)V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLoadingModeManager:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;

    .line 133
    sget-object p3, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->NONE:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, p3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    .line 135
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->impressionDataListeners:Ljava/util/Set;

    .line 136
    new-instance p2, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getLoadWhileShowSupportArray()Ljava/util/ArrayList;

    move-result-object p3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToDeleteOldWaterfallAfterAuction()I

    move-result v1

    invoke-direct {p2, p3, v1, p0}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;-><init>(Ljava/util/List;ILcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolderEventListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    .line 138
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->init:Lcom/ironsource/mediationsdk/adunit/events/Init;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/events/Init;->started()V

    .line 141
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x0

    .line 143
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 146
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getDelayLoadFailure()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->setDelayLoadFailureNotificationInSeconds(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;I)V

    .line 149
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    .line 151
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->isAuctionEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 152
    new-instance p2, Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    invoke-direct {p2, p3, v1, p0}, Lcom/ironsource/mediationsdk/AuctionHandler;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    .line 156
    :cond_0
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getProviderList()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionSavedHistoryLimit()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->initAuctionHistory(Ljava/util/List;I)V

    .line 159
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->initSessionCapping()V

    .line 162
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->initNetworks()V

    .line 165
    new-instance p2, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-direct {p2}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;-><init>()V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mInitDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    .line 168
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    .line 171
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->init:Lcom/ironsource/mediationsdk/adunit/events/Init;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/Init;->ended(J)V

    .line 174
    new-instance p2, Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdExpirationInMinutes()I

    move-result p1

    invoke-direct {p2, p1, p0}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;-><init>(ILcom/ironsource/mediationsdk/AdExpirationListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mExpiredAdsManager:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    .line 177
    new-instance p1, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    invoke-direct {p1}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAdUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    .line 180
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isAutomaticMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "first automatic load"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->loadAd()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->performAuction()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->shouldInstanceBeAddedToWaterfallRequest(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;ILjava/lang/String;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->handleLoadFailed(ILjava/lang/String;Z)V

    return-void
.end method

.method private addSmashToWaterfall(Lcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            "Ljava/lang/String;",
            ")TSmash;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 546
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/ironsource/mediationsdk/AdapterRepository;->getNetworkAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    .line 548
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 553
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v1

    .line 554
    invoke-virtual {p0, v0, v2, v1, p2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createSmash(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    move-result-object p2

    .line 555
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    goto :goto_0

    .line 558
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addSmashToWaterfall - could not load ad adapter for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 559
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 560
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->adAdapterNotAvailable(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not find matching provider settings for auction response item - item = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 565
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 566
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->providerSettingsMissing(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private extractNonBidderProvidersFromWaterfall()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 468
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getProviderList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 470
    new-instance v3, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;-><init>(Ljava/lang/String;I)V

    .line 473
    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    .line 474
    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 475
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->shouldInstanceBeAddedToWaterfallRequest(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 481
    :cond_1
    new-instance v2, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private handleLoadFailed(ILjava/lang/String;Z)V
    .locals 3

    .line 648
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    .line 651
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isManualMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 656
    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {p3}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v0

    .line 657
    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/ironsource/mediationsdk/adunit/events/Load;->failedWithReason(JILjava/lang/String;)V

    .line 659
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 662
    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->loadFailed(ILjava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 664
    invoke-virtual {p0, p1, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->reportAvailabilityIfNeeded(ZZ)V

    .line 668
    :goto_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLoadingModeManager:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->loadError()V

    return-void
.end method

.method private initAuctionHistory(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;I)V"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 411
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_0
    new-instance p1, Lcom/ironsource/mediationsdk/AuctionHistory;

    invoke-direct {p1, v0, p2}, Lcom/ironsource/mediationsdk/AuctionHistory;-><init>(Ljava/util/List;I)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    return-void
.end method

.method private initNetworks()V
    .locals 6

    .line 429
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getProviderList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 432
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isIronSource()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    .line 435
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "userId"

    .line 436
    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->getAdUnitSettings(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utilities/IronsourceJsonUtilities;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 438
    new-instance v3, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 441
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v2

    iget-object v5, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/ironsource/mediationsdk/AdapterRepository;->getNetworkAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 444
    :try_start_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v3, v2, v4}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 447
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initNetworks - exception while calling networkAdapter.init - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->networkAdapterNotAvailable(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    const-string v2, "initNetworks - could not load network adapter"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->networkAdapterNotAvailable(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private initSessionCapping()V
    .locals 6

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getProviderList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 421
    new-instance v3, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_0
    new-instance v1, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-direct {v1, v0}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    return-void
.end method

.method private loadSmash(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSmash;)V"
        }
    .end annotation

    .line 577
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->loadAd(Ljava/lang/String;)V

    return-void
.end method

.method private loadSmashes()V
    .locals 2

    .line 584
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->prepareSmashesToLoad()Ljava/util/ArrayList;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    .line 586
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->loadSmash(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeAuction()V
    .locals 5

    .line 686
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->AUCTION:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    if-ne v1, v2, :cond_0

    .line 690
    monitor-exit v0

    return-void

    .line 694
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->AUCTION:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    .line 695
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mInitDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v0

    .line 701
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeFirstAuctionMs()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 705
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$1;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;)V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 713
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->performAuction()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 695
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private performAuction()V
    .locals 2

    .line 718
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 720
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private prepareSmashesToLoad()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TSmash;>;"
        }
    .end annotation

    .line 591
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaterfall.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 596
    :goto_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getMaxSmashesToLoad()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 597
    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    .line 600
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isReadyToLoad()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 602
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isLoadingInProgress()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 609
    :cond_0
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isBidder()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_1

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advanced Loading: Starting to load bidder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No other instances will be loaded at the same time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 617
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 621
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as a non bidder is being loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 622
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 623
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    goto :goto_3

    .line 628
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 603
    :cond_3
    :goto_1
    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smash = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 633
    :cond_4
    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v7, "smash %s is not ready to load"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    const/16 v1, 0x1fd

    const-string v2, "Mediation No fill"

    .line 641
    invoke-direct {p0, v1, v2, v5}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->handleLoadFailed(ILjava/lang/String;Z)V

    :cond_6
    return-object v0
.end method

.method private resetConfigurations()V
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAdUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->updateAdUnitCapping(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    return-void
.end method

.method private shouldAddAuctionParams(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)Z
    .locals 1

    .line 974
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_FAILED_WITH_REASON:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_UNIT_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

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

.method private shouldInstanceBeAddedToWaterfallRequest(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z
    .locals 5

    .line 488
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->getNetworkAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    .line 489
    instance-of v1, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    .line 490
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v2

    .line 491
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;

    .line 493
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;->getLoadWhileShowSupportedState(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    move-result-object p1

    .line 490
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->shouldAddSmashToWaterfallRequest(Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shouldNotifyNetworkAvailabilityChanged(Z)Z
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 358
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->isAdReady()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 363
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateConfigurations(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "isAdUnitCapped"

    .line 1065
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1068
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAdUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->updateAdUnitCapping(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    return-void
.end method

.method private updateWaterfall(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 498
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

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    .line 505
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 508
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 511
    invoke-direct {p0, v3, p2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->addSmashToWaterfall(Lcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 513
    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceType()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createWaterfallStringFromAuctionItem(Lcom/ironsource/mediationsdk/AuctionResponseItem;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, ","

    .line 521
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v2

    invoke-virtual {p1, v2, v1, p2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->updateWaterFall(Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateWaterfall() - next waterfall is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 529
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateWaterfallToNonBidding()V
    .locals 2

    .line 458
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->extractNonBidderProvidersFromWaterfall()Ljava/util/List;

    move-result-object v0

    .line 463
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->getAuctionFallbackId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->updateWaterfall(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .locals 1
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1025
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->impressionDataListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected compareStateAndSetIfTrue(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)Z
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    if-ne v1, p1, :cond_0

    .line 284
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set state from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 287
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 289
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

.method protected abstract createAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ")TAdapter;"
        }
    .end annotation
.end method

.method protected createLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->name()Ljava/lang/String;

    move-result-object v0

    .line 1116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createSmash(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "TAdapter;I",
            "Ljava/lang/String;",
            ")TSmash;"
        }
    .end annotation
.end method

.method protected createWaterfallStringFromAuctionItem(Lcom/ironsource/mediationsdk/AuctionResponseItem;I)Ljava/lang/String;
    .locals 3

    const-string v0, "%s%s"

    const/4 v1, 0x2

    .line 1079
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAdUnitAsShortString(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;
    .locals 1

    .line 1089
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "RV"

    return-object p1

    .line 1094
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "IS"

    return-object p1

    .line 1099
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BN"

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method protected getAdUnitSettings(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_1

    .line 675
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 677
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad unit not supported - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 678
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method protected getAuctionFallbackId()Ljava/lang/String;
    .locals 3

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fallback_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentPlacementName()Ljava/lang/String;
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventsAdditionalDataMap(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 984
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 986
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "programmatic"

    const/4 v2, 0x1

    .line 989
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auctionId"

    .line 993
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "genericParams"

    .line 998
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v1

    const-string v2, "sessionDepth"

    .line 1003
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->shouldAddAuctionParams(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "auctionTrials"

    .line 1007
    iget v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionTrial:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionFallback:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "auctionFallback"

    .line 1010
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionFallback:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected abstract isAdReady()Z
.end method

.method protected isReadyToShow()Z
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

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

    .line 297
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isWaitingForAuctionResponse()Z
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->AUCTION:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

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

    .line 309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isWaitingForLoadResponse()Z
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->LOADING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

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

    .line 303
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadAd()V
    .locals 5

    .line 189
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isAutomaticMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->areAllSmashesCapped()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "all smashes are capped"

    .line 196
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const v3, 0x13881

    .line 197
    invoke-direct {p0, v3, v1, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->handleLoadFailed(ILjava/lang/String;Z)V

    .line 198
    monitor-exit v0

    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    .line 203
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v3, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    if-ne v1, v3, :cond_2

    const-string v1, "load cannot be invoked while showing an ad"

    .line 205
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 206
    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/mediationsdk/adunit/errors/AdUnitErrorsWrapper;->loadDuringShow(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isManualMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onAvailabilityChanged(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 212
    :goto_0
    monitor-exit v0

    return-void

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-eq v1, v3, :cond_5

    .line 217
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v3, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v3, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    if-ne v1, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->hasPendingInvocation(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    :cond_4
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "load is already in progress"

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 219
    monitor-exit v0

    return-void

    .line 223
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    .line 226
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->resetConfigurations()V

    .line 229
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-ne v1, v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 230
    :goto_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/adunit/events/Load;->loadAd(Z)V

    .line 232
    new-instance v1, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    .line 234
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->isAuctionEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 235
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 237
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AuctionHistory;->storeWaterfallPerformance(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 238
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 241
    :cond_7
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->makeAuction()V

    goto :goto_2

    .line 243
    :cond_8
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->LOADING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    .line 245
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->isAuctionEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 250
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->updateWaterfallToNonBidding()V

    .line 251
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->loadSmashes()V

    :cond_9
    return-void

    :catchall_0
    move-exception v1

    .line 245
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public maxWaterfallsReached(I)V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waterfalls hold too many with size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->waterfallOverHead(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClicked(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
            "*>;)V"
        }
    .end annotation

    .line 965
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onClicked(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public onAdExpired()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isAutomaticMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 380
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->reportAvailabilityIfNeeded(ZZ)V

    .line 383
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->loadAd()V

    :cond_0
    return-void
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
            "*>;J)V"
        }
    .end annotation

    .line 932
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 933
    iget-object p4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    monitor-enter p4

    .line 934
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->AUCTION:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->isWaitingForLoadResponse()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->isReadyToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected load failed for state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " smash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", error - "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedLoadFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 950
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->prepareSmashesToLoad()Ljava/util/ArrayList;

    move-result-object p3

    .line 954
    :goto_1
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    .line 959
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->loadSmash(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;)V

    goto :goto_2

    :cond_3
    return-void

    .line 938
    :cond_4
    :goto_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAdLoadFailed was invoked with state ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " auctionId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and the current id is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 939
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 940
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedLoadFailed(Ljava/lang/String;)V

    .line 941
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    .line 954
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :goto_4
    nop

    goto :goto_4
.end method

.method public onAdLoadSuccess(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
            "*>;J)V"
        }
    .end annotation

    .line 869
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object p3

    if-eq p2, p3, :cond_0

    .line 873
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLoadSuccess was invoked with state = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " auctionId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and the current id is "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 874
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 875
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedLoadSuccess(Ljava/lang/String;)V

    return-void

    .line 880
    :cond_0
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->LOADING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object p3, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, p2, p3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->compareStateAndSetIfTrue(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 885
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v1

    .line 886
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p2

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p2, v3, :cond_1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object p2

    sget-object v3, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-ne p2, v3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 887
    :goto_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {v3, v1, v2, p2}, Lcom/ironsource/mediationsdk/adunit/events/Load;->success(JZ)V

    .line 890
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isAutomaticMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 891
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mExpiredAdsManager:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->startExpirationTimer(J)V

    .line 895
    :cond_2
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->isAuctionEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 896
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v6, :cond_4

    .line 899
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v6, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->setAdInfo(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 901
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceType()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {p2, v6, v1, v2}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportLoadSuccess(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 903
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 904
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    .line 905
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 907
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceType()I

    move-result v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportAuctionLose(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    .line 909
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    const-string p2, "Smash is null"

    .line 910
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "winner instance missing from waterfall - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 912
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3, v1, p2}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->notificationError(ILjava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isManualMode()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 918
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onLoadSuccess(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    goto :goto_4

    .line 920
    :cond_7
    invoke-virtual {p0, v0, p3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->reportAvailabilityIfNeeded(ZZ)V

    goto :goto_4

    .line 923
    :cond_8
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    const-string v1, "unexpected load success for smash - %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedLoadSuccess(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 3

    .line 840
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->isWaitingForAuctionResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
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

    .line 844
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->getAdUnitAsShortString(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 847
    iput p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionTrial:I

    .line 848
    iput-object p4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionFallback:Ljava/lang/String;

    .line 849
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    .line 852
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->updateWaterfallToNonBidding()V

    .line 855
    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

    invoke-virtual {p3, p5, p6, p1, p2}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->failed(JILjava/lang/String;)V

    .line 858
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->LOADING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    .line 859
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->loadSmashes()V

    goto :goto_0

    .line 861
    :cond_0
    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "unexpected auction fail - error = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedAuctionFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAuctionSuccess(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/mediationsdk/AuctionResponseItem;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V
    .locals 2
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

    .line 792
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->isWaitingForAuctionResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 797
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionFallback:Ljava/lang/String;

    .line 799
    iput p6, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionTrial:I

    .line 800
    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 801
    iput-object p4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    .line 804
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 805
    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p3, p9, p10}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->auctionSuccessfulRecoveryError(ILjava/lang/String;)V

    .line 809
    :cond_0
    invoke-direct {p0, p5}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->updateConfigurations(Lorg/json/JSONObject;)V

    .line 812
    iget-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAdUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->isAdUnitCapped(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 814
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->adUnitCapped(Ljava/lang/String;)V

    const/16 p1, 0x20d

    const-string p2, "Ad unit is capped"

    const/4 p3, 0x0

    .line 817
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->handleLoadFailed(ILjava/lang/String;Z)V

    goto :goto_0

    .line 820
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->updateWaterfall(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 823
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

    invoke-virtual {p2, p7, p8}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->success(J)V

    .line 826
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->responseWaterfall(Ljava/lang/String;)V

    .line 829
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->LOADING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    .line 830
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->loadSmashes()V

    goto :goto_0

    .line 834
    :cond_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected auction success for auctionId - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedAuctionSuccess(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onLoadTriggered()V
    .locals 2

    .line 402
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->loadAd()V

    return-void
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .locals 3

    .line 390
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mShouldTrackNetworkState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isManualMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network availability changed to - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->shouldNotifyNetworkAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->reportAvailabilityIfNeeded(ZZ)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public removeAllImpressionDataListeners()V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->impressionDataListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .locals 1
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1029
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->impressionDataListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected reportAvailabilityIfNeeded(ZZ)V
    .locals 6

    .line 322
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 326
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    .line 329
    iget-wide v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastChangedAvailabilityTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastChangedAvailabilityTime:J

    const/4 v5, 0x0

    sub-long v3, v1, v3

    .line 332
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mLastChangedAvailabilityTime:J

    .line 335
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {v1, p1, v3, v4, p2}, Lcom/ironsource/mediationsdk/adunit/events/Load;->availabilityChanged(ZJZ)V

    .line 338
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onAvailabilityChanged(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 340
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected reportImpressionDataToPublisher(Lcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1041
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1043
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->impressionDataListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    .line 1044
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImpressionSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 1045
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;->onImpressionSuccess(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    goto :goto_0

    .line 1050
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "no auctionResponseItem or listener"

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    return-void
.end method

.method protected setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V
    .locals 3

    .line 272
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    .line 275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shouldTrackNetworkState(Z)V
    .locals 3

    .line 256
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 257
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mShouldTrackNetworkState:Z

    return-void
.end method
