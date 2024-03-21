.class public Lcom/ironsource/adobeair/AndroidBridgeContext;
.super Lcom/adobe/fre/FREContext;
.source "AndroidBridgeContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "setPluginData"

    .line 75
    new-instance v2, Lcom/ironsource/adobeair/functions/SetPluginDataFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetPluginDataFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shouldTrackNetworkState"

    .line 76
    new-instance v2, Lcom/ironsource/adobeair/functions/ShouldTrackNetworkStateFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/ShouldTrackNetworkStateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setDynamicUserId"

    .line 77
    new-instance v2, Lcom/ironsource/adobeair/functions/SetDynamicUserIdFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetDynamicUserIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "validateIntegration"

    .line 78
    new-instance v2, Lcom/ironsource/adobeair/functions/ValidateIntegrationFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/ValidateIntegrationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getAdvertiserId"

    .line 79
    new-instance v2, Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getRewardedVideoPlacementInfo"

    .line 80
    new-instance v2, Lcom/ironsource/adobeair/functions/GetRewardedVideoPlacementInfoFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/GetRewardedVideoPlacementInfoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setIronSourceClientSideCallbacks"

    .line 81
    new-instance v2, Lcom/ironsource/adobeair/functions/SetIronSourceClientSideCallbacksFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetIronSourceClientSideCallbacksFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setIronSourceOfferwallCustomParams"

    .line 82
    new-instance v2, Lcom/ironsource/adobeair/functions/SetIronSourceOfferwallCustomParamsFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetIronSourceOfferwallCustomParamsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setAdaptersDebug"

    .line 83
    new-instance v2, Lcom/ironsource/adobeair/functions/SetAdaptersDebugFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetAdaptersDebugFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setRewardedVideoServerParameters"

    .line 84
    new-instance v2, Lcom/ironsource/adobeair/functions/SetRewardedVideoServerParametersFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetRewardedVideoServerParametersFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clearRewardedVideoServerParameters"

    .line 85
    new-instance v2, Lcom/ironsource/adobeair/functions/ClearRewardedVideoServerParametersFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/ClearRewardedVideoServerParametersFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setSegment"

    .line 86
    new-instance v2, Lcom/ironsource/adobeair/functions/SetSegmentFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetSegmentFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setConsent"

    .line 87
    new-instance v2, Lcom/ironsource/adobeair/functions/SetConsentFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetConsentFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setMetaData"

    .line 88
    new-instance v2, Lcom/ironsource/adobeair/functions/setMetaData;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/setMetaData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setMetaDataWithValues"

    .line 89
    new-instance v2, Lcom/ironsource/adobeair/functions/setMetaDataWithValues;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/setMetaDataWithValues;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setWebContent"

    .line 90
    new-instance v2, Lcom/ironsource/adobeair/functions/setWebContent;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/setWebContent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "init"

    .line 93
    new-instance v2, Lcom/ironsource/adobeair/functions/InitFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/InitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "initWithAdUnits"

    .line 94
    new-instance v2, Lcom/ironsource/adobeair/functions/InitWithAdUnitsFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/InitWithAdUnitsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUserId"

    .line 95
    new-instance v2, Lcom/ironsource/adobeair/functions/SetUserIdFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetUserIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onResume"

    .line 98
    new-instance v2, Lcom/ironsource/adobeair/functions/OnResumeFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/OnResumeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onPause"

    .line 99
    new-instance v2, Lcom/ironsource/adobeair/functions/OnPauseFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/OnPauseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setMediationSegment"

    .line 100
    new-instance v2, Lcom/ironsource/adobeair/functions/SetMediationSegmentFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/SetMediationSegmentFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showRewardedVideo"

    .line 103
    new-instance v2, Lcom/ironsource/adobeair/functions/ShowRewardedVideoFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/ShowRewardedVideoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isRewardedVideoAvailable"

    .line 104
    new-instance v2, Lcom/ironsource/adobeair/functions/IsRewardedVideoAvailableFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/IsRewardedVideoAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isRewardedVideoPlacementCapped"

    .line 105
    new-instance v2, Lcom/ironsource/adobeair/functions/IsRewardedVideoPlacementCappedFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/IsRewardedVideoPlacementCappedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loadInterstitial"

    .line 108
    new-instance v2, Lcom/ironsource/adobeair/functions/LoadInterstitialFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/LoadInterstitialFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showInterstitial"

    .line 109
    new-instance v2, Lcom/ironsource/adobeair/functions/ShowInterstitialFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/ShowInterstitialFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isInterstitialReady"

    .line 110
    new-instance v2, Lcom/ironsource/adobeair/functions/IsInterstitialReadyFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/IsInterstitialReadyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isInterstitialPlacementCapped"

    .line 111
    new-instance v2, Lcom/ironsource/adobeair/functions/IsInterstitialPlacementCappedFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/IsInterstitialPlacementCappedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showOfferwall"

    .line 114
    new-instance v2, Lcom/ironsource/adobeair/functions/ShowOfferwallFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/ShowOfferwallFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isOfferwallAvailable"

    .line 115
    new-instance v2, Lcom/ironsource/adobeair/functions/IsOfferwallAvailableFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/IsOfferwallAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getOfferwallCredits"

    .line 116
    new-instance v2, Lcom/ironsource/adobeair/functions/GetOfferwallCreditsFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/GetOfferwallCreditsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loadBanner"

    .line 119
    new-instance v2, Lcom/ironsource/adobeair/functions/LoadBannerFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/LoadBannerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "destroyBanner"

    .line 120
    new-instance v2, Lcom/ironsource/adobeair/functions/DestroyBannerFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/DestroyBannerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "displayBanner"

    .line 121
    new-instance v2, Lcom/ironsource/adobeair/functions/DisplayBannerFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/DisplayBannerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hideBanner"

    .line 122
    new-instance v2, Lcom/ironsource/adobeair/functions/HideBannerFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/HideBannerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isBannerPlacementCapped"

    .line 123
    new-instance v2, Lcom/ironsource/adobeair/functions/IsBannerPlacementCappedFunction;

    invoke-direct {v2}, Lcom/ironsource/adobeair/functions/IsBannerPlacementCappedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
