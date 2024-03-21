.class public Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;
.super Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitRewardManager;
.source "RewardedVideoAdManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitRewardManager<",
        "Lcom/ironsource/mediationsdk/adunit/smash/RewardedVideoAdSmash;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;ZLjava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    .line 23
    new-instance v10, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 28
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v4

    .line 29
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v5

    .line 30
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v6

    .line 31
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDelayLoadFailure()I

    move-result v7

    .line 32
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getExpiredDurationInMinutes()I

    move-result v8

    move-object v0, p2

    move v2, p4

    .line 33
    invoke-static {p2, p4}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->createLoadingData(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Z)Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    move-result-object v9

    move-object v0, v10

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/mediationsdk/utils/AuctionSettings;IIIILcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;)V

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 23
    invoke-direct {p0, v10, v1, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitRewardManager;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;Ljava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method private static createLoadingData(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Z)Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;
    .locals 8

    if-eqz p1, :cond_0

    .line 46
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsLoadWhileShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    goto :goto_0

    .line 50
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_AFTER_CLOSE:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    goto :goto_0

    .line 53
    :goto_1
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    .line 55
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeAuctionMs()J

    move-result-wide v2

    .line 56
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionRetryInterval()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;JJJ)V

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->createAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/AdapterRepository;->createAdAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    instance-of p2, p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    if-eqz p2, :cond_0

    .line 82
    :try_start_0
    check-cast p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 84
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception creating adapter - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected createSmash(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;ILjava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/RewardedVideoAdSmash;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/smash/RewardedVideoAdSmash;"
        }
    .end annotation

    .line 63
    new-instance v10, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    .line 65
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    iget v6, p0, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->mAuctionTrial:I

    iget-object v7, p0, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->mAuctionFallback:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    .line 72
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getSmashLoadTimeout()I

    move-result v9

    move-object v0, v10

    move v3, p3

    move-object v5, p4

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V

    .line 74
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/smash/RewardedVideoAdSmash;

    invoke-direct {p1, v10, p2, p0}, Lcom/ironsource/mediationsdk/adunit/smash/RewardedVideoAdSmash;-><init>(Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitRewardManagerListener;)V

    return-object p1
.end method

.method protected bridge synthetic createSmash(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;
    .locals 0

    .line 20
    check-cast p2, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->createSmash(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;ILjava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/RewardedVideoAdSmash;

    move-result-object p1

    return-object p1
.end method
