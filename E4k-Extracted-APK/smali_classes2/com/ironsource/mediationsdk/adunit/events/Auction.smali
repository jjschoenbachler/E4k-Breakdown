.class public Lcom/ironsource/mediationsdk/adunit/events/Auction;
.super Lcom/ironsource/mediationsdk/adunit/events/EventCategory;
.source "Auction.java"


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/events/EventCategory;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    return-void
.end method


# virtual methods
.method public adUnitCapped(Ljava/lang/String;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "auctionId"

    .line 71
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_UNIT_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public failed(JILjava/lang/String;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorCode"

    .line 35
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    .line 37
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public request()V
    .locals 1

    .line 24
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_REQUEST:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)V

    return-void
.end method

.method public requestWaterfall(Ljava/lang/String;)V
    .locals 2

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext1"

    .line 56
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_REQUEST_WATERFALL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public responseWaterfall(Ljava/lang/String;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext1"

    .line 65
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_RESULT_WATERFALL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public success(J)V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method
