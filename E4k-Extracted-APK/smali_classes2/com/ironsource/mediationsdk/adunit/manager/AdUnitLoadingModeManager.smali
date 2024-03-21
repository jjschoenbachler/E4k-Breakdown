.class public Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;
.super Ljava/lang/Object;
.source "AdUnitLoadingModeManager.java"


# instance fields
.field private mListener:Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;

.field private mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    .line 16
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;)Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;

    return-object p0
.end method

.method private stopTimer()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private trigger(J)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->stopTimer()V

    .line 56
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mTimer:Ljava/util/Timer;

    .line 57
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager$1;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public loadError()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-eq v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getRetryInterval()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->trigger(J)V

    :cond_0
    return-void
.end method

.method public showEnded()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_AFTER_CLOSE:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getTimeToWaitBeforeTrigger()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->trigger(J)V

    :cond_0
    return-void
.end method

.method public showError()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->trigger(J)V

    :cond_0
    return-void
.end method

.method public showStarted()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getTimeToWaitBeforeTrigger()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->trigger(J)V

    :cond_0
    return-void
.end method

.method public triggerReload()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL_WITH_AUTOMATIC_RELOAD:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getReloadInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->getReloadInterval()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->trigger(J)V

    :cond_0
    return-void
.end method
