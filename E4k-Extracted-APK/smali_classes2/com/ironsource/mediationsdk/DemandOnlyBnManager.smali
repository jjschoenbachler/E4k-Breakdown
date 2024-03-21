.class public Lcom/ironsource/mediationsdk/DemandOnlyBnManager;
.super Ljava/lang/Object;
.source "DemandOnlyBnManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;


# instance fields
.field private mActiveSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

.field private mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

.field private mLoadingSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

.field private mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/BannerConfigurations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/BannerConfigurations;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 55
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupersonicAds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IronSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 63
    :cond_1
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 59
    new-instance v8, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerAdaptersSmartLoadTimeout()J

    move-result-wide v1

    long-to-int v6, v1

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 60
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->addViewWithFrameLayoutParams(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private sendMediationEvent(ILjava/lang/String;)V
    .locals 3

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 305
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isDemandOnly"

    const/4 v2, 0x1

    .line 306
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spId"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 307
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 310
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V
    .locals 1

    const/4 v0, 0x0

    .line 281
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;[[Ljava/lang/Object;)V
    .locals 6

    .line 286
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 290
    :try_start_0
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 291
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 295
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 298
    :cond_0
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p3, p1, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 299
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private validateBannerLayout(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xdb0

    if-nez p1, :cond_0

    .line 315
    invoke-direct {p0, v1, p2}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendMediationEvent(ILjava/lang/String;)V

    return v0

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 319
    invoke-direct {p0, v1, p2}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendMediationEvent(ILjava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public declared-synchronized destroyBanner(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;)V
    .locals 3

    monitor-enter p0

    .line 143
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "demand only banner manager : destroyBanner"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 146
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "destroyBanner banner cannot be null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "Banner is already destroyed and can\'t be used anymore. Please create a new one using IronSource.createBanner API"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->destroyBanner()V

    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    .line 158
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mActiveSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    const/16 v1, 0xce9

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "demand only banner manager : destroyBanner | mActiveSmash != null "

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mActiveSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mActiveSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->destroyBanner()V

    .line 162
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mActiveSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mLoadingSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    if-eqz v0, :cond_3

    .line 164
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "demand only banner manager : destroyBanner | mLoadingSmash != null "

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mLoadingSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 166
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mLoadingSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->destroyBanner()V

    .line 167
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mLoadingSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 142
    monitor-exit p0

    throw p1
.end method

.method public loadISDemandOnlyBannerWithAdm(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 69
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    .line 71
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0xdaf

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendMediationEvent(ILjava/lang/String;)V

    const-string p1, "Banner"

    .line 73
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNonExistentInstanceError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p2, :cond_0

    .line 75
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void

    .line 80
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->validateBannerLayout(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "validateBannerLayout fail"

    .line 81
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p2, :cond_2

    .line 83
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_2
    return-void

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    .line 89
    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mLoadingSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    if-nez v0, :cond_5

    const-string p1, "loadISDemandOnlyBannerWithAdm smash is no exist"

    .line 91
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 92
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p2, :cond_4

    .line 94
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_4
    return-void

    .line 99
    :cond_5
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->isBidder()Z

    move-result p2

    const/16 v1, 0xce4

    if-nez p2, :cond_6

    const-string p1, "loadISDemandOnlyBannerWithAdm in IAB flow must be called by bidder instances"

    .line 100
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 101
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 103
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p2, :cond_9

    .line 104
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto/16 :goto_1

    .line 112
    :cond_6
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->decodeAdmResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 113
    new-instance p3, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;

    invoke-direct {p3}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;-><init>()V

    .line 115
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getAuctionDataFromResponse(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadISDemandOnlyBannerWithAdm: unable to get auction data from response. Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 118
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz v2, :cond_7

    .line 120
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {v2, p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_7
    move-object p2, p3

    .line 124
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getWaterfall()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getAuctionResponseItem(Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/mediationsdk/AuctionResponseItem;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 126
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getAuctionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->setAuctionId(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getGenericParams()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->setGenericParams(Lorg/json/JSONObject;)V

    const/16 v1, 0xbba

    .line 129
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 130
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getAuctionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getGenericParams()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getBurls()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->loadBanner(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_1

    :cond_8
    const-string p1, "loadISDemandOnlyBannerWithAdm invalid enriched adm"

    .line 132
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 133
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 135
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p2, :cond_9

    .line 136
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onBannerAdClicked(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V
    .locals 2

    .line 233
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xbc0

    .line 234
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 235
    iget-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_0

    .line 236
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->onBannerAdClicked()V

    :cond_0
    return-void
.end method

.method public onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V
    .locals 2

    .line 260
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xdb1

    .line 261
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 262
    iget-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_0

    .line 263
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->onBannerAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;ZJ)V
    .locals 6

    .line 207
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " smash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    const/16 p3, 0xcea

    .line 211
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "duration"

    aput-object v4, v2, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v2, v0

    aput-object v2, v3, v0

    invoke-direct {p0, p3, p2, v3}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;[[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 p3, 0xce4

    const/4 v3, 0x3

    .line 213
    new-array v3, v3, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v1

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v0

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v4, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v4, v0

    aput-object v4, v3, v2

    invoke-direct {p0, p3, p2, v3}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;[[Ljava/lang/Object;)V

    .line 216
    :goto_0
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_1

    .line 217
    iget-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    return-void
.end method

.method public onBannerAdLoaded(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 9

    .line 173
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smash = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 181
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->bindView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 182
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mActiveSmash:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    .line 185
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result p2

    const/16 v0, 0xbbd

    const/4 v1, 0x1

    .line 187
    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "sessionDepth"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v2, v6

    invoke-direct {p0, v0, p1, v2}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;[[Ljava/lang/Object;)V

    const/16 v0, 0xc26

    .line 188
    new-array v2, v1, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sessionDepth"

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    aput-object v3, v2, v6

    invoke-direct {p0, v0, p1, v2}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;[[Ljava/lang/Object;)V

    .line 191
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 193
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->isBidder()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 194
    iget-object p2, p1, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mBUrl:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    .line 195
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getInstanceType()I

    move-result v3

    iget-object v4, p1, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-virtual/range {v0 .. v8}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 196
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v0

    const-string v1, "onBannerAdLoaded"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoaded()V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const/16 p2, 0xce4

    .line 177
    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    return-void
.end method

.method public onBannerAdReloadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;Z)V
    .locals 0

    .line 228
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdReloaded(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V
    .locals 0

    .line 223
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V
    .locals 2

    .line 242
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xce7

    .line 243
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 244
    iget-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_0

    .line 245
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->onBannerAdScreenDismissed()V

    :cond_0
    return-void
.end method

.method public onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V
    .locals 2

    .line 251
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xce6

    .line 252
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    .line 253
    iget-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->mIronSourceBanner:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_0

    .line 254
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->onBannerAdScreenPresented()V

    :cond_0
    return-void
.end method

.method public onBannerAdShown(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V
    .locals 2

    .line 268
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xbc1

    .line 269
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V

    const-string p1, ""

    const/16 v0, 0xc2f

    .line 270
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->sendMediationEvent(ILjava/lang/String;)V

    return-void
.end method
