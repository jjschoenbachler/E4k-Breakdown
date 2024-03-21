.class public Lcom/ironsource/mediationsdk/adunit/smash/RewardedVideoAdSmash;
.super Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;
.source "RewardedVideoAdSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash<",
        "Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;",
        ">;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;",
            ")V"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/model/AdapterConfig;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitRewardSmash;-><init>(Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;)V

    return-void
.end method
