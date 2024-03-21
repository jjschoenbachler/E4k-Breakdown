.class public Lcom/ironsource/mediationsdk/RewardedVideoSmash;
.super Lcom/ironsource/mediationsdk/AbstractSmash;
.source "RewardedVideoSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashApi;


# instance fields
.field private final REQUEST_URL_KEY:Ljava/lang/String;

.field private mLoadStartTime:J

.field private mRequestUrl:Ljava/lang/String;

.field private mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

.field private mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

.field public mSessionDepth:I

.field private mShouldSendLoadEvents:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTimeout:I


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    const-string v0, "requestUrl"

    .line 40
    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->REQUEST_URL_KEY:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    .line 45
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    const-string v0, "maxAdsPerIteration"

    const/16 v1, 0x63

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMaxAdsPerIteration:I

    .line 46
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    const-string v0, "maxAdsPerSession"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMaxAdsPerSession:I

    .line 47
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    const-string v0, "maxAdsPerDay"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMaxAdsPerDay:I

    .line 48
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    const-string v0, "requestUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRequestUrl:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mShouldSendLoadEvents:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    iput p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mTimeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mShouldSendLoadEvents:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/RewardedVideoSmash;I[[Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendProviderEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 278
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendProviderEvent(I[[Ljava/lang/Object;)V
    .locals 7

    .line 284
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 288
    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 289
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 293
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RewardedVideoSmash logProviderEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 296
    :cond_0
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, p1, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 297
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method


# virtual methods
.method completeIteration()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mIterationShowCounter:I

    .line 58
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    return-void
.end method

.method public fetchRewardedVideo()V
    .locals 5

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->expirationTimestamp:Ljava/lang/Long;

    .line 123
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mShouldSendLoadEvents:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoadStartTime:J

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":fetchRewardedVideoForAutomaticLoad()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->fetchRewardedVideoForAutomaticLoad(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    :cond_1
    return-void
.end method

.method protected getAdUnitString()Ljava/lang/String;
    .locals 1

    const-string v0, "rewardedvideo"

    return-object v0
.end method

.method getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 110
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->startInitTimer()V

    .line 111
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mShouldSendLoadEvents:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoadStartTime:J

    .line 114
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    .line 115
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":initRewardedVideo()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 116
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    :cond_0
    return-void
.end method

.method public isRewardedVideoAvailable()Z
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":isRewardedVideoAvailable()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable(Lorg/json/JSONObject;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRewardedVideoAdClicked()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->fetchRewardedVideo()V

    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdRewarded()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdVisible()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdVisible(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onRewardedVideoAvailabilityChanged(Z)V
    .locals 8

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->stopInitTimer()V

    .line 194
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mShouldSendLoadEvents:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoadStartTime:J

    const/4 v0, 0x0

    sub-long/2addr v3, v5

    if-eqz p1, :cond_0

    const/16 v0, 0x3ea

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b0

    .line 196
    :goto_0
    new-array v5, v2, [[Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v6, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    aput-object v6, v5, v1

    invoke-direct {p0, v0, v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x4b7

    goto :goto_1

    :cond_2
    const/16 v0, 0x4b8

    .line 198
    :goto_1
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->sendProviderEvent(I)V

    .line 201
    :goto_2
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isMediationAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_3

    .line 202
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_4

    :cond_3
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v0, v1, :cond_7

    :cond_4
    if-eqz p1, :cond_5

    .line 203
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    if-eqz p1, :cond_6

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->adLoadSuccessTimeStamp:Ljava/lang/Long;

    .line 209
    :cond_6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    goto :goto_4

    .line 214
    :cond_7
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": state remains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " in smash, mediation remains unchanged"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_4

    .line 219
    :cond_8
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": is capped or exhausted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_9
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 191
    monitor-exit p0

    throw p1
.end method

.method public onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    return-void
.end method

.method public onRewardedVideoInitSuccess()V
    .locals 0

    return-void
.end method

.method public onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 9

    .line 261
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 262
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x422

    if-ne v2, v6, :cond_0

    const/16 v2, 0x4bd

    .line 263
    new-array v6, v5, [[Ljava/lang/Object;

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    aput-object v7, v6, v4

    new-array p1, v5, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, p1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v3

    aput-object p1, v6, v3

    invoke-direct {p0, v2, v6}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    const/16 v6, 0x421

    if-ne v2, v6, :cond_1

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->expirationTimestamp:Ljava/lang/Long;

    :cond_1
    const/16 v2, 0x4bc

    const/4 v6, 0x3

    .line 269
    new-array v6, v6, [[Ljava/lang/Object;

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    aput-object v7, v6, v4

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "reason"

    aput-object v8, v7, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v3

    aput-object v7, v6, v3

    new-array p1, v5, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, p1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v3

    aput-object p1, v6, v5

    invoke-direct {p0, v2, v6}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onRewardedVideoLoadSuccess()V
    .locals 0

    return-void
.end method

.method public setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    return-void
.end method

.method public showRewardedVideo()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":showRewardedVideo()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 137
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->preShow()V

    .line 138
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    :cond_0
    return-void
.end method

.method startInitTimer()V
    .locals 4

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->stopInitTimer()V

    .line 67
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mInitTimer:Ljava/util/Timer;

    .line 68
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mInitTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;-><init>(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    iget v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "startInitTimer"

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->logException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method startLoadTimer()V
    .locals 0

    return-void
.end method
