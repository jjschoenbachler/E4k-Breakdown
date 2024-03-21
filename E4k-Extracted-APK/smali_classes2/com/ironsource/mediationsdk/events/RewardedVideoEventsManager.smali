.class public Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;
.super Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.source "RewardedVideoEventsManager.java"


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;


# instance fields
.field private mCurrentOWPlacement:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;-><init>()V

    const-string v0, "outcome"

    .line 16
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mFormatterType:Ljava/lang/String;

    const/4 v0, 0x3

    .line 17
    iput v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mAdUnitType:I

    const-string v0, "RV"

    .line 18
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mEventType:Ljava/lang/String;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentOWPlacement:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    .line 25
    sget-object v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->initState()V

    .line 27
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected getCurrentPlacement(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    return-object p1

    .line 72
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentOWPlacement:Ljava/lang/String;

    return-object p1
.end method

.method protected getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
    .locals 2

    .line 57
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getEventAdUnit(I)I

    move-result p1

    .line 58
    sget-object v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->OFFERWALL:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 59
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result p1

    return p1
.end method

.method protected initConnectivitySensitiveEventsSet()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    const/16 v1, 0x4c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected isTriggerEvent(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x202

    if-eq p1, v0, :cond_1

    const/16 v0, 0x131

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4b3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x515

    if-eq p1, v0, :cond_1

    const/16 v0, 0x516

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

.method protected setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
    .locals 2

    .line 64
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentOWPlacement:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0x131

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
