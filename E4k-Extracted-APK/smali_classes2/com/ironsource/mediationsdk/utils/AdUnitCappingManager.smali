.class public Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;
.super Ljava/lang/Object;
.source "AdUnitCappingManager.java"


# instance fields
.field private mIsBannerCapped:Z

.field private mIsInterstitialCapped:Z

.field private mIsRewardedVideoCapped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->mIsRewardedVideoCapped:Z

    .line 13
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->mIsInterstitialCapped:Z

    .line 14
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->mIsBannerCapped:Z

    return-void
.end method


# virtual methods
.method public isAdUnitCapped(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z
    .locals 1

    .line 28
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_0

    .line 29
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->mIsRewardedVideoCapped:Z

    return p1

    .line 30
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_1

    .line 31
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->mIsInterstitialCapped:Z

    return p1

    .line 32
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_2

    .line 33
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->mIsBannerCapped:Z

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updateAdUnitCapping(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    .locals 1

    .line 18
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_0

    .line 19
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->mIsRewardedVideoCapped:Z

    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_1

    .line 21
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->mIsInterstitialCapped:Z

    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_2

    .line 23
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/utils/AdUnitCappingManager;->mIsBannerCapped:Z

    :cond_2
    :goto_0
    return-void
.end method
