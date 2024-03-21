.class public abstract Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitRewardManager;
.super Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;
.source "BaseAdUnitRewardManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash<",
        "*>;>",
        "Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager<",
        "TSmash;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
        "*",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;",
        ">;>;",
        "Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;"
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

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;Ljava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method


# virtual methods
.method public onAdRewarded(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash<",
            "*>;",
            "Lcom/ironsource/mediationsdk/model/Placement;",
            ")V"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitRewardManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitRewardManager;->mListenerWrapper:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitRewardManager;->mWaterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitListenerWrapper;->onRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method
