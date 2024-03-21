.class public abstract Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;
.super Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;
.source "BaseAdUnitInteractionSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Listener::Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;",
        ">",
        "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
        "T",
        "Listener;",
        ">;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;"
    }
.end annotation


# instance fields
.field private mInteractionAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
            "**>;",
            "Lcom/ironsource/mediationsdk/model/AdapterConfig;",
            "T",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;-><init>(Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;)V

    .line 21
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mInteractionAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    return-void
.end method


# virtual methods
.method public isReadyToShow()Z
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mCurrentAdData:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mInteractionAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mCurrentAdData:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;->isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mInteractionAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mCurrentAdData:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;->isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyToShow - exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public onAdClosed()V
    .locals 5

    .line 100
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v1, v2, :cond_3

    .line 106
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->NONE:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 109
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 111
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v2, v3, :cond_1

    .line 112
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;->getOtherAvailableInstances()Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otherInstanceAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "true|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->adClosed(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;->onAdClosed(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V

    return-void

    .line 118
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected closed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedClosed(Ljava/lang/String;)V

    .line 121
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 123
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onAdEnded()V
    .locals 2

    .line 143
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->adEnded(Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;->onAdEnded(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 87
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->adOpened(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;->onAdOpened(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V

    return-void
.end method

.method public onAdShowFailed(ILjava/lang/String;)V
    .locals 5

    .line 179
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v0, v1, :cond_1

    .line 182
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->showFailed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;->onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    const-string v1, "unexpected show failed for %s, error - %d, %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedShowFailed(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdShowSuccess()V
    .locals 2

    .line 166
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->showSuccess(Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;->onAdShowSuccess(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V

    return-void
.end method

.method public onAdStarted()V
    .locals 2

    .line 130
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->adStarted(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;->onAdStarted(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V

    return-void
.end method

.method public onAdVisible()V
    .locals 2

    .line 156
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->adVisible(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public releaseMemory()V
    .locals 4

    .line 200
    invoke-super {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->releaseMemory()V

    .line 202
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mInteractionAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    if-eqz v0, :cond_1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mInteractionAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;->releaseMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "releaseMemory - exception = "

    const/4 v2, 0x1

    .line 206
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mInteractionAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    :cond_1
    return-void
.end method

.method public reportShowChance(Z)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->showChance(Z)V

    :cond_0
    return-void
.end method

.method public showAd(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 3

    .line 26
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placementName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 30
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 33
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 36
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->show(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mInteractionAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mCurrentAdData:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-virtual {p1, v0, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;->showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAd - exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 46
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/adunit/errors/AdUnitErrorsWrapper;->showFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->onAdShowFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
