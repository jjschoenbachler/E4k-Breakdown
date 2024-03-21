.class public Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;
.super Ljava/lang/Object;
.source "BillingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;,
        Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;,
        Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;,
        Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;,
        Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;
    }
.end annotation


# instance fields
.field private _billingClient:Lcom/android/billingclient/api/BillingClient;

.field private _context:Landroid/content/Context;

.field private _debugLog:Z

.field private _debugTag:Ljava/lang/String;

.field private _disposed:Z

.field private _setupDone:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_debugLog:Z

    .line 35
    iput-boolean v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_disposed:Z

    const-string v1, "BillingManager"

    .line 36
    iput-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_debugTag:Ljava/lang/String;

    .line 37
    iput-boolean v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_setupDone:Z

    .line 42
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_disposed:Z

    return p0
.end method

.method static synthetic access$102(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_setupDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->checkNotDisposed()V

    return-void
.end method

.method static synthetic access$300(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->getProductInfo(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 522
    iget-boolean v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_disposed:Z

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BillingManager was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProductInfo(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V
    .locals 1

    .line 200
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V

    .line 220
    new-instance p1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$6;

    invoke-direct {p1, p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$6;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V

    .line 227
    invoke-direct {p0, v0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private startServiceConnectionIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_disposed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 102
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method acknowledgePurchase(Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 1

    .line 405
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 423
    new-instance p1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$14;

    invoke-direct {p1, p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$14;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 430
    invoke-direct {p0, v0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method consumePurchase(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 1

    .line 377
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$11;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 393
    new-instance p1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$12;

    invoke-direct {p1, p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$12;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 401
    invoke-direct {p0, v0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method dispose()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    :cond_0
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_disposed:Z

    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .line 517
    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->checkNotDisposed()V

    .line 518
    iput-boolean p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_debugLog:Z

    return-void
.end method

.method enableDebugLogging(ZLjava/lang/String;)V
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->checkNotDisposed()V

    .line 512
    iput-boolean p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_debugLog:Z

    .line 513
    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_debugTag:Ljava/lang/String;

    return-void
.end method

.method getInventory(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 1

    .line 484
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$15;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 496
    new-instance p1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$16;

    invoke-direct {p1, p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$16;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 504
    invoke-direct {p0, v0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method initialize(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 2

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->checkNotDisposed()V

    .line 58
    iget-boolean v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_setupDone:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p2

    .line 62
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p2

    .line 63
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p2

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 64
    iget-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;

    invoke-direct {v0, p0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;)V

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "BillingManager is already set up."

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error initializing BillingManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->logDebug(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 92
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;->SetupFinished(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method isSetupDone()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_setupDone:Z

    return v0
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1

    .line 527
    iget-boolean v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_debugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->_debugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public purchaseListToJSON(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 458
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 459
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 461
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_0

    :try_start_1
    const-string v2, "type"

    .line 463
    invoke-virtual {v3, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 466
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 467
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 468
    invoke-virtual {p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->purchaseToJSON(Lcom/android/billingclient/api/Purchase;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 470
    :cond_1
    invoke-virtual {p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->purchaseToJSON(Lcom/android/billingclient/api/Purchase;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string p1, "purchased"

    .line 474
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pending"

    .line 475
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v3, v2

    .line 477
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-object v3
.end method

.method purchaseProduct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;)V
    .locals 11

    move-object v9, p0

    .line 318
    new-instance v10, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p2

    move-object/from16 v5, p5

    move-object v6, p3

    move v7, p4

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/lang/String;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Activity;)V

    .line 366
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$10;

    move-object/from16 v1, p7

    invoke-direct {v0, p0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$10;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;)V

    .line 373
    invoke-direct {p0, v10, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public purchaseToJSON(Lcom/android/billingclient/api/Purchase;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 437
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "signedData"

    .line 438
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "signature"

    .line 439
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, ""

    .line 443
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 444
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    const-string p1, "productId"

    .line 446
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "receiptType"

    const-string v0, "GooglePlay"

    .line 447
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "receipt"

    .line 448
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v0

    .line 450
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v2
.end method

.method queryInventory(Ljava/util/List;Ljava/util/List;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/util/List;Ljava/util/List;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;)V

    .line 189
    new-instance p1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$4;

    invoke-direct {p1, p0, p3}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$4;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;)V

    .line 196
    invoke-direct {p0, v0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method queryPurchases(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;)V
    .locals 2

    .line 231
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;

    invoke-direct {v0, p0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;)V

    .line 307
    new-instance v1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$8;

    invoke-direct {v1, p0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$8;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;)V

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
