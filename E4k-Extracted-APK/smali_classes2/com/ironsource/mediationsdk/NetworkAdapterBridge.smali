.class public Lcom/ironsource/mediationsdk/NetworkAdapterBridge;
.super Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;
.source "NetworkAdapterBridge.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAPSDataInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterConsentInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/AdapterDebugInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterMetaDataInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Listener::Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;",
        ">",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
        "Lcom/ironsource/mediationsdk/NetworkAdapterBridge<",
        "T",
        "Listener;",
        ">;T",
        "Listener;",
        ">;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAPSDataInterface;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterConsentInterface;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/AdapterDebugInterface;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterMetaDataInterface;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;",
        "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
        "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;"
    }
.end annotation


# instance fields
.field private mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field private mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field protected mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

.field private mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

.field private mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 1

    .line 65
    invoke-direct {p0, p3, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 66
    iput-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 67
    iput-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 68
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    sget-object p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->PROVIDER:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    .line 71
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p3, p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    goto :goto_0

    .line 74
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p3, p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    goto :goto_0

    .line 78
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad unit not supported - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private createLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 536
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

.method private isAdExpired(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Z
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_2

    .line 554
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    const/16 v0, 0x421

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 556
    :cond_2
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad unit not supported - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return v2
.end method

.method private isNoFill(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Z
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 541
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    const/16 v0, 0x486

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_3

    .line 543
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    const/16 v0, 0x422

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 545
    :cond_3
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad unit not supported - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 3

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while calling adapter.getVersion() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBiddingData(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 160
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad unit not supported - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBiddingData exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->adapterBridgeError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLoadWhileShowSupportedState(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    .locals 2

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getLoadWhileShowSupportState(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    move-result-object p1

    return-object p1

    .line 567
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while calling adapter.getLoadWhileShowSupportedState from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 571
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 572
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-object p1
.end method

.method public getNetworkAdapter()Lcom/ironsource/mediationsdk/NetworkAdapterBridge;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ironsource/mediationsdk/NetworkAdapterBridge<",
            "T",
            "Listener;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->getNetworkAdapter()Lcom/ironsource/mediationsdk/NetworkAdapterBridge;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 3

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while calling adapter.getCoreSDKVersion() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .locals 2

    .line 89
    iput-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    const-string p2, "userId"

    .line 90
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->setCustomParams()V

    .line 94
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lcom/ironsource/mediationsdk/utilities/IronsourceJsonUtilities;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_1

    const-string v0, "instanceType"

    .line 97
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    const-string v0, ""

    invoke-virtual {p1, v0, p2, p3, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    goto/16 :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    const-string v0, ""

    invoke-virtual {p1, v0, p2, p3, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitialForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_2

    .line 107
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    const-string v0, ""

    invoke-virtual {p1, v0, p2, p3, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRewardedVideoWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    goto :goto_0

    .line 109
    :cond_2
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad unit not supported - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init failed - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz p2, :cond_3

    .line 115
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->adapterBridgeError(Ljava/lang/String;)V

    .line 117
    :cond_3
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p2, p3, :cond_4

    .line 118
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p3, 0x411

    invoke-direct {p2, p3, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p2, p3, :cond_5

    .line 121
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p3, 0x410

    invoke-direct {p2, p3, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z
    .locals 2

    .line 244
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utilities/IronsourceJsonUtilities;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isInterstitialReady(Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v0, v1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable(Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    .line 251
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad unit not supported - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAdAvailable exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 255
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->adapterBridgeError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;)V
    .locals 2
    .param p1    # Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
            "Landroid/app/Activity;",
            "T",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 179
    iput-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    .line 180
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utilities/IronsourceJsonUtilities;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    .line 182
    :try_start_0
    iget-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v1, 0x1

    if-ne p3, v0, :cond_1

    const-string p3, "instanceType"

    .line 183
    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 184
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, p2, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    goto/16 :goto_0

    .line 187
    :cond_0
    iget-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitialForBidding(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_1
    iget-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p3, v0, :cond_3

    const-string p3, "instanceType"

    .line 191
    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 192
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, p2, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->fetchRewardedVideoForAutomaticLoad(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadRewardedVideoForBidding(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_3
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad unit not supported - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "loadAd exception - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 204
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz p2, :cond_4

    .line 205
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->adapterBridgeError(Ljava/lang/String;)V

    .line 207
    :cond_4
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/16 v0, 0x1fe

    if-ne p2, p3, :cond_5

    .line 208
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 210
    :cond_5
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p2, p3, :cond_6

    .line 211
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 44
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;)V

    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 2

    .line 366
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 2

    .line 382
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 358
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->isNoFill(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    :goto_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdOpened()V
    .locals 2

    .line 374
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdOpened()V

    :cond_0
    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 2

    .line 350
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadSuccess()V

    :cond_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 398
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdShowFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 2

    .line 390
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdShowSuccess()V

    :cond_0
    return-void
.end method

.method public onInterstitialAdVisible()V
    .locals 0

    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 337
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 2

    .line 329
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClicked()V
    .locals 2

    .line 509
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    .line 432
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 2

    .line 485
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdEnded()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    .line 424
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdOpened()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdRewarded()V
    .locals 2

    .line 493
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;->onAdRewarded()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 501
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdShowFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .locals 2

    .line 477
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdStarted()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdVisible()V
    .locals 2

    .line 517
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdVisible()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 3

    .line 440
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "available = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 443
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadSuccess()V

    goto :goto_0

    .line 446
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v1, 0x1fe

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 416
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoInitSuccess()V
    .locals 2

    .line 408
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 461
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    if-eqz v0, :cond_2

    .line 464
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->isNoFill(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    goto :goto_0

    .line 466
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->isAdExpired(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_AD_EXPIRED:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    goto :goto_0

    .line 469
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    .line 471
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onRewardedVideoLoadSuccess()V
    .locals 2

    .line 453
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadSuccess()V

    :cond_0
    return-void
.end method

.method public releaseMemory()V
    .locals 4

    .line 578
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->releaseMemory(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lorg/json/JSONObject;)V

    .line 581
    iput-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while calling adapter.releaseMemory() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    .line 588
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mInitListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    .line 589
    iput-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    .line 590
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->releaseMemory()V

    .line 592
    iput-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    :cond_1
    return-void
.end method

.method public setAPSData(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lorg/json/JSONObject;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/SetAPSInterface;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    check-cast v0, Lcom/ironsource/mediationsdk/SetAPSInterface;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/SetAPSInterface;->setAPSData(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public setAdapterDebug(Z)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setAdapterDebug(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while calling adapter.setAdapterDebug(adapterDebug) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setConsent(Z)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while calling adapter.setConsent(consent) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method setCustomParams()V
    .locals 3

    .line 266
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V

    .line 271
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomParams exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->adapterBridgeError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMetaData(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;)V
    .locals 1
    .param p1    # Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
            "T",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 218
    iput-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mListener:Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;

    .line 219
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utilities/IronsourceJsonUtilities;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 221
    :try_start_0
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p2, v0, :cond_0

    .line 222
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p2, p1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    goto/16 :goto_0

    .line 223
    :cond_0
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p2, v0, :cond_1

    .line 224
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p2, p1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    goto :goto_0

    .line 226
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ad unit not supported - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showAd exception - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz p2, :cond_2

    .line 232
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->adapterBridgeError(Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p2, v0, :cond_3

    .line 235
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v0, 0x40f

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object p2, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p2, v0, :cond_4

    .line 238
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v0, 0x40e

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public update(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/ironsource/mediationsdk/NetworkAdapterBridge;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-void
.end method
