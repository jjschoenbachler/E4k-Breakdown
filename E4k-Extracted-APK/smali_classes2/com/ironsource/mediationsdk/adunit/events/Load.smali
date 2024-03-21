.class public Lcom/ironsource/mediationsdk/adunit/events/Load;
.super Lcom/ironsource/mediationsdk/adunit/events/EventCategory;
.source "Load.java"


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/events/EventCategory;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    return-void
.end method


# virtual methods
.method public availabilityChanged(ZJZ)V
    .locals 2

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    .line 78
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const-string p2, "errorCode"

    const/16 p3, 0x421

    .line 80
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "reason"

    const-string p3, "loaded ads are expired"

    .line 81
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 83
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_AVAILABILITY_CHANGED_TRUE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_AVAILABILITY_CHANGED_FALSE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Load;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public failed(JI)V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    .line 51
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorCode"

    .line 52
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Load;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public failedWithReason(JILjava/lang/String;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorCode"

    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reason"

    .line 66
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_FAILED_WITH_REASON:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Load;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public loadAd(Z)V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "publisherLoad"

    .line 28
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Load;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public noFill(JI)V
    .locals 2

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorCode"

    .line 93
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_NO_FILL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Load;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public success(JZ)V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration"

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p1, "publisherLoad"

    .line 40
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Load;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method
