.class public Lcom/ironsource/mediationsdk/ProgIsSmash;
.super Lcom/ironsource/mediationsdk/ProgSmash;
.source "ProgIsSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;
    }
.end annotation


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

.field private mLoadStartTime:J

.field private mLoadTimeoutSecs:I

.field private mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

.field private mTimer:Ljava/util/Timer;

.field private final mTimerLock:Ljava/lang/Object;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/ProgIsManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 3

    .line 37
    new-instance v0, Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {v0, p3, v1, v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-direct {p0, v0, p6}, Lcom/ironsource/mediationsdk/ProgSmash;-><init>(Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 32
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimerLock:Ljava/lang/Object;

    .line 38
    sget-object p3, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    .line 40
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAppKey:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mUserId:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    .line 45
    iput p5, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadTimeoutSecs:I

    .line 46
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ProgIsSmash;)Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/ProgIsSmash;Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/ProgIsSmash;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/ProgIsSmash;)Lcom/ironsource/mediationsdk/ProgIsManagerListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    return-object p0
.end method

.method private logAdapterCallback(Ljava/lang/String;)V
    .locals 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 3

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternalError(Ljava/lang/String;)V
    .locals 3

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private setCustomParams()V
    .locals 3

    .line 159
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomParams() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    return-void
.end method

.method private startTimer()V
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "start timer"

    .line 322
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 325
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    .line 326
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/ironsource/mediationsdk/ProgIsSmash$1;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/ProgIsSmash$1;-><init>(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    iget v3, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadTimeoutSecs:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 339
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopTimer()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 313
    iput-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    .line 315
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBiddingData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBiddingData exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public initForBidding()V
    .locals 4

    const-string v0, "initForBidding()"

    .line 69
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 71
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setCustomParams()V

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitialForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " initForBidding exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x411

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public isLoadingInProgress()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

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

.method public isReadyToShow()Z
    .locals 3

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isInterstitialReady(Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyToShow exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public loadInterstitial(Ljava/lang/String;)V
    .locals 3

    .line 86
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    const-string v0, "loadInterstitial"

    .line 87
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setIsLoadCandidate(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->startTimer()V

    .line 92
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 93
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitialForBidding(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-ne p1, v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->startTimer()V

    .line 99
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 100
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setCustomParams()V

    .line 101
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAppKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->startTimer()V

    .line 106
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 107
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadInterstitial exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x138d

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 1

    const-string v0, "onInterstitialAdClicked"

    .line 295
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdClicked(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 1

    const-string v0, "onInterstitialAdClosed"

    .line 271
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdClosed(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdLoadFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 250
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 254
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_FAILED:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 255
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 256
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v2, p1, p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;J)V

    return-void
.end method

.method public onInterstitialAdOpened()V
    .locals 1

    const-string v0, "onInterstitialAdOpened"

    .line 263
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdOpened(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 4

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdReady state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 234
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 238
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 239
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 240
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdReady(Lcom/ironsource/mediationsdk/ProgIsSmash;J)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 1

    const-string v0, "onInterstitialAdShowSucceeded"

    .line 279
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdVisible()V
    .locals 1

    const-string v0, "onInterstitialAdVisible"

    .line 303
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdVisible(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialInitFailed error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 217
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 219
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 221
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 223
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v2, p1, p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;J)V

    :cond_1
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialInitSuccess state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 186
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_SUCCESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    goto :goto_0

    .line 189
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 190
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->startTimer()V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialInitSuccess exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x138d

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public setCappedPerSession()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v2, "interstitial"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;Ljava/lang/String;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "showInterstitial exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x40f

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method
