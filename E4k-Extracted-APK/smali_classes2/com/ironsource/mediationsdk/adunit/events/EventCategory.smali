.class abstract Lcom/ironsource/mediationsdk/adunit/events/EventCategory;
.super Ljava/lang/Object;
.source "EventCategory.java"


# instance fields
.field private final mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/EventCategory;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    return-void
.end method


# virtual methods
.method protected sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/EventCategory;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method protected sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/EventCategory;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V

    return-void
.end method

.method protected sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/EventCategory;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;J)V

    return-void
.end method
