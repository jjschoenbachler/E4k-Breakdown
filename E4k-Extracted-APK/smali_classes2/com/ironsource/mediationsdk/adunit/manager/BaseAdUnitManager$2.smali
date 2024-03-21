.class Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;
.super Ljava/lang/Object;
.source "BaseAdUnitManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->performAuction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 723
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionResponseGenericParam:Lorg/json/JSONObject;

    .line 726
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->request()V

    .line 729
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 730
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getProviderList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 736
    new-instance v5, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v7, v7, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;-><init>(Ljava/lang/String;I)V

    .line 737
    iget-object v6, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v6, v6, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    invoke-static {v5, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->access$100(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;Lcom/ironsource/mediationsdk/model/NetworkSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 738
    iget-object v5, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v5, v5, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 739
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v6, v6, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/ironsource/mediationsdk/AdapterRepository;->getNetworkAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v5

    .line 740
    instance-of v6, v5, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;

    if-eqz v6, :cond_2

    .line 742
    :try_start_0
    move-object v6, v5

    check-cast v6, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;->getBiddingData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 744
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v6, v6, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 747
    :cond_1
    iget-object v6, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v6, v6, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v7, v6, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getAdapterVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Missing bidding data"

    invoke-virtual/range {v7 .. v12}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->biddingDataMissing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 750
    iget-object v5, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v5, v5, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v5, v5, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception while calling networkAdapter.getBiddingData - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->internalError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-nez v5, :cond_3

    const-string v2, "could not load network adapter"

    goto :goto_1

    :cond_3
    const-string v2, "network adapter does not implementing AdapterBidderInterface"

    .line 754
    :goto_1
    iget-object v5, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v5, v5, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v5, v5, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->troubleshoot:Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/adunit/events/Troubleshoot;->networkAdapterNotAvailable(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 757
    :cond_4
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v6, v6, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 762
    :cond_5
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auction waterfallString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 765
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 766
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    const-string v2, "auction failed - no candidates"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v0, "No candidates available for auctioning"

    .line 771
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

    const-wide/16 v2, 0x0

    const/16 v4, 0x3ed

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->failed(JILjava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/adunit/errors/AdUnitErrorsWrapper;->loadFailedNoCandidates(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v1

    const-string v2, "no auction candidates"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->access$200(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;ILjava/lang/String;Z)V

    goto :goto_2

    .line 776
    :cond_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mEventsWrapper:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;->auction:Lcom/ironsource/mediationsdk/adunit/events/Auction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/adunit/events/Auction;->requestWaterfall(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    if-eqz v0, :cond_7

    .line 780
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mManagerData:Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v6

    .line 781
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v1, v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v5, v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    iget-object v7, v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual/range {v1 .. v7}, Lcom/ironsource/mediationsdk/AuctionHandler;->executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;ILcom/ironsource/mediationsdk/IronSourceSegment;)V

    goto :goto_2

    .line 783
    :cond_7
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$2;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    const-string v2, "mAuctionHandler is null"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->createLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
