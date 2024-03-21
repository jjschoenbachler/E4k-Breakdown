.class public Lcom/ironsource/mediationsdk/AuctionHandler;
.super Ljava/lang/Object;
.source "AuctionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;
    }
.end annotation


# static fields
.field private static final SERVER_REQUEST_TIMEOUT:I = 0x3a98


# instance fields
.field private final AUCTION_INTERNAL_ERROR_LOSS_CODE:Ljava/lang/String;

.field private final AUCTION_LOST_TO_NON_BIDDER_LOSS_CODE:Ljava/lang/String;

.field private final AUCTION_NOT_HIGHEST_RTB_BIDDER_LOSS_CODE:Ljava/lang/String;

.field private final GENERIC_NOTIFICATION:Ljava/lang/String;

.field private final GENERIC_NOTIFICATIONS_DEFAULT_LOSS_CODE:Ljava/lang/String;

.field private mAdUnit:Ljava/lang/String;

.field private mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

.field private mBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

.field private mSessionId:Ljava/lang/String;

.field private mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    .line 46
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->AUCTION_INTERNAL_ERROR_LOSS_CODE:Ljava/lang/String;

    const-string v0, "102"

    .line 47
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->AUCTION_NOT_HIGHEST_RTB_BIDDER_LOSS_CODE:Ljava/lang/String;

    const-string v0, "103"

    .line 48
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->AUCTION_LOST_TO_NON_BIDDER_LOSS_CODE:Ljava/lang/String;

    const-string v0, "102"

    .line 50
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->GENERIC_NOTIFICATIONS_DEFAULT_LOSS_CODE:Ljava/lang/String;

    const-string v0, "GenericNotifications"

    .line 52
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->GENERIC_NOTIFICATION:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAdUnit:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 62
    iput-object p3, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

    .line 63
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method private generateRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;IZLcom/ironsource/mediationsdk/IronSourceSegment;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/AuctionHistory;",
            "IZ",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object v0, p0

    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 184
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getTokenSettings()Lcom/ironsource/mediationsdk/utils/TokenSettings;

    move-result-object v1

    move-object/from16 v2, p7

    .line 185
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/AuctionHandler;->getSegmentDataJson(Lcom/ironsource/mediationsdk/IronSourceSegment;)Lorg/json/JSONObject;

    move-result-object v11

    .line 186
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->isOneToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAdUnit:Ljava/lang/String;

    iget-object v9, v0, Lcom/ironsource/mediationsdk/AuctionHandler;->mBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    move/from16 v4, p6

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v10, v11

    invoke-virtual/range {v2 .. v10}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichTokenOneFlow(Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;ILcom/ironsource/mediationsdk/ISBannerSize;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    .line 189
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    iget-object v8, v0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSessionId:Ljava/lang/String;

    iget-object v9, v0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    iget-object v10, v0, Lcom/ironsource/mediationsdk/AuctionHandler;->mBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v11}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;ILjava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/ISBannerSize;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adUnit"

    .line 190
    iget-object v3, v0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAdUnit:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "doNotEncryptResponse"

    if-eqz p6, :cond_1

    const-string v3, "false"

    goto :goto_0

    :cond_1
    const-string v3, "true"

    .line 191
    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    return-object v1
.end method

.method private getSegmentDataJson(Lcom/ironsource/mediationsdk/IronSourceSegment;)Lorg/json/JSONObject;
    .locals 6

    .line 198
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getSegmentData()Ljava/util/Vector;

    move-result-object p1

    const/4 v1, 0x0

    .line 201
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 203
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 205
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 206
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;ILcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/AuctionHistory;",
            "I",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v14

    move-object/from16 v8, p6

    .line 75
    invoke-direct/range {v1 .. v8}, Lcom/ironsource/mediationsdk/AuctionHandler;->generateRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;IZLcom/ironsource/mediationsdk/IronSourceSegment;)Lorg/json/JSONObject;

    move-result-object v13

    .line 76
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;

    iget-object v11, v9, Lcom/ironsource/mediationsdk/AuctionHandler;->mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

    new-instance v12, Ljava/net/URL;

    iget-object v1, v9, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 78
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 81
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result v15

    iget-object v1, v9, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 82
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTrialsInterval()J

    move-result-wide v16

    iget-object v1, v9, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 83
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->isCompressAuctionRequest()Z

    move-result v18

    iget-object v1, v9, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 84
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->isCompressAuctionResponse()Z

    move-result v19

    iget-object v1, v9, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 85
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getEncryptionVersion()I

    move-result v20

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;-><init>(Lcom/ironsource/mediationsdk/AuctionEventListener;Ljava/net/URL;Lorg/json/JSONObject;ZIJZZI)V

    .line 86
    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {v1, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute auction exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 90
    iget-object v10, v9, Lcom/ironsource/mediationsdk/AuctionHandler;->mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

    const/16 v11, 0x3e8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "other"

    const-wide/16 v15, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/ironsource/mediationsdk/AuctionEventListener;->onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_1
    return-void
.end method

.method public executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;ILcom/ironsource/mediationsdk/IronSourceSegment;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/AuctionHistory;",
            "I",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            "Lcom/ironsource/mediationsdk/ISBannerSize;",
            ")V"
        }
    .end annotation

    .line 67
    iput-object p7, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 68
    invoke-virtual/range {p0 .. p6}, Lcom/ironsource/mediationsdk/AuctionHandler;->executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;ILcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method public reportAuctionLose(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;I",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ")V"
        }
    .end annotation

    const-string v0, "reportAuctionLose"

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 142
    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    const/4 v3, 0x2

    move/from16 v6, p3

    if-ne v6, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v7, p2

    move v4, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v7, p2

    move/from16 v6, p3

    .line 148
    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 150
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getPrice()Ljava/lang/String;

    move-result-object v15

    if-eqz v3, :cond_4

    if-eqz v4, :cond_3

    const-string v8, "102"

    goto :goto_2

    :cond_3
    const-string v8, "103"

    goto :goto_2

    :cond_4
    const-string v8, "1"

    :goto_2
    move-object/from16 v16, v8

    .line 167
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getLurls()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v8

    const-string v14, ""

    move/from16 v10, p3

    move-object/from16 v11, p5

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v14}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v9

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10, v8}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move/from16 v6, p3

    if-eqz p4, :cond_6

    .line 175
    invoke-virtual/range {p4 .. p4}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getLurls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v8

    const-string v12, ""

    const-string v13, "102"

    const-string v14, ""

    move/from16 v10, p3

    move-object/from16 v11, p5

    invoke-virtual/range {v8 .. v14}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v3

    const-string v4, "GenericNotifications"

    invoke-virtual {v3, v0, v4, v2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public reportAuctionLose(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/ProgSmash;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;I",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ")V"
        }
    .end annotation

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/ProgSmash;

    .line 129
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 132
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportAuctionLose(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    return-void
.end method

.method public reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V
    .locals 10

    const-string v0, "reportImpression"

    .line 97
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getBurls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v3

    const-string v7, ""

    const-string v8, ""

    move v5, p2

    move-object v6, p1

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 103
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getBurls()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    const-string v6, ""

    const-string v7, "102"

    move v4, p2

    move-object v5, p1

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    const-string v3, "GenericNotifications"

    invoke-virtual {v2, v0, v3, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public reportLoadSuccess(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;)V
    .locals 10

    const-string v0, "reportLoadSuccess"

    .line 113
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getNurls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v3

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 119
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getNurls()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    const-string v6, ""

    const-string v7, "102"

    const-string v8, ""

    move v4, p2

    move-object v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    const-string v3, "GenericNotifications"

    invoke-virtual {v2, v0, v3, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
