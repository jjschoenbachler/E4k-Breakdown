.class public Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;
.super Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;
.source "BaseAdUnitRewardSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Listener::Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;",
        ">",
        "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
        "T",
        "Listener;",
        ">;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;"
    }
.end annotation


# instance fields
.field private mRewardDurationAfterClose:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/AdapterConfig;",
            "T",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;-><init>(Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;)V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .line 32
    new-instance v0, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mRewardDurationAfterClose:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    .line 33
    invoke-super {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->onAdClosed()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mRewardDurationAfterClose:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    .line 27
    invoke-super {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->onAdOpened()V

    return-void
.end method

.method public onAdRewarded()V
    .locals 12

    .line 38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v0, :cond_2

    .line 39
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_1

    .line 43
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 51
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTransId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mRewardDurationAfterClose:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v8

    .line 53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v4

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->adRewarded(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JLjava/util/Map;Ljava/lang/String;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v0, p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;->onAdRewarded(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_1

    .line 59
    :cond_2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "placement is null "

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    const-string v1, "mCurrentPlacement is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
