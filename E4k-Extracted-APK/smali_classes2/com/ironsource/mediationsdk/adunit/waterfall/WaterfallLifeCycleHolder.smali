.class public Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;
.super Ljava/lang/Object;
.source "WaterfallLifeCycleHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final MAX_NUMBER_OF_WATERFALLS:I

.field adInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentWaterfallId:Ljava/lang/String;

.field private final disableLoadWhileShowSupportNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
            "*>;"
        }
    .end annotation
.end field

.field listener:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolderEventListener;

.field private previousWaterfallId:Ljava/lang/String;

.field private final timeToDeleteOldWaterfallAfterAuction:I

.field private final timer:Ljava/util/Timer;

.field waterfalls:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TSmash;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolderEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolderEventListener;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->timer:Ljava/util/Timer;

    const/4 v0, 0x5

    .line 47
    iput v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->MAX_NUMBER_OF_WATERFALLS:I

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->adInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->disableLoadWhileShowSupportNetworks:Ljava/util/List;

    .line 53
    iput p2, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->timeToDeleteOldWaterfallAfterAuction:I

    .line 54
    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->listener:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolderEventListener;

    return-void
.end method

.method private clearCurrentWaterfallData()V
    .locals 3

    .line 204
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    .line 205
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->releaseMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized isPreviousWaterfallShowing()Z
    .locals 2

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isShowingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseLastActiveSmash()V
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->releaseMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->adInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->adInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TSmash;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getCurrentWaterfallId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    return-object v0
.end method

.method public setAdInfo(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .locals 2

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->adInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {v1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;-><init>(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized setLastActiveSmash(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->releaseLastActiveSmash()V

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldAddSmashToWaterfallRequest(Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;)Z
    .locals 3

    monitor-enter p0

    .line 105
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isShowingAd()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_NETWORK:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    if-ne p4, p1, :cond_2

    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    .line 114
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 118
    :cond_2
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    if-eq p4, p1, :cond_3

    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->disableLoadWhileShowSupportNetworks:Ljava/util/List;

    .line 119
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->lastActiveSmash:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;

    .line 120
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getNameForReflection()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 126
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not support load while show and will not be added to the auction request"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_5
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 101
    monitor-exit p0

    throw p1

    :goto_2
    nop

    goto :goto_2
.end method

.method public updateWaterFall(Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TSmash;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating new waterfall with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->clearCurrentWaterfallData()V

    .line 142
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-ne p1, v0, :cond_1

    .line 143
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->isPreviousWaterfallShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ad from previous waterfall "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is still showing - the current waterfall "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " will be deleted instead"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    .line 151
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    .line 156
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder$1;-><init>(Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;Ljava/lang/String;)V

    iget p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->timeToDeleteOldWaterfallAfterAuction:I

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 181
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    .line 186
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_3

    .line 187
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->listener:Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolderEventListener;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/adunit/waterfall/WaterfallLifeCycleHolderEventListener;->maxWaterfallsReached(I)V

    :cond_3
    return-void
.end method
