.class public Lcom/ironsource/sdk/IronSourceNetwork;
.super Ljava/lang/Object;
.source "IronSourceNetwork.java"


# static fields
.field static final TAG:Ljava/lang/String; = "IronSourceNetwork"

.field private static initSDKListener:Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;

.field private static ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

.field private static mConsentParams:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized applyConsentInfo(Lorg/json/JSONObject;)V
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 198
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 199
    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 203
    monitor-exit v0

    return-void

    .line 206
    :cond_1
    :try_start_1
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->updateConsentInfo(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 197
    monitor-exit v0

    throw p0
.end method

.method public static getInitListener()Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;
    .locals 1

    .line 92
    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->initSDKListener:Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;

    return-object v0
.end method

.method public static declared-synchronized getOfferWallCredits(Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 264
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 265
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->getOfferWallCredits(Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 263
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getRawToken(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 240
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/service/TokenService;->getRawToken(Landroid/content/Context;)Lorg/json/JSONObject;

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

.method public static declared-synchronized getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 231
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/service/TokenService;->getToken(Landroid/content/Context;)Ljava/lang/String;

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

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 141
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 248
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 249
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->initOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 247
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "IronSourceNetwork"

    const-string p1, "applicationKey is NULL"

    .line 49
    invoke-static {p0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 53
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    if-nez v1, :cond_1

    .line 54
    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->setInitSDKParams(Ljava/util/Map;)V

    .line 56
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "events"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    invoke-static {p0, v1, p2, p1, p3}, Lcom/ironsource/sdk/IronSourceNetwork;->initSDK5EventTracker(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p3

    :try_start_3
    const-string v1, "IronSourceNetwork"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to init event tracker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/IronSourceNetworkAPI;

    move-result-object p0

    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    .line 74
    sget-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->mConsentParams:Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/ironsource/sdk/IronSourceNetwork;->applyConsentInfo(Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0

    throw p0
.end method

.method private static initSDK5EventTracker(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    invoke-static {p1}, Lcom/ironsource/sdk/Events/ISNEventsUtils;->createConfigurations(Lorg/json/JSONObject;)Lcom/ironsource/eventsTracker/EventsConfiguration;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/ironsource/eventsTracker/EventsConfiguration;->areEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0, p2, p3, p4}, Lcom/ironsource/sdk/Events/ISNEventsUtils;->createEventsBaseData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/sdk/Events/ISNEventsBaseData;

    move-result-object p0

    .line 105
    invoke-static {p1, p0}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->init(Lcom/ironsource/eventsTracker/EventsConfiguration;Lcom/ironsource/sdk/Events/ISNEventsBaseData;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized isAdAvailableForInstance(Lcom/ironsource/sdk/IronSourceAdInstance;)Z
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 163
    monitor-exit v0

    return p0

    .line 165
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->isAdAvailable(Lcom/ironsource/sdk/IronSourceAdInstance;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 161
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadAd(Landroid/app/Activity;Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 133
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1, p2}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->loadAd(Landroid/app/Activity;Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 131
    monitor-exit v0

    throw p0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    .line 172
    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v0, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    .line 183
    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v0, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public static declared-synchronized release(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 217
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 218
    monitor-exit v0

    return-void

    .line 220
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->release(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 216
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized requestToDestroyBanner()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 276
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 277
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->requestToDestroyBanner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 275
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setInitListener(Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;)V
    .locals 1

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 85
    :try_start_0
    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->initSDKListener:Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 84
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 149
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 147
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showOfferWall(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 256
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 257
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->showOfferWall(Landroid/app/Activity;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 255
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateConsentInfo(Lorg/json/JSONObject;)V
    .locals 1

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 193
    :try_start_0
    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->mConsentParams:Lorg/json/JSONObject;

    .line 194
    invoke-static {p0}, Lcom/ironsource/sdk/IronSourceNetwork;->applyConsentInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 192
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateMetadata(Lorg/json/JSONObject;)V
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 213
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/service/TokenService;->updateMetaData(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 212
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized validateInitSDK()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 116
    monitor-exit v0

    return-void

    .line 114
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Call initSDK first"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0

    throw v1
.end method
