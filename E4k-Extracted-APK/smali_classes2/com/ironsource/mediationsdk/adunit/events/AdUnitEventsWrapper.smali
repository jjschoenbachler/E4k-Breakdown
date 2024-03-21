.class public Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;
.super Ljava/lang/Object;
.source "AdUnitEventsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;,
        Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;
    }
.end annotation


# instance fields
.field private final NOT_SUPPORTED:I

.field public adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

.field public auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

.field public init:Lcom/ironsource/mediationsdk/adunit/events/Init;

.field public load:Lcom/ironsource/mediationsdk/adunit/events/Load;

.field private mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field private mEventsInterface:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;

.field private mEventsManager:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

.field private mInterstitialEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;",
            ">;"
        }
    .end annotation
.end field

.field private mLevel:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

.field private mRewardedVideoEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;",
            ">;"
        }
    .end annotation
.end field

.field public troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->NOT_SUPPORTED:I

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 45
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mLevel:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    .line 46
    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mEventsInterface:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;

    .line 48
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->chooseEventManager(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 49
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->createEventMapping()V

    .line 51
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/events/Init;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/adunit/events/Init;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->init:Lcom/ironsource/mediationsdk/adunit/events/Init;

    .line 52
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/events/Load;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/adunit/events/Load;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    .line 53
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/events/Auction;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

    .line 54
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    .line 55
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    return-void
.end method

.method private chooseEventManager(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 1

    .line 60
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 61
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mEventsManager:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    return-void

    .line 62
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mEventsManager:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    return-void
.end method

.method private getEventId(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)I
    .locals 2

    .line 102
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mLevel:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;->getEventId(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;)I

    move-result p1

    return p1

    .line 105
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mLevel:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;->getEventId(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method createEventMapping()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->createInterstitialEventMapping()V

    .line 117
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->createRewardedVideoEventMapping()V

    return-void
.end method

.method createInterstitialEventMapping()V
    .locals 7

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    .line 127
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_STARTED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/4 v3, -0x1

    const v4, 0x14188

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_ENDED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x14189

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SESSION_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x961

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->PLACEMENT_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x960

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_REQUEST:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x7d0

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x8fd

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x8fc

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_REQUEST_WATERFALL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x906

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_RESULT_WATERFALL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x907

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    invoke-direct {v2, p0, v3, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    invoke-direct {v2, p0, v3, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x89a

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_OPENED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v5, 0x7d5

    invoke-direct {v2, p0, v3, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_CLOSED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v5, 0x89c

    invoke-direct {v2, p0, v3, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_CLICKED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v5, 0x7d6

    invoke-direct {v2, p0, v3, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v5, 0x7d1

    const/16 v6, 0x7d2

    invoke-direct {v2, p0, v5, v6}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v5, 0x7d4

    const/16 v6, 0x7d3

    invoke-direct {v2, p0, v5, v6}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_FAILED_WITH_REASON:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v5, 0x83e

    const/16 v6, 0x898

    invoke-direct {v2, p0, v5, v6}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_NO_FILL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v5, 0x8a5

    invoke-direct {v2, p0, v3, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v5, 0x834

    const/16 v6, 0x899

    invoke-direct {v2, p0, v5, v6}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x83f

    const/16 v5, 0x89b

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_UNIT_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x8ff

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_NETWORK_ADAPTER_NOT_AVAILABLE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x1405a

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_AD_ADAPTER_NOT_AVAILABLE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x1405b

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_PROVIDER_SETTINGS_MISSING:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x14078

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_BIDDING_DATA_MISSING:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x14079

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x14082

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_INIT_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x14083

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x1408c

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x1408d

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x14096

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_LOAD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x14097

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_SHOW_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x1409a

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_CLOSED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x1409b

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_TIMEOUT:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x14099

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_INTERNAL_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x14098

    const v5, 0x14098

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_ADAPTER_BRIDGE_INTERNAL_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x157c0

    const v5, 0x157c0

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_ADAPTER_REPOSITORY_INTERNAL_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x157c1

    const v5, 0x157c1

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_AUCTION_SUCCESSFUL_RECOVERY_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x157c2

    const v5, 0x157c2

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mInterstitialEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_NOTIFICATION_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x1418d

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method createRewardedVideoEventMapping()V
    .locals 6

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    .line 180
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_STARTED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/4 v3, -0x1

    const v4, 0x13da0

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_ENDED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13da1

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SESSION_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x579

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->PLACEMENT_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x578

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_REQUEST:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x514

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x516

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x515

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_REQUEST_WATERFALL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x51e

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AUCTION_RESULT_WATERFALL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x51f

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    invoke-direct {v2, p0, v3, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->INIT_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    invoke-direct {v2, p0, v3, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_VISIBLE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x4b6

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_OPENED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x3ed

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_CLOSED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x4b3

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_STARTED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x4b4

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_ENDED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x4b5

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_CLICKED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x3ee

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_REWARDED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x3f2

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_AVAILABILITY_CHANGED_TRUE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x457

    const/16 v5, 0x4b7

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_AVAILABILITY_CHANGED_FALSE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x458

    const/16 v5, 0x4b8

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x3e8

    const/16 v5, 0x3e9

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x3eb

    const/16 v5, 0x3ea

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x4b0

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_FAILED_WITH_REASON:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x4c4

    const/16 v5, 0x4bc

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->LOAD_AD_NO_FILL:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x4bd

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x44c

    const/16 v5, 0x4b1

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD_CHANCE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x4b9

    invoke-direct {v2, p0, v3, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->SHOW_AD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x459

    const/16 v5, 0x4b2

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->AD_UNIT_CAPPED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const/16 v4, 0x517

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_NETWORK_ADAPTER_NOT_AVAILABLE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13c72

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_AD_ADAPTER_NOT_AVAILABLE:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13c73

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_PROVIDER_SETTINGS_MISSING:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13c90

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_BIDDING_DATA_MISSING:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13c91

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13c9a

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_INIT_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13c9b

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13ca4

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13ca5

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13cae

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_LOAD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13caf

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_SHOW_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13cb2

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_TIMEOUT:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13cb1

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_CLOSED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v5, 0x13cb3

    invoke-direct {v2, p0, v5, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_TIMEOUT:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_UNEXPECTED_TIMEOUT:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_LOAD_FAILED:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13c69

    invoke-direct {v2, p0, v4, v4}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_INTERNAL_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13cb0

    const v5, 0x13cb0

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_ADAPTER_BRIDGE_INTERNAL_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x157c0

    const v5, 0x157c0

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_ADAPTER_REPOSITORY_INTERNAL_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x157c1

    const v5, 0x157c1

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOTING_WATERFALL_OVERHEAD:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13da6

    const v5, 0x13da6

    invoke-direct {v2, p0, v4, v5}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mRewardedVideoEvents:Ljava/util/Map;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;->TROUBLESHOOT_NOTIFICATION_ERROR:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;

    new-instance v2, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;

    const v4, 0x13da5

    invoke-direct {v2, p0, v4, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;-><init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public releaseMemory()V
    .locals 1

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mEventsInterface:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;

    .line 249
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

    .line 250
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->init:Lcom/ironsource/mediationsdk/adunit/events/Init;

    .line 251
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->load:Lcom/ironsource/mediationsdk/adunit/events/Load;

    .line 252
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->adInteraction:Lcom/ironsource/mediationsdk/adunit/events/AdInteraction;

    .line 253
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    return-void
.end method

.method protected sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;J)V

    return-void
.end method

.method protected sendEvent(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;Ljava/util/Map;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->getEventId(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mEventsInterface:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mEventsInterface:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;

    invoke-interface {v2, p1}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsInterface;->getEventsAdditionalDataMap(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEvents;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 89
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 90
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    :cond_2
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p1, v0, p3, p4, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(IJLorg/json/JSONObject;)V

    .line 97
    iget-object p2, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->mEventsManager:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method
