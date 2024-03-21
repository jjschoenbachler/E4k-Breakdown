.class public Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;
.super Ljava/lang/Object;
.source "LWSWaterfallLifeCycleHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WaterfallLifeCycleHolder"


# instance fields
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

.field private previousWaterfallId:Ljava/lang/String;

.field private showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

.field private final timeToDeleteOldWaterfallAfterAuction:I

.field private final timer:Ljava/util/Timer;

.field waterfalls:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/LWSProgRvSmash;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->timer:Ljava/util/Timer;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->adInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->disableLoadWhileShowSupportNetworks:Ljava/util/List;

    .line 42
    iput p2, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->timeToDeleteOldWaterfallAfterAuction:I

    return-void
.end method

.method private clearCurrentWaterfallData()V
    .locals 3

    .line 182
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v1, Lcom/ironsource/mediationsdk/ProgSmash;

    .line 183
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgSmash;->releaseMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public areWaterFallsOverMaximum()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAdInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->adInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->adInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

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
            "Lcom/ironsource/mediationsdk/LWSProgRvSmash;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getCurrentWaterfallId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfWaterfalls()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getShowingSmash()Lcom/ironsource/mediationsdk/LWSProgRvSmash;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    return-object v0
.end method

.method public declared-synchronized isPreviousWaterfallShowing()Z
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

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

.method public setAdInfo(Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .locals 2

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->adInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {v1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;-><init>(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized setShowingSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->releaseMemory()V

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldAddSmashToWaterfallRequest(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Z
    .locals 4

    monitor-enter p0

    .line 71
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    if-nez v2, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getLoadWhileShowSupportState()Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_NETWORK:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 95
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getLoadWhileShowSupportState()Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->disableLoadWhileShowSupportNetworks:Ljava/util/List;

    .line 100
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getNameForReflection()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->showingSmash:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 101
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getNameForReflection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getNameForReflection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 107
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not support load while show and will not be added to the auction request"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    xor-int/lit8 p1, v0, 0x1

    .line 109
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    throw p1

    :goto_2
    nop

    goto :goto_2
.end method

.method public updateWaterFall(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/LWSProgRvSmash;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating new waterfall with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->clearCurrentWaterfallData()V

    .line 122
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->waterfalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->isPreviousWaterfallShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad from previous waterfall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is still showing - the current waterfall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " will be deleted instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder$1;-><init>(Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;Ljava/lang/String;)V

    iget p1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->timeToDeleteOldWaterfallAfterAuction:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->previousWaterfallId:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lcom/ironsource/mediationsdk/LWSWaterfallLifeCycleHolder;->currentWaterfallId:Ljava/lang/String;

    return-void
.end method
