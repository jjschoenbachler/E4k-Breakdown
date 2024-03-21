.class public Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;
.super Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;
.source "InterstitialAdManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager<",
        "Lcom/ironsource/mediationsdk/adunit/smash/InterstitialAdSmash;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
        "*",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    .line 24
    new-instance v10, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v4

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v5

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v6

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getISDelayLoadFailure()I

    move-result v7

    new-instance v9, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    sget-object v12, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeAuctionMs()J

    move-result-wide v13

    .line 37
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionRetryInterval()J

    move-result-wide v15

    const-wide/16 v17, -0x1

    move-object v11, v9

    invoke-direct/range {v11 .. v18}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;JJJ)V

    const/4 v8, -0x1

    move-object v0, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/mediationsdk/utils/AuctionSettings;IIIILcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 24
    invoke-direct {v0, v10, v1, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitInteractionManager;-><init>(Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;Ljava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->createAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

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
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/AdapterRepository;->createAdAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    instance-of p2, p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    if-eqz p2, :cond_0

    .line 67
    :try_start_0
    check-cast p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 70
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

.method protected createSmash(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;ILjava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/InterstitialAdSmash;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/smash/InterstitialAdSmash;"
        }
    .end annotation

    .line 48
    new-instance v10, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    .line 50
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    iget v6, p0, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->mAuctionTrial:I

    iget-object v7, p0, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->mAuctionFallback:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    .line 57
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getSmashLoadTimeout()I

    move-result v9

    move-object v0, v10

    move v3, p3

    move-object v5, p4

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V

    .line 59
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/smash/InterstitialAdSmash;

    invoke-direct {p1, v10, p2, p0}, Lcom/ironsource/mediationsdk/adunit/smash/InterstitialAdSmash;-><init>(Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;Lcom/ironsource/mediationsdk/adunit/manager/listeners/AdUnitInteractionManagerListener;)V

    return-object p1
.end method

.method protected bridge synthetic createSmash(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;ILjava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;
    .locals 0

    .line 20
    check-cast p2, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->createSmash(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdInteractionAdapter;ILjava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/InterstitialAdSmash;

    move-result-object p1

    return-object p1
.end method
