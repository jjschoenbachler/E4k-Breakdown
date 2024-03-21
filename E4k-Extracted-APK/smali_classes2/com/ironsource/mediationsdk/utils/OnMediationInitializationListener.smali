.class public interface abstract Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;
.super Ljava/lang/Object;
.source "OnMediationInitializationListener.java"


# virtual methods
.method public abstract onInitFailed(Ljava/lang/String;)V
.end method

.method public abstract onInitSuccess(Ljava/util/List;ZLcom/ironsource/mediationsdk/model/Configurations;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z",
            "Lcom/ironsource/mediationsdk/model/Configurations;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onStillInProgressAfter15Secs()V
.end method
