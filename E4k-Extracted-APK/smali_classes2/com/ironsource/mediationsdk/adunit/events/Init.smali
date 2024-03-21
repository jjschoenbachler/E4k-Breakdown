.class public Lcom/ironsource/mediationsdk/adunit/events/Init;
.super Lcom/ironsource/mediationsdk/adunit/events/EventCategory;
.source "Init.java"


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/events/EventCategory;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    return-void
.end method


# virtual methods
.method public ended(J)V
    .locals 2

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_ENDED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Init;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public failed(ILjava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 50
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Init;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public started()V
    .locals 1

    .line 21
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_STARTED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/events/Init;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)V

    return-void
.end method

.method public success()V
    .locals 1

    .line 38
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/events/Init;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)V

    return-void
.end method
