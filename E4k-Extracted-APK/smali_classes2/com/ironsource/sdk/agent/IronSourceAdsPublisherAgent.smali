.class public final Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Lcom/ironsource/sdk/SSAPublisher;
.implements Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;
.implements Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;
.implements Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
.implements Lcom/ironsource/sdk/listeners/internals/DSBannerListener;
.implements Lcom/ironsource/sdk/IronSourceNetworkAPI;
.implements Lcom/ironsource/sdk/agent/OnPauseOnResumeHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "IronSourceAdsPublisherAgent"

.field private static sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;


# instance fields
.field private final SUPERSONIC_ADS:Ljava/lang/String;

.field private adViewContainerCounter:J

.field private mApplicationKey:Ljava/lang/String;

.field private mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

.field private mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

.field private mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

.field private mEnableLifeCycleListeners:Z

.field private mGlobalDataUpdater:Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;

.field private mOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

.field private mTokenService:Lcom/ironsource/sdk/service/TokenService;

.field private mUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "SupersonicAds"

    .line 62
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->SUPERSONIC_ADS:Ljava/lang/String;

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mEnableLifeCycleListeners:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->initPublisherAgent(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SupersonicAds"

    .line 62
    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->SUPERSONIC_ADS:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mEnableLifeCycleListeners:Z

    .line 87
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->initPublisherAgent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/ControllerManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/DemandSourceManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    return-object p0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/IronSourceNetworkAPI;
    .locals 0

    .line 158
    invoke-static {p1, p2, p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/ironsource/sdk/IronSourceNetworkAPI;

    move-result-object p0

    return-object p0
.end method

.method private createToken(Landroid/content/Context;)Lcom/ironsource/sdk/service/TokenService;
    .locals 3

    .line 148
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/ironsource/sdk/service/TokenService;->fetchIndependentData()V

    .line 150
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/sdk/service/TokenService;->fetchDependentData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private decodeADM(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "adm"

    .line 879
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 880
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adm"

    .line 881
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/listeners/OnBannerListener;

    return-object p1
.end method

.method private getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    return-object p1
.end method

.method private getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    return-object p1
.end method

.method private getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;
    .locals 1

    .line 751
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/ironsource/sdk/IronSourceNetworkAPI;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    if-nez v1, :cond_0

    .line 169
    sget-object v1, Lcom/ironsource/sdk/Events/SDK5Events;->initSDK:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-static {v1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;)V

    .line 171
    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/ironsource/sdk/service/TokenService;->collectApplicationKey(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/service/TokenService;->collectApplicationUserId(Ljava/lang/String;)V

    .line 183
    :goto_0
    sget-object p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 167
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    monitor-enter v0

    const/4 v1, 0x0

    .line 190
    :try_start_0
    invoke-static {p0, v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/content/Context;I)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    monitor-enter v0

    :try_start_0
    const-string v1, "IronSourceAdsPublisherAgent"

    const-string v2, "getInstance()"

    .line 199
    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .line 207
    :cond_0
    sget-object p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 198
    monitor-exit v0

    throw p0
.end method

.method private initPublisherAgent(Landroid/content/Context;)V
    .locals 8

    .line 95
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    .line 99
    new-instance v1, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    .line 101
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;-><init>(Lorg/json/JSONObject;)V

    .line 99
    invoke-static {p1, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->initializeCacheDirectory(Landroid/content/Context;Lcom/ironsource/sdk/fileSystem/StorageConfigurations;)V

    .line 104
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setCurrentSDKVersion(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->createToken(Landroid/content/Context;)Lcom/ironsource/sdk/service/TokenService;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mTokenService:Lcom/ironsource/sdk/service/TokenService;

    .line 107
    new-instance v1, Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-direct {v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    .line 109
    new-instance v1, Lcom/ironsource/sdk/controller/ContextProvider;

    invoke-direct {v1}, Lcom/ironsource/sdk/controller/ContextProvider;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

    .line 112
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/ContextProvider;->updateActivityContext(Landroid/app/Activity;)V

    .line 117
    :cond_0
    new-instance v7, Lcom/ironsource/sdk/controller/ControllerManager;

    iget-object v3, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

    iget-object v4, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mTokenService:Lcom/ironsource/sdk/service/TokenService;

    iget-object v5, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v6, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/ControllerManager;-><init>(Landroid/content/Context;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/service/TokenService;Lcom/ironsource/sdk/controller/DemandSourceManager;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)V

    iput-object v7, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    .line 125
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/FeaturesManager;->getDebugMode()I

    move-result v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/Logger;->enableLogging(I)V

    const-string v1, "IronSourceAdsPublisherAgent"

    const-string v2, "C\'tor"

    .line 127
    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->decideOnListeningToApplicationLifeCycleEvents(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 131
    new-instance v0, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;

    invoke-direct {v0}, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mGlobalDataUpdater:Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;

    .line 132
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mGlobalDataUpdater:Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->setNetworkSdkVersion()V

    .line 133
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mGlobalDataUpdater:Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->setOmidData()V

    .line 134
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mGlobalDataUpdater:Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->collectDataFromActivity(Landroid/content/Context;)V

    .line 135
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mGlobalDataUpdater:Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->setGlobalDataFromControllerConfig()V

    .line 136
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mGlobalDataUpdater:Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->setDebugParams()V

    .line 137
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mGlobalDataUpdater:Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->setGooglePlayInstalled(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 139
    iput-wide v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->adViewContainerCounter:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private loadInAppBiddingAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 848
    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->decodeADM(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 850
    new-instance v1, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v2, "callfailreason"

    .line 851
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    const-string v2, "generalmessage"

    .line 852
    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/ironsource/sdk/constants/Events;->INTIALIZED:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/ironsource/sdk/constants/Events;->UNINTIALIZED:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    const-string v2, "isbiddinginstance"

    .line 853
    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->isInAppBidding()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    const-string v2, "demandsourcename"

    .line 854
    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    const-string v2, "producttype"

    .line 855
    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetworkAPIUtils;->ProductNameForEvents(Lcom/ironsource/sdk/IronSourceAdInstance;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    const-string v2, "custom_c"

    sget-object v3, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    .line 856
    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->getTimeElapsedForInstanceTimer(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    .line 859
    sget-object v2, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->clearTimingValueForInstance(Ljava/lang/String;)Z

    .line 860
    sget-object v2, Lcom/ironsource/sdk/Events/SDK5Events;->parseAdmFailed:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    .line 862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "IronSourceAdsPublisherAgent"

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadInAppBiddingAd failed decoding  ADM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    return-void
.end method

.method private loadInitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "IronSourceAdsPublisherAgent"

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadOnInitializedInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$13;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 869
    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    goto :goto_0

    .line 872
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadUninitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private loadUninitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "IronSourceAdsPublisherAgent"

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadOnNewInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$14;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateConsentInToken(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "gdprConsentStatus"

    .line 782
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "gdprConsentStatus"

    .line 785
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 786
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "consent"

    .line 787
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 788
    iget-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mTokenService:Lcom/ironsource/sdk/service/TokenService;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/service/TokenService;->updateData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 790
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public decideOnListeningToApplicationLifeCycleEvents(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "enableLifeCycleListeners"

    const/4 v1, 0x0

    .line 964
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mEnableLifeCycleListeners:Z

    .line 966
    iget-boolean p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mEnableLifeCycleListeners:Z

    if-eqz p2, :cond_0

    .line 968
    :try_start_0
    new-instance p2, Lcom/ironsource/sdk/agent/ActivityLifeCycleListener;

    invoke-direct {p2, p0}, Lcom/ironsource/sdk/agent/ActivityLifeCycleListener;-><init>(Lcom/ironsource/sdk/agent/OnPauseOnResumeHandler;)V

    .line 969
    check-cast p1, Landroid/app/Application;

    .line 970
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 972
    new-instance p2, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {p2}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v0, "generalmessage"

    .line 973
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    .line 974
    sget-object p1, Lcom/ironsource/sdk/Events/SDK5Events;->failedRegisterActivityLifecycle:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {p2}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getControllerManager()Lcom/ironsource/sdk/controller/ControllerManager;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    return-object v0
.end method

.method public getOfferWallCredits(Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$7;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$7;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2

    .line 344
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 345
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$6;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleOnPause(Landroid/app/Activity;)V
    .locals 1

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->enterBackground()V

    .line 985
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/ControllerManager;->unregisterConnectionReceiver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 988
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public handleOnResume(Landroid/app/Activity;)V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/ContextProvider;->updateActivityContext(Landroid/app/Activity;)V

    .line 996
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->enterForeground()V

    .line 998
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/ControllerManager;->registerConnectionReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 373
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/ironsource/sdk/controller/DemandSourceManager;->createDemandSource(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p3

    .line 375
    iget-object p4, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance p5, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$8;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$8;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p4, p5}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 293
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 294
    iput-object p4, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 295
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v7, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$3;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 313
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 314
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$4;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 251
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 254
    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/ironsource/sdk/controller/DemandSourceManager;->createDemandSource(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p3

    .line 261
    iget-object p4, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance p5, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p4, p5}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAdAvailable(Lcom/ironsource/sdk/IronSourceAdInstance;)Z
    .locals 3

    const-string v0, "IronSourceAdsPublisherAgent"

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 960
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getAvailabilityState()Z

    move-result p1

    return p1
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/ControllerManager;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadAd(Landroid/app/Activity;Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/ContextProvider;->updateActivityContext(Landroid/app/Activity;)V

    .line 823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "loadStartTime"

    .line 824
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object p1, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->addTimingValueForInstance(Ljava/lang/String;J)Z

    .line 827
    new-instance p1, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {p1}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v2, "isbiddinginstance"

    .line 829
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstance;->isInAppBidding()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v2

    const-string v3, "demandsourcename"

    .line 830
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstance;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v2

    const-string v3, "producttype"

    .line 831
    invoke-static {p2}, Lcom/ironsource/sdk/IronSourceNetworkAPIUtils;->ProductNameForEvents(Lcom/ironsource/sdk/IronSourceAdInstance;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v2

    const-string v3, "custom_c"

    .line 832
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    .line 834
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->loadAd:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    const-string p1, "IronSourceAdsPublisherAgent"

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstance;->isInAppBidding()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 838
    invoke-direct {p0, p2, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInAppBiddingAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    goto :goto_0

    .line 840
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "demandSourceName"

    .line 389
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$9;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$9;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdProductClick(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)V
    .locals 1

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 590
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 591
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 593
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdClicked()V

    goto :goto_0

    .line 595
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 596
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 598
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialClick()V

    goto :goto_0

    .line 600
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_2

    .line 601
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 603
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdProductClose(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)V
    .locals 1

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 561
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 562
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 564
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdClosed()V

    goto :goto_0

    .line 566
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 567
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 569
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialClose()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdProductEventNotificationReceived(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 613
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 615
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "IronSourceAdsPublisherAgent"

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Event Notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for demand source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v1, :cond_1

    .line 622
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "demandSourceName"

    .line 624
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    invoke-interface {p1, p3, p4}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 627
    :cond_1
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v1, :cond_2

    .line 628
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "demandSourceName"

    .line 630
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    invoke-interface {p1, p3, p4}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 633
    :cond_2
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v1, :cond_3

    .line 634
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "demandSourceName"

    .line 637
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "impressions"

    .line 638
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 639
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerShowSuccess()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 644
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onAdProductInitFailed(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 499
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 501
    new-instance v1, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v2, "demandsourcename"

    .line 502
    invoke-virtual {v1, v2, p2}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p2

    const-string v1, "producttype"

    .line 503
    invoke-virtual {p2, v1, p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p2

    const-string v1, "callfailreason"

    .line 504
    invoke-virtual {p2, v1, p3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p2

    const-string v1, "custom_c"

    sget-object v2, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    .line 505
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->getTimeElapsedForInstanceTimer(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p2

    .line 507
    sget-object v1, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->clearTimingValueForInstance(Ljava/lang/String;)Z

    if-eqz v0, :cond_2

    const-string v1, "isbiddinginstance"

    .line 510
    invoke-static {v0}, Lcom/ironsource/sdk/Events/ISNEventsUtils;->getIsBiddingInstance(Lcom/ironsource/sdk/data/DemandSource;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    const/4 v1, 0x3

    .line 512
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 514
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v1, :cond_0

    .line 515
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 517
    invoke-interface {p1, p3}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVInitFail(Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_0
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v1, :cond_1

    .line 520
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 522
    invoke-interface {p1, p3}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialInitFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_1
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v1, :cond_2

    .line 525
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 527
    invoke-interface {p1, p3}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerInitFailed(Ljava/lang/String;)V

    .line 532
    :cond_2
    :goto_0
    sget-object p1, Lcom/ironsource/sdk/Events/SDK5Events;->initProductFailed:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {p2}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    return-void
.end method

.method public onAdProductInitSuccess(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/AdUnitsReady;)V
    .locals 1

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    .line 472
    invoke-virtual {p2, v0}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 474
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 475
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 477
    invoke-interface {p1, p3}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVInitSuccess(Lcom/ironsource/sdk/data/AdUnitsReady;)V

    goto :goto_0

    .line 479
    :cond_0
    sget-object p3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, p3, :cond_1

    .line 480
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 482
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialInitSuccess()V

    goto :goto_0

    .line 484
    :cond_1
    sget-object p3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, p3, :cond_2

    .line 485
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 487
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerInitSuccess()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdProductOpen(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)V
    .locals 1

    .line 650
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 652
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 653
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 655
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialOpen()V

    goto :goto_0

    .line 657
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 658
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 660
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdOpened()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBannerLoadFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 808
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 810
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 812
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerLoadFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBannerLoadSuccess(Ljava/lang/String;Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;)V
    .locals 1

    .line 797
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 799
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 801
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerLoadSuccess(Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdRewarded(Ljava/lang/String;I)V
    .locals 2

    .line 739
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 741
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialAdRewarded(Ljava/lang/String;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterstitialLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 691
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 693
    new-instance v1, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v2, "callfailreason"

    .line 694
    invoke-virtual {v1, v2, p2}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v2

    const-string v3, "demandsourcename"

    .line 695
    invoke-virtual {v2, v3, p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    if-eqz v0, :cond_1

    const-string p1, "producttype"

    .line 698
    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-static {v0, v2}, Lcom/ironsource/sdk/Events/ISNEventsUtils;->getProductType(Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p1

    const-string v2, "generalmessage"

    .line 699
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/ironsource/sdk/constants/Events;->INTIALIZED:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/ironsource/sdk/constants/Events;->UNINTIALIZED:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p1

    const-string v2, "isbiddinginstance"

    .line 700
    invoke-static {v0}, Lcom/ironsource/sdk/Events/ISNEventsUtils;->getIsBiddingInstance(Lcom/ironsource/sdk/data/DemandSource;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p1

    const-string v2, "custom_c"

    sget-object v3, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    .line 701
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->getTimeElapsedForInstanceTimer(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    .line 703
    sget-object p1, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->clearTimingValueForInstance(Ljava/lang/String;)Z

    .line 705
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 707
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialLoadFailed(Ljava/lang/String;)V

    .line 711
    :cond_1
    sget-object p1, Lcom/ironsource/sdk/Events/SDK5Events;->loadAdFailed:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    return-void
.end method

.method public onInterstitialLoadSuccess(Ljava/lang/String;)V
    .locals 5

    .line 669
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 671
    new-instance v1, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v2, "demandsourcename"

    .line 672
    invoke-virtual {v1, v2, p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p1

    if-eqz v0, :cond_0

    const-string v1, "producttype"

    .line 674
    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-static {v0, v2}, Lcom/ironsource/sdk/Events/ISNEventsUtils;->getProductType(Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    const-string v2, "isbiddinginstance"

    .line 675
    invoke-static {v0}, Lcom/ironsource/sdk/Events/ISNEventsUtils;->getIsBiddingInstance(Lcom/ironsource/sdk/data/DemandSource;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    const-string v2, "custom_c"

    sget-object v3, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    .line 676
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->getTimeElapsedForInstanceTimer(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    .line 678
    sget-object v1, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->clearTimingValueForInstance(Ljava/lang/String;)Z

    .line 680
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialLoadSuccess()V

    .line 686
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->loadAdSuccess:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    return-void
.end method

.method public onInterstitialShowFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 728
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 730
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 732
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialShowFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialShowSuccess(Ljava/lang/String;)V
    .locals 1

    .line 716
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 719
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 721
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialShowSuccess()V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mEnableLifeCycleListeners:Z

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->handleOnPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRVAdCredited(Ljava/lang/String;I)V
    .locals 1

    .line 548
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 550
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 552
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdCredited(I)V

    :cond_0
    return-void
.end method

.method public onRVNoMoreOffers(Ljava/lang/String;)V
    .locals 1

    .line 537
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 539
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 541
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVNoMoreOffers()V

    :cond_0
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 577
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 579
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 581
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVShowFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mEnableLifeCycleListeners:Z

    if-eqz v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->handleOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "IronSourceAdsPublisherAgent"

    const-string v2, "release()"

    .line 449
    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->release()V

    .line 452
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/ContextProvider;->release()V

    .line 454
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/sdk/controller/ControllerManager;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 455
    iget-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/ControllerManager;->destroy()V

    .line 456
    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :catch_0
    sput-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    return-void
.end method

.method public requestToDestroyBanner()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$11;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$11;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMediationState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 758
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->getProductType(Ljava/lang/String;)Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 762
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 764
    invoke-virtual {p1, p3}, Lcom/ironsource/sdk/data/DemandSource;->setMediationState(I)V

    :cond_0
    return-void
.end method

.method public showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "IronSourceAdsPublisherAgent"

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$10;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$10;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showOfferWall(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/ContextProvider;->updateActivityContext(Landroid/app/Activity;)V

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;

    invoke-direct {v0, p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateConsentInfo(Lorg/json/JSONObject;)V
    .locals 2

    .line 772
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->updateConsentInToken(Lorg/json/JSONObject;)V

    .line 773
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$12;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$12;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method
