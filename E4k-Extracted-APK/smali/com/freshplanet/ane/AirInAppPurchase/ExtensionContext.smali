.class public Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


# static fields
.field private static final ACKNOWLEDGE_ERROR:Ljava/lang/String; = "ACKNOWLEDGE_ERROR"

.field private static final ACKNOWLEDGE_SUCCESSFUL:Ljava/lang/String; = "ACKNOWLEDGE_SUCCESSFUL"

.field private static final CONSUME_ERROR:Ljava/lang/String; = "CONSUME_ERROR"

.field private static final CONSUME_SUCCESSFUL:Ljava/lang/String; = "CONSUME_SUCCESSFUL"

.field private static final INAPP_INVENTORY_ERROR:Ljava/lang/String; = "INAPP_INVENTORY_ERROR"

.field private static final INAPP_INVENTORY_SUCCESSFUL:Ljava/lang/String; = "INAPP_INVENTORY_SUCCESSFUL"

.field private static final INIT_ERROR:Ljava/lang/String; = "INIT_ERROR"

.field private static final INIT_SUCCESSFUL:Ljava/lang/String; = "INIT_SUCCESSFUL"

.field private static final PRODUCT_INFO_ERROR:Ljava/lang/String; = "PRODUCT_INFO_ERROR"

.field private static final PRODUCT_INFO_RECEIVED:Ljava/lang/String; = "PRODUCT_INFO_RECEIVED"

.field private static final PURCHASE_ERROR:Ljava/lang/String; = "PURCHASE_ERROR"

.field private static final PURCHASE_SUCCESSFUL:Ljava/lang/String; = "PURCHASE_SUCCESSFUL"

.field private static final RESTORE_INFO_ERROR:Ljava/lang/String; = "RESTORE_INFO_ERROR"

.field private static final RESTORE_INFO_RECEIVED:Ljava/lang/String; = "RESTORE_INFO_RECEIVED"

.field private static final SUBS_INVENTORY_ERROR:Ljava/lang/String; = "SUBS_INVENTORY_ERROR"

.field private static final SUBS_INVENTORY_SUCCESSFUL:Ljava/lang/String; = "SUBS_INVENTORY_SUCCESSFUL"

.field private static final TAG:Ljava/lang/String; = "AirInAppPurchase"


# instance fields
.field private _billingManager:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field private _getProductsInfoListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;

.field private _getPurchasesListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

.field private _inAppPurchasesResponseListener:Lcom/android/billingclient/api/PurchasesResponseListener;

.field private _initLibListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;

.field private _purchaseFinishedListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

.field private _purchaseUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private _subsPurchasesResponseListener:Lcom/android/billingclient/api/PurchasesResponseListener;

.field private acknowledgePurchase:Lcom/adobe/fre/FREFunction;

.field private consumePurchase:Lcom/adobe/fre/FREFunction;

.field private getAllInventory:Lcom/adobe/fre/FREFunction;

.field private getProductsInfo:Lcom/adobe/fre/FREFunction;

.field private initLib:Lcom/adobe/fre/FREFunction;

.field private isServiceRunning:Lcom/adobe/fre/FREFunction;

.field private makePurchase:Lcom/adobe/fre/FREFunction;

.field private makeSubscription:Lcom/adobe/fre/FREFunction;

.field private restoreTransaction:Lcom/adobe/fre/FREFunction;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 327
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 69
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$1;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_initLibListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;

    .line 79
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$2;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$2;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_purchaseFinishedListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    .line 98
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_purchaseUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 112
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$4;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$4;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_inAppPurchasesResponseListener:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 124
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$5;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$5;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_subsPurchasesResponseListener:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 136
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$6;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$6;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_getProductsInfoListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;

    .line 147
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$7;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$7;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_getPurchasesListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

    .line 161
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->initLib:Lcom/adobe/fre/FREFunction;

    .line 179
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$9;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$9;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->getProductsInfo:Lcom/adobe/fre/FREFunction;

    .line 198
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->makePurchase:Lcom/adobe/fre/FREFunction;

    .line 219
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->makeSubscription:Lcom/adobe/fre/FREFunction;

    .line 242
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$12;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$12;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->restoreTransaction:Lcom/adobe/fre/FREFunction;

    .line 249
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->consumePurchase:Lcom/adobe/fre/FREFunction;

    .line 275
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->acknowledgePurchase:Lcom/adobe/fre/FREFunction;

    .line 302
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$15;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$15;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->isServiceRunning:Lcom/adobe/fre/FREFunction;

    .line 318
    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$16;

    invoke-direct {v0, p0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$16;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V

    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->getAllInventory:Lcom/adobe/fre/FREFunction;

    return-void
.end method

.method private _dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 364
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AirInAppPurchase"

    const-string v0, "dispatchStatusEventAsync"

    .line 366
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->createErrorJson(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->handleConsumeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/android/billingclient/api/PurchasesResponseListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_inAppPurchasesResponseListener:Lcom/android/billingclient/api/PurchasesResponseListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/android/billingclient/api/PurchasesResponseListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_subsPurchasesResponseListener:Lcom/android/billingclient/api/PurchasesResponseListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->createJsonDataFromPurchaseList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_purchaseFinishedListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_billingManager:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_billingManager:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_initLibListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_purchaseUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_getProductsInfoListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_getPurchasesListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->getTokenFromReceipt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createErrorJson(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 381
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "errorCode"

    .line 383
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "errorMessage"

    .line 384
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 386
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private createJsonDataFromPurchaseList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 374
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_billingManager:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-virtual {p1, v0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->purchaseListToJSON(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTokenFromReceipt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 331
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "signedData"

    .line 332
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 337
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "purchaseToken"

    .line 338
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 335
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "null signedData"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleConsumeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 344
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "productId"

    .line 346
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "purchaseToken"

    .line 347
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 350
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p2, 0x6

    .line 352
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->createErrorJson(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    move-object p3, p4

    .line 354
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_billingManager:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_billingManager:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-virtual {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->_billingManager:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "initLib"

    .line 414
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->initLib:Lcom/adobe/fre/FREFunction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getProductsInfo"

    .line 415
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->getProductsInfo:Lcom/adobe/fre/FREFunction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "makePurchase"

    .line 416
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->makePurchase:Lcom/adobe/fre/FREFunction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "makeSubscription"

    .line 417
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->makeSubscription:Lcom/adobe/fre/FREFunction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "restoreTransaction"

    .line 418
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->restoreTransaction:Lcom/adobe/fre/FREFunction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "consumePurchase"

    .line 419
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->consumePurchase:Lcom/adobe/fre/FREFunction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "acknowledgePurchase"

    .line 420
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->acknowledgePurchase:Lcom/adobe/fre/FREFunction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isServiceRunning"

    .line 421
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->isServiceRunning:Lcom/adobe/fre/FREFunction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getInventory"

    .line 422
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->getAllInventory:Lcom/adobe/fre/FREFunction;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
