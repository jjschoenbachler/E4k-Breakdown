.class public abstract Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;
.super Ljava/lang/Object;
.source "BaseAdUnitSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;
.implements Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer$TimeoutInterface;
.implements Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;
.implements Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Listener::Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
        "Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer$TimeoutInterface;",
        "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        "Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;"
    }
.end annotation


# instance fields
.field protected mAdExpirationTimestamp:Ljava/lang/Long;

.field protected mAdUnitSettings:Lorg/json/JSONObject;

.field private mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

.field protected mCurrentAdData:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

.field protected mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

.field protected mDynamicDemandSourceId:Ljava/lang/String;

.field protected mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

.field protected mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "Listener;"
        }
    .end annotation
.end field

.field private mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

.field protected mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

.field protected mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

.field protected mStateLock:Ljava/lang/Object;

.field private mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "**>;",
            "Lcom/ironsource/mediationsdk/model/AdapterConfig;",
            "T",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    .line 74
    iput-object p4, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    .line 75
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p4

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->PROVIDER:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    invoke-direct {p1, p4, v0, p0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    .line 76
    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    .line 77
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getAdUnitSettings()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    .line 78
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    .line 80
    new-instance p1, Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getLoadTimeoutInSeconds()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;-><init>(J)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    .line 82
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mStateLock:Ljava/lang/Object;

    .line 83
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->NONE:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    return-void
.end method

.method private createAdData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
    .locals 3

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userId"

    .line 360
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utilities/IronsourceJsonUtilities;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 362
    new-instance v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-direct {v1, p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method private getProgrammaticValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isWaitingForInitResponse()Z
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadAdInternal()V
    .locals 3

    .line 336
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;->startTimeoutTimer(Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer$TimeoutInterface;)V

    .line 346
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mCurrentAdData:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected error while calling adapter.loadAd() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    .line 354
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v2, 0x1fe

    invoke-virtual {p0, v1, v2, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendLoadFailedEvent(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_2

    .line 580
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    if-ne p1, v0, :cond_0

    .line 581
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {p1, p4, p5, p2}, Lcom/ironsource/mediationsdk/adunit/events/Load;->noFill(JI)V

    goto :goto_0

    .line 583
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 584
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {p1, p4, p5, p2, p3}, Lcom/ironsource/mediationsdk/adunit/events/Load;->failedWithReason(JILjava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {p1, p4, p5, p2}, Lcom/ironsource/mediationsdk/adunit/events/Load;->failed(JI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldAddAuctionParams(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)Z
    .locals 1

    .line 215
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_FAILED_WITH_REASON:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_NO_FILL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_OPENED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_CLOSED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_CLICKED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_REWARDED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected createLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 374
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdExpirationTimestamp()Ljava/lang/Long;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdExpirationTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getAuctionId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentPlacementName()Ljava/lang/String;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventsAdditionalDataMap(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "providerAdapterVersion"

    .line 236
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "providerSDKVersion"

    .line 237
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 239
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not get adapter version for event data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_2
    const-string v1, "spId"

    .line 246
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getSubProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "provider"

    .line 247
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getAdSourceNameForEvents()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "instanceType"

    .line 248
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "programmatic"

    .line 249
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getProgrammaticValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "dynamicDemandSource"

    .line 251
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "sessionDepth"

    .line 255
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getSessionDepth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getGenericParams()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getGenericParams()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "genericParams"

    .line 259
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getGenericParams()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAuctionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "auctionId"

    .line 264
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_4
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->shouldAddAuctionParams(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "auctionTrials"

    .line 270
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAuctionTrial()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAuctionFallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "auctionFallback"

    .line 274
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAuctionFallback()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_5
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getCustomNetwork()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "customNetwork"

    .line 280
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getCustomNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceSignature()Ljava/lang/String;
    .locals 4

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 190
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceType()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getInstanceType()I

    move-result v0

    return v0
.end method

.method public getMaxAdsPerSession()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getMaxAdsPerSession()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isMultipleInstances()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameForReflection()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderNameForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    return-object v0
.end method

.method public isBidder()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->isBidder()Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoadingInProgress()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

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

.method public isReadyToLoad()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowingAd()Z
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 3

    .line 89
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/Load;->loadAd(Z)V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdExpirationTimestamp:Ljava/lang/Long;

    .line 97
    new-instance v0, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    .line 100
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createAdData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mCurrentAdData:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 103
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->NONE:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 111
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadAd - incorrect state while loading, state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/adunit/errors/AdUnitErrorsWrapper;->initFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->onInitFailed(ILjava/lang/String;)V

    return-void

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;->startTimeoutTimer(Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer$TimeoutInterface;)V

    .line 125
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mCurrentAdData:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v0, v1, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V

    goto :goto_1

    .line 130
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadAd - network adapter not available "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->networkAdapterNotAvailable(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/adunit/errors/AdUnitErrorsWrapper;->initFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->onInitFailed(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 111
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAd - exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mSmashData:Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/adunit/errors/AdUnitErrorsWrapper;->initFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->onInitFailed(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 554
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->adClicked(Ljava/lang/String;)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;->onAdClicked(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .locals 9
    .param p1    # Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 510
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;->stopTimeoutTimer()V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v7

    .line 519
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v1, v2, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, v7

    .line 522
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->sendLoadFailedEvent(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    .line 525
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, p0, v7, v8}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;J)V

    return-void

    .line 527
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v1, v2, :cond_2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, v7

    .line 530
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->sendLoadFailedEvent(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    .line 531
    monitor-exit v0

    return-void

    .line 532
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_AD_EXPIRED:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    if-ne p1, v1, :cond_4

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdExpirationTimestamp:Ljava/lang/Long;

    .line 534
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz p1, :cond_3

    .line 535
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    const-string p2, "ad expired for %s"

    new-array p3, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->adExpired(Ljava/lang/String;)V

    .line 537
    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    const-string p1, "unexpected load failed for %s, state - %s, error - %s, %s"

    const/4 v1, 0x4

    .line 539
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 540
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz p2, :cond_5

    .line 541
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedLoadFailed(Ljava/lang/String;)V

    .line 543
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 546
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onAdLoadSuccess()V
    .locals 4

    .line 476
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;->stopTimeoutTimer()V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 485
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v0

    .line 488
    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v3, :cond_1

    .line 489
    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/events/Load;->success(JZ)V

    .line 493
    :cond_1
    sget-object v2, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 496
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;->onAdLoadSuccess(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;J)V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "unexpected load success for %s, state - %s"

    const/4 v1, 0x2

    .line 501
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v1, :cond_4

    .line 503
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedLoadSuccess(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onInitFailed(ILjava/lang/String;)V
    .locals 4

    .line 444
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isWaitingForInitResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;->stopTimeoutTimer()V

    .line 454
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 462
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide p1

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;J)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "unexpected init failed for %s, state - %s, error - %s, %s"

    const/4 v1, 0x4

    .line 467
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 468
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz p2, :cond_3

    .line 469
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedInitFailed(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onInitSuccess()V
    .locals 4

    .line 411
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isWaitingForInitResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;->stopTimeoutTimer()V

    .line 421
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 429
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->loadAdInternal()V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "unexpected init success for %s, state - %s"

    const/4 v1, 0x2

    .line 435
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedInitSuccess(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTimeout()V
    .locals 6

    .line 381
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBidder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isBidder()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v0

    const-string v2, "time out"

    .line 385
    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->isLoadingInProgress()Z

    move-result v4

    const/16 v5, 0x401

    if-eqz v4, :cond_1

    .line 388
    sget-object v4, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {p0, v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V

    .line 391
    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {v4, v0, v1, v5}, Lcom/ironsource/mediationsdk/adunit/events/Load;->failed(JI)V

    .line 393
    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-virtual {v4, v0, v1, v5, v2}, Lcom/ironsource/mediationsdk/adunit/events/Load;->failedWithReason(JILjava/lang/String;)V

    .line 403
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mListener:Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mLoadDuration:Lcom/ironsource/mediationsdk/utils/DurationMeasurement;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/DurationMeasurement;->getMeasuredDuration(Lcom/ironsource/mediationsdk/utils/DurationMeasurement;)J

    move-result-wide v2

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitManagerListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;J)V

    return-void

    :cond_1
    :try_start_1
    const-string v0, "unexpected timeout for %s, state - %s, error - %s"

    const/4 v1, 0x3

    .line 397
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->getInstanceSignature()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->unexpectedTimeout(Ljava/lang/String;)V

    .line 401
    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 403
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public releaseMemory()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->releaseMemory()V

    .line 290
    iput-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapter:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while calling adapter.releaseMemory() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->releaseMemory()V

    .line 299
    iput-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;->unregister()V

    .line 303
    iput-object v1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mTimer:Lcom/ironsource/mediationsdk/timer/SmashTimeoutTimer;

    :cond_2
    return-void
.end method

.method public sendSessionCappedEvent()V
    .locals 2

    .line 158
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;->sessionCapped()V

    :cond_0
    return-void
.end method

.method public setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V
    .locals 1

    .line 173
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getDynamicDemandSourceIdFromServerData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    return-void
.end method

.method protected setState(Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;)V
    .locals 3

    .line 321
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 322
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;->mState:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    return-void
.end method
