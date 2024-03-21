.class public Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;
.super Lcom/ironsource/mediationsdk/adunit/events/EventCategory;
.source "AdInteraction.java"


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/events/EventCategory;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    return-void
.end method


# virtual methods
.method public adClicked(Ljava/lang/String;)V
    .locals 2

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 84
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_CLICKED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public adClosed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 94
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ext1"

    .line 96
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_CLOSED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public adEnded(Ljava/lang/String;)V
    .locals 2

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 137
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_ENDED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public adOpened(Ljava/lang/String;)V
    .locals 2

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 75
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_OPENED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public adRewarded(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JLjava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 106
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rewardName"

    .line 107
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rewardAmount"

    .line 108
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "transId"

    .line 109
    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x0

    cmp-long p3, p7, p1

    if-eqz p3, :cond_0

    const-string p1, "duration"

    .line 111
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p9, :cond_1

    .line 114
    invoke-interface {v0, p9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    :cond_1
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "dynamicUserId"

    .line 117
    invoke-interface {v0, p1, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_2
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_REWARDED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;J)V

    return-void
.end method

.method public adStarted(Ljava/lang/String;)V
    .locals 2

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 128
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_STARTED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public adVisible(Ljava/lang/String;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 146
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_VISIBLE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public placementCapped(Ljava/lang/String;)V
    .locals 2

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 154
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->PLACEMENT_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public sessionCapped()V
    .locals 1

    .line 162
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SESSION_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 30
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public showChance(Z)V
    .locals 2

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "status"

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 39
    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD_CHANCE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public showFailed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 60
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorCode"

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 62
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ext1"

    .line 64
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method public showSuccess(Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    .line 48
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method
