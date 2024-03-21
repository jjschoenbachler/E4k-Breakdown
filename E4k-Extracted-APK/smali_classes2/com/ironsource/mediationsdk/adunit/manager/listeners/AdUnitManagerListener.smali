.class public interface abstract Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;
.super Ljava/lang/Object;
.source "AdUnitManagerListener.java"


# virtual methods
.method public abstract onAdClicked(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
            "*>;J)V"
        }
    .end annotation
.end method

.method public abstract onAdLoadSuccess(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
            "*>;J)V"
        }
    .end annotation
.end method
