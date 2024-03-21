.class public interface abstract Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;
.super Ljava/lang/Object;
.source "AdUnitInteractionManagerListener.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;


# virtual methods
.method public abstract getOtherAvailableInstances()Ljava/lang/String;
.end method

.method public abstract onAdClosed(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onAdEnded(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onAdOpened(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onAdShowSuccess(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onAdStarted(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitInteractionSmash<",
            "*>;)V"
        }
    .end annotation
.end method
