.class public Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;
.super Lcom/ironsource/mediationsdk/DemandOnlySmash;
.source "DemandOnlyBnSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

.field private mLoadStartTime:J

.field private mSettings:Lorg/json/JSONObject;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 3

    .line 53
    new-instance v0, Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {v0, p3, v1, v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-direct {p0, v0, p6}, Lcom/ironsource/mediationsdk/DemandOnlySmash;-><init>(Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 54
    iput-object p4, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    .line 55
    iput p5, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mLoadTimeoutSecs:I

    .line 56
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAppKey:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mUserId:Ljava/lang/String;

    .line 58
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mSettings:Lorg/json/JSONObject;

    .line 59
    iget-object p3, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p2, p4, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initBannerForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    return-object p0
.end method

.method private startTimeoutTimer()V
    .locals 2

    .line 207
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "start timer"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 208
    new-instance v0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash$1;-><init>(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->startTimer(Ljava/util/TimerTask;)V

    return-void
.end method


# virtual methods
.method public destroyBanner()V
    .locals 2

    .line 111
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "destroyBanner() mAdapter == null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "cannot destroy banner not loaded"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->stopTimer()V

    .line 118
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->destroyBanner(Lorg/json/JSONObject;)V

    :goto_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isMultipleInstances()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderEventData()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "providerAdapterVersion"

    .line 225
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "providerSDKVersion"

    .line 226
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spId"

    .line 229
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getSubProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "provider"

    .line 232
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getAdSourceNameForEvents()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isDemandOnly"

    const/4 v2, 0x1

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "programmatic"

    .line 238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "instanceType"

    const/4 v2, 0x2

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAuctionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "auctionId"

    .line 243
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAuctionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mGenericParams:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mGenericParams:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "genericParams"

    .line 247
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mGenericParams:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "dynamicDemandSource"

    .line 252
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 256
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProviderEventData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBanner state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 64
    new-array v0, v0, [Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->compareAndSetState([Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    .line 76
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "loadBanner - serverData is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 77
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mLoadStartTime:J

    sub-long v4, p1, p3

    .line 78
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p1, 0x26a

    const-string p2, "serverData==null"

    invoke-direct {v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;ZJ)V

    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v1, :cond_2

    .line 84
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "loadBanner - mAdapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 85
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mLoadStartTime:J

    sub-long v4, p1, p3

    .line 86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p1, 0x263

    const-string p2, "adapter==null"

    invoke-direct {v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;ZJ)V

    return-void

    .line 89
    :cond_2
    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    if-ne v0, v1, :cond_3

    .line 90
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mLoadStartTime:J

    .line 91
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->startTimeoutTimer()V

    .line 92
    iput-object p3, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAuctionId:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mGenericParams:Lorg/json/JSONObject;

    .line 94
    iput-object p5, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mBUrl:Ljava/util/List;

    .line 95
    iget-object p3, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAppKey:Ljava/lang/String;

    iget-object p5, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mUserId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mSettings:Lorg/json/JSONObject;

    invoke-virtual {p3, p4, p5, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initBannerForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    .line 96
    iget-object p3, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mSettings:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p4, p0, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadBannerBiddingForDemandOnly(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_3
    sget-object p1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    if-ne v0, p1, :cond_4

    .line 100
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x26b

    const-string p3, "load already in progress"

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 102
    :cond_4
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x26c

    const-string p3, "load while show"

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 104
    :goto_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mLoadStartTime:J

    sub-long v4, p1, p3

    .line 105
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    const/4 v3, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;ZJ)V

    :goto_2
    return-void

    .line 68
    :cond_5
    :goto_3
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "loadBanner - bannerLayout is null or destroyed"

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-nez p1, :cond_6

    const-string p1, "banner is null"

    goto :goto_4

    :cond_6
    const-string p1, "banner is destroyed"

    .line 70
    :goto_4
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-wide p4, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mLoadStartTime:J

    sub-long v4, p2, p4

    .line 71
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x262

    invoke-direct {v1, p2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;ZJ)V

    return-void
.end method

.method public onBannerAdClicked()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdClicked(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    :cond_0
    return-void
.end method

.method public onBannerAdLeftApplication()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    :cond_0
    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 7

    .line 150
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->stopTimer()V

    .line 153
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x25e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mLoadStartTime:J

    sub-long v5, v0, v2

    .line 156
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    move-object v2, p1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;ZJ)V

    .line 158
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->setState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)V

    :cond_2
    return-void
.end method

.method public onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    .line 139
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdLoaded(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->stopTimer()V

    :cond_1
    return-void
.end method

.method public onBannerAdScreenDismissed()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    :cond_0
    return-void
.end method

.method public onBannerAdScreenPresented()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    :cond_0
    return-void
.end method

.method public onBannerAdShown()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdShown(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 194
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    :cond_0
    return-void
.end method

.method public onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 134
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public onBannerInitSuccess()V
    .locals 2

    .line 129
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method
