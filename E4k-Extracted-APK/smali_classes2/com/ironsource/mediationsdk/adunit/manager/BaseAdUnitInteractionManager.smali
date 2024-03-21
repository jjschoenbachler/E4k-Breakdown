.class public abstract Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;
.super Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;
.source "BaseAdUnitInteractionManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
        "*>;Adapter:",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
        "*+",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;",
        ">;>",
        "Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager<",
        "TSmash;TAdapter;>;",
        "Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;Ljava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;",
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;Ljava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method private handleShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;)V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->showFailed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mLoadingModeManager:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->showError()V

    .line 159
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 160
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isAutomaticMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->reportAvailabilityIfNeeded(ZZ)V

    :cond_0
    return-void
.end method

.method private showAdInternal(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;",
            "Lcom/ironsource/mediationsdk/model/Placement;",
            ")V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isAutomaticMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mExpiredAdsManager:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->cancelExpirationTimer()V

    .line 124
    :cond_0
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->showAd(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method


# virtual methods
.method public getOtherAvailableInstances()Ljava/lang/String;
    .locals 4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    if-ne v1, v2, :cond_1

    .line 291
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;

    .line 292
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->isReadyToShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mShouldTrackNetworkState:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;

    .line 142
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->isReadyToShow()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public onAdClosed(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    if-ne v0, v1, :cond_0

    .line 260
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mLoadingModeManager:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->showEnded()V

    .line 267
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public onAdEnded(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onEnded()V

    return-void
.end method

.method public onAdOpened(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->setLastActiveSmash(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;)V

    .line 205
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)V

    .line 206
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was session capped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->sendSessionCappedEvent()V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was session capped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 215
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is capped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->placementCapped(Ljava/lang/String;)V

    .line 221
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 224
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->isAuctionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_2

    .line 229
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->setAdInfo(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 231
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceType()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->reportImpressionDataToPublisher(Lcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 237
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "Smash is null"

    .line 238
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showing instance missing from waterfall - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    const/16 v3, 0x3f3

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->notificationError(ILjava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 246
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->isAutomaticMode()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 247
    invoke-virtual {p0, p1, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->reportAvailabilityIfNeeded(ZZ)V

    .line 251
    :cond_5
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mLoadingModeManager:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->showStarted()V

    return-void
.end method

.method public onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->isAuctionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->setAdInfo(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 185
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    const-string p2, ""

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->handleShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowSuccess(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onShowSuccess(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public onAdStarted(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onStarted()V

    return-void
.end method

.method public showAd(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 6

    .line 36
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 44
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->show(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const-string p1, "can\'t show ad while an ad is already showing"

    .line 54
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/mediationsdk/adunit/errors/AdUnitErrorsWrapper;->showDuringShow(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mState:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    if-eq v1, v2, :cond_1

    const-string p1, "show called while no ads are available"

    .line 62
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fd

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "empty default placement"

    .line 70
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/mediationsdk/adunit/errors/AdUnitErrorsWrapper;->emptyDefaultPlacement(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is capped"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x20c

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_4

    .line 82
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, ""

    .line 84
    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->handleShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;

    .line 91
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->isReadyToShow()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 93
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->setState(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->reportShowChance(Z)V

    move-object v3, v2

    goto :goto_2

    .line 98
    :cond_5
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getAdExpirationTimestamp()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getAdExpirationTimestamp()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const/4 v4, 0x0

    .line 101
    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->reportShowChance(Z)V

    .line 102
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - not ready to show"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v3, :cond_8

    .line 108
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->handleShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;)V

    .line 111
    :cond_8
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_9

    .line 115
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;->showAdInternal(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 111
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :goto_4
    nop

    goto :goto_4
.end method
