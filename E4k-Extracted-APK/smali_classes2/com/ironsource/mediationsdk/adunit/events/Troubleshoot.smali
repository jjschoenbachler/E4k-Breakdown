.class public Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;
.super Lcom/ironsource/mediationsdk/adunit/events/EventCategory;
.source "Troubleshoot.java"


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/events/EventCategory;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    return-void
.end method


# virtual methods
.method public adAdapterNotAvailable(Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 42
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_AD_ADAPTER_NOT_AVAILABLE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public adExpired(Ljava/lang/String;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 152
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_AD_EXPIRED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public adapterBridgeError(Ljava/lang/String;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 133
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_ADAPTER_BRIDGE_INTERNAL_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public auctionSuccessfulRecoveryError(ILjava/lang/String;)V
    .locals 2

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 146
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_AUCTION_SUCCESSFUL_RECOVERY_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public biddingDataMissing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    .line 55
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "providerAdapterVersion"

    .line 56
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "providerSDKVersion"

    .line 57
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "spId"

    .line 58
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 59
    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_BIDDING_DATA_MISSING:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public internalError(Ljava/lang/String;)V
    .locals 2

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 127
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_INTERNAL_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public loadFailed(ILjava/lang/String;)V
    .locals 2

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 121
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_LOAD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public networkAdapterNotAvailable(Ljava/lang/String;)V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 36
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_NETWORK_ADAPTER_NOT_AVAILABLE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public notificationError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 29
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ext1"

    .line 30
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_NOTIFICATION_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public providerSettingsMissing(Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 48
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_PROVIDER_SETTINGS_MISSING:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public unexpectedAuctionFailed(Ljava/lang/String;)V
    .locals 2

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 84
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public unexpectedAuctionSuccess(Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 78
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public unexpectedClosed(Ljava/lang/String;)V
    .locals 2

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 108
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_CLOSED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public unexpectedInitFailed(Ljava/lang/String;)V
    .locals 2

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 72
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_INIT_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public unexpectedInitSuccess(Ljava/lang/String;)V
    .locals 2

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 66
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public unexpectedLoadFailed(Ljava/lang/String;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 96
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_LOAD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public unexpectedLoadSuccess(Ljava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 90
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public unexpectedShowFailed(Ljava/lang/String;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 102
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_SHOW_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public unexpectedTimeout(Ljava/lang/String;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 114
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_TIMEOUT:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public waterfallOverHead(Ljava/lang/String;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 139
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOTING_WATERFALL_OVERHEAD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method
