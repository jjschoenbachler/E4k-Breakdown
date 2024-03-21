.class Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;
.super Ljava/lang/Object;
.source "AuctionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/AuctionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuctionHttpRequestTask"
.end annotation


# instance fields
.field private final auctionMaxTrials:I

.field private final auctionTrialTimeout:J

.field private final auctionURL:Ljava/net/URL;

.field private final compressRequest:Z

.field private final compressResponse:Z

.field private final encryptionVersion:I

.field private final isEncryptedResponse:Z

.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionId:Ljava/lang/String;

.field private mAuctionListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/mediationsdk/AuctionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigurations:Lorg/json/JSONObject;

.field private mCurrentAuctionTrial:I

.field private mEncryptionVersion:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

.field private mGenericParams:Lorg/json/JSONObject;

.field private mRequestStartTime:J

.field private mTroubleshootingRecoveryErrorCode:I

.field private mTroubleshootingRecoveryErrorMessage:Ljava/lang/String;

.field private mWaterfall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private final requestData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/AuctionEventListener;Ljava/net/URL;Lorg/json/JSONObject;ZIJZZI)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "other"

    .line 224
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    const-string v0, ""

    .line 228
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mTroubleshootingRecoveryErrorMessage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mTroubleshootingRecoveryErrorCode:I

    .line 250
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionListener:Ljava/lang/ref/WeakReference;

    .line 251
    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionURL:Ljava/net/URL;

    .line 252
    iput-object p3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->requestData:Lorg/json/JSONObject;

    .line 253
    iput-boolean p4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->isEncryptedResponse:Z

    .line 254
    iput p5, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionMaxTrials:I

    .line 255
    iput-wide p6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionTrialTimeout:J

    .line 256
    iput-boolean p8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->compressRequest:Z

    .line 257
    iput-boolean p9, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->compressResponse:Z

    .line 258
    iput p10, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->encryptionVersion:I

    return-void
.end method

.method private getAuctionKey()Ljava/lang/String;
    .locals 2

    .line 372
    iget v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mEncryptionVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 373
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getInstance()Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 376
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getInstance()Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getMediationKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDecodedResponse(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 475
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 479
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 477
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "decryption error"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDecodedResponseObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->getAuctionKey()Ljava/lang/String;

    move-result-object v0

    .line 439
    iget v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mEncryptionVersion:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "ct"

    goto :goto_0

    :cond_0
    const-string v1, "response"

    .line 440
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 443
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->getDecompressedResponse(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    .line 446
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->getDecodedResponse(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getDecompressedResponse(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 484
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "decrypting and decompressing auction response"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 485
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decryptAndDecompress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 489
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 487
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "decompression error"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleResponse(Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 459
    invoke-direct {p0, v0, p3}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->getDecodedResponseObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 462
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getAuctionDataFromResponse(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;

    move-result-object p1

    .line 464
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getAuctionId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionId:Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getWaterfall()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mWaterfall:Ljava/util/List;

    .line 466
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getGenericNotifications()Lcom/ironsource/mediationsdk/AuctionResponseItem;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 467
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getGenericParams()Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mGenericParams:Lorg/json/JSONObject;

    .line 468
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getConfigurations()Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mConfigurations:Lorg/json/JSONObject;

    .line 469
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getErrorCode()I

    move-result p2

    iput p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 470
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    return-void

    .line 454
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "empty response"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performAuctionRequest()Z
    .locals 9

    .line 263
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestStartTime:J

    const/4 v0, 0x0

    .line 269
    :try_start_0
    iget v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mTroubleshootingRecoveryErrorCode:I

    const/16 v2, 0x3f7

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->encryptionVersion:I

    :goto_0
    iput v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mEncryptionVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 281
    iput v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    iget v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionMaxTrials:I

    if-ge v2, v4, :cond_7

    .line 283
    :try_start_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auction Handler: auction trial "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " out of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionMaxTrials:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " max trials"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v6, v7, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 289
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionURL:Ljava/net/URL;

    iget-wide v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionTrialTimeout:J

    invoke-direct {p0, v2, v6, v7}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->prepareAuctionRequest(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 292
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->requestData:Lorg/json/JSONObject;

    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->compressRequest:Z

    invoke-direct {p0, v2, v1, v6}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->sendAuctionRequest(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;Z)V

    .line 294
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v6, 0xc8

    if-eq v1, v6, :cond_1

    const/16 v6, 0x3e9

    .line 296
    iput v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auction status not 200 error, error code response from server - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 298
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    iget v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    iget v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionMaxTrials:I

    sub-int/2addr v6, v3

    if-ge v1, v6, :cond_6

    .line 303
    iget-wide v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionTrialTimeout:J

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->waitUntilNextTrial(JJ)V

    goto/16 :goto_5

    .line 308
    :cond_1
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 311
    :try_start_3
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->isEncryptedResponse:Z

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->compressResponse:Z

    invoke-direct {p0, v1, v4, v5}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->handleResponse(Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 335
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return v3

    :catch_0
    move-exception v1

    .line 314
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "decryption error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x3eb

    .line 315
    iput v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    const-string v4, "Auction decryption error"

    .line 316
    iput-object v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 318
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "decompression error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x3f0

    .line 319
    iput v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    const-string v4, "Auction decompression error"

    .line 320
    iput-object v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v4, 0x3ea

    .line 323
    iput v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    const-string v4, "Auction parsing error"

    .line 324
    iput-object v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    :goto_2
    const-string v4, "parsing"

    .line 327
    iput-object v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 329
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auction handle response exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return v0

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 346
    :goto_3
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 348
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    const/16 v2, 0x3e8

    .line 350
    iput v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 351
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    const-string v1, "other"

    .line 352
    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    return v0

    :catch_4
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_4
    if-eqz v2, :cond_5

    .line 340
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    const/16 v4, 0x3ee

    .line 342
    iput v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    const-string v4, "Connection timed out"

    .line 343
    iput-object v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 344
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auction socket timeout exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_6
    :goto_5
    move-object v1, v2

    .line 281
    iget v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    goto/16 :goto_1

    .line 358
    :cond_7
    iget v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->auctionMaxTrials:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    const-string v1, "trials_fail"

    .line 360
    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    return v0

    :catch_5
    move-exception v1

    const/16 v2, 0x3ef

    .line 272
    iput v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 273
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 274
    iput v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    const-string v2, "other"

    .line 275
    iput-object v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 276
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auction request exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return v0
.end method

.method private prepareAuctionRequest(Ljava/net/URL;J)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p2, p2

    .line 427
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string p3, "POST"

    .line 428
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p3, "Content-Type"

    const-string v0, "application/json; charset=utf-8"

    .line 429
    invoke-virtual {p1, p3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x1

    .line 431
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 432
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 495
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 503
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sendAuctionRequest(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 381
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 382
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    .line 385
    iget v3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mEncryptionVersion:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 387
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getInstance()Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getEncryptedSessionKey()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 389
    invoke-virtual {v3}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mTroubleshootingRecoveryErrorMessage:Ljava/lang/String;

    const/16 v6, 0x3f7

    .line 390
    iput v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mTroubleshootingRecoveryErrorCode:I

    .line 392
    iput v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mEncryptionVersion:I

    .line 393
    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get encrypted session key exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 397
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 398
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->getAuctionKey()Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_1

    .line 403
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v6, "compressing and encrypting auction request"

    invoke-virtual {p3, v6}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 404
    invoke-static {v3, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->compressAndEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 407
    :cond_1
    invoke-static {v3, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 412
    :goto_1
    iget p3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mEncryptionVersion:I

    const/4 v3, 0x0

    if-ne p3, v5, :cond_2

    const-string p3, "{\"sk\" : \"%1$s\", \"ct\" : \"%2$s\"}"

    .line 413
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    aput-object p2, v5, v4

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    const-string p3, "{\"request\" : \"%1$s\"}"

    .line 415
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 418
    :goto_2
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 420
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 421
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 422
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private waitUntilNextTrial(JJ)V
    .locals 2

    .line 365
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p3

    sub-long/2addr p1, v0

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 367
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 511
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->performAuctionRequest()Z

    move-result v0

    .line 513
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/ironsource/mediationsdk/AuctionEventListener;

    if-nez v2, :cond_0

    return-void

    .line 518
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestStartTime:J

    sub-long v9, v3, v5

    if-eqz v0, :cond_1

    .line 521
    iget-object v3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mWaterfall:Ljava/util/List;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mGenericParams:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mConfigurations:Lorg/json/JSONObject;

    iget v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/lit8 v8, v0, 0x1

    iget v11, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mTroubleshootingRecoveryErrorCode:I

    iget-object v12, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mTroubleshootingRecoveryErrorMessage:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/ironsource/mediationsdk/AuctionEventListener;->onAuctionSuccess(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/mediationsdk/AuctionResponseItem;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_1
    iget v3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    iget-object v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    iget v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    move-wide v7, v9

    invoke-interface/range {v2 .. v8}, Lcom/ironsource/mediationsdk/AuctionEventListener;->onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_0
    return-void
.end method
