.class public Lcom/ironsource/mediationsdk/ExpiredAdsManager;
.super Ljava/lang/Object;
.source "ExpiredAdsManager.java"


# static fields
.field public static final DISABLED:I = -0x1


# instance fields
.field private mExpirationTask:Ljava/lang/Runnable;

.field private mExpiredDurationInMinutes:I

.field private mListener:Lcom/ironsource/mediationsdk/AdExpirationListener;

.field private mTimer:Lcom/ironsource/lifecycle/LifecycleSensitiveTimer;


# direct methods
.method public constructor <init>(ILcom/ironsource/mediationsdk/AdExpirationListener;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mExpiredDurationInMinutes:I

    .line 23
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mListener:Lcom/ironsource/mediationsdk/AdExpirationListener;

    .line 24
    iput p1, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mExpiredDurationInMinutes:I

    .line 26
    new-instance p1, Lcom/ironsource/mediationsdk/ExpiredAdsManager$1;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/ExpiredAdsManager$1;-><init>(Lcom/ironsource/mediationsdk/ExpiredAdsManager;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mExpirationTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ExpiredAdsManager;)Lcom/ironsource/mediationsdk/AdExpirationListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mListener:Lcom/ironsource/mediationsdk/AdExpirationListener;

    return-object p0
.end method


# virtual methods
.method public cancelExpirationTimer()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mTimer:Lcom/ironsource/lifecycle/LifecycleSensitiveTimer;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "canceling expiration timer"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mTimer:Lcom/ironsource/lifecycle/LifecycleSensitiveTimer;

    invoke-virtual {v0}, Lcom/ironsource/lifecycle/LifecycleSensitiveTimer;->invalidate()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mTimer:Lcom/ironsource/lifecycle/LifecycleSensitiveTimer;

    :cond_0
    return-void
.end method

.method public enabled()Z
    .locals 1

    .line 76
    iget v0, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mExpiredDurationInMinutes:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startExpirationTimer(J)V
    .locals 7

    .line 41
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 43
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 44
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mExpiredDurationInMinutes:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->cancelExpirationTimer()V

    .line 49
    new-instance p1, Lcom/ironsource/lifecycle/LifecycleSensitiveTimer;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mExpirationTask:Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-direct {p1, v2, v3, p2, v0}, Lcom/ironsource/lifecycle/LifecycleSensitiveTimer;-><init>(JLjava/lang/Runnable;Z)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mTimer:Lcom/ironsource/lifecycle/LifecycleSensitiveTimer;

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xe

    long-to-int v1, v2

    .line 52
    invoke-virtual {p1, p2, v1}, Ljava/util/Calendar;->add(II)V

    .line 53
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded ads will expire on: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%.2f"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v2, v2

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " minutes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "no delay - onAdExpired called"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->mListener:Lcom/ironsource/mediationsdk/AdExpirationListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/AdExpirationListener;->onAdExpired()V

    :cond_1
    :goto_0
    return-void
.end method
