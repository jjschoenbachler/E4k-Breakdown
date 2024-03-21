.class public Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;
.super Ljava/lang/Object;
.source "AdUnitLoadingData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;
    }
.end annotation


# static fields
.field public static final DISABLED:I = -0x1


# instance fields
.field private mLoadingMode:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

.field private mReloadInterval:J

.field private mRetryInterval:J

.field private mTimeToWaitBeforeTrigger:J


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;JJJ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mLoadingMode:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    .line 22
    iput-wide p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mTimeToWaitBeforeTrigger:J

    .line 23
    iput-wide p4, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mRetryInterval:J

    return-void
.end method


# virtual methods
.method public getLoadingMode()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mLoadingMode:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    return-object v0
.end method

.method public getReloadInterval()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mReloadInterval:J

    return-wide v0
.end method

.method public getRetryInterval()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mRetryInterval:J

    return-wide v0
.end method

.method public getTimeToWaitBeforeTrigger()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mTimeToWaitBeforeTrigger:J

    return-wide v0
.end method

.method public isAutomaticMode()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mLoadingMode:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_AFTER_CLOSE:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mLoadingMode:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isManualMode()Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mLoadingMode:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;->mLoadingMode:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL_WITH_AUTOMATIC_RELOAD:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
