.class public abstract Lcom/ironsource/mediationsdk/BaseProgManager;
.super Ljava/lang/Object;
.source "BaseProgManager.java"


# instance fields
.field protected adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

.field protected adUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

.field private impressionDataListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;"
        }
    .end annotation
.end field

.field protected segment:Lcom/ironsource/mediationsdk/IronSourceSegment;


# direct methods
.method public constructor <init>(Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->impressionDataListeners:Ljava/util/HashSet;

    .line 30
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->impressionDataListeners:Ljava/util/HashSet;

    .line 31
    new-instance p1, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    invoke-direct {p1}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->adUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    .line 32
    iput-object p2, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->segment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    return-void
.end method


# virtual methods
.method public addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .locals 1
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->impressionDataListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getAuctionFallbackId()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fallback_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAllImpressionDataListeners()V
    .locals 1

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->impressionDataListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .locals 1
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->impressionDataListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected reportImpressionDataToPublisher(Lcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->impressionDataListeners:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    .line 75
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImpressionSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 76
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;->onImpressionSuccess(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    goto :goto_0

    .line 81
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "no auctionResponseItem or listener"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public resetAdInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    return-void
.end method

.method protected resetConfigurations(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->adUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->updateAdUnitCapping(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    return-void
.end method

.method public setAdInfo(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;-><init>(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    :cond_0
    return-void
.end method

.method public setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->segment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    return-void
.end method

.method protected updateConfigurations(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "isAdUnitCapped"

    .line 100
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BaseProgManager;->adUnitCappingManager:Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->updateAdUnitCapping(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    return-void
.end method
