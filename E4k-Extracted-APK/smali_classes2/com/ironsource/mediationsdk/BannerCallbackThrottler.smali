.class public Lcom/ironsource/mediationsdk/BannerCallbackThrottler;
.super Ljava/lang/Object;
.source "BannerCallbackThrottler.java"


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/BannerCallbackThrottler;


# instance fields
.field private mBNDelayLoadFailureNotificationInSeconds:I

.field private mIsWaitingForInvocation:Z

.field private mLastInvoked:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mLastInvoked:J

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mIsWaitingForInvocation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/BannerCallbackThrottler;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->invokeCallback(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sInstance:Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sInstance:Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    .line 21
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sInstance:Lcom/ironsource/mediationsdk/BannerCallbackThrottler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0

    throw v1
.end method

.method private invokeCallback(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mLastInvoked:J

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mIsWaitingForInvocation:Z

    .line 76
    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasPendingInvocation()Z
    .locals 1

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mIsWaitingForInvocation:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    return-void
.end method

.method public sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 5

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mIsWaitingForInvocation:Z

    if-eqz v0, :cond_0

    .line 40
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mLastInvoked:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    .line 44
    iget v2, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mBNDelayLoadFailureNotificationInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->invokeCallback(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    .line 46
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 49
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mIsWaitingForInvocation:Z

    .line 50
    iget v2, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mBNDelayLoadFailureNotificationInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long/2addr v2, v0

    .line 52
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delaying callback by "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BannerCallbackThrottler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler$1;-><init>(Lcom/ironsource/mediationsdk/BannerCallbackThrottler;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postBackgroundTask(Ljava/lang/Runnable;J)V

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDelayLoadFailureNotificationInSeconds(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->mBNDelayLoadFailureNotificationInSeconds:I

    return-void
.end method
