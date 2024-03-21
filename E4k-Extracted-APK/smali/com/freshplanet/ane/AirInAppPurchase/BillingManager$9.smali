.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->purchaseProduct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

.field final synthetic val$oldSkuPurchaseToken:Ljava/lang/String;

.field final synthetic val$productType:Ljava/lang/String;

.field final synthetic val$replaceSkusProrationMode:I

.field final synthetic val$skuID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/lang/String;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$productType:Ljava/lang/String;

    iput-object p3, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    iput-object p4, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$skuID:Ljava/lang/String;

    iput-object p5, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$accountId:Ljava/lang/String;

    iput-object p6, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$oldSkuPurchaseToken:Ljava/lang/String;

    iput p7, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$replaceSkusProrationMode:I

    iput-object p8, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$productType:Ljava/lang/String;

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$productType:Ljava/lang/String;

    const-string v2, "subs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Unknown product type"

    invoke-interface {v1, v2, v3}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;->onPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$productType:Ljava/lang/String;

    const-string v2, "subs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    const-string v2, "subscriptions"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Subscriptions are not available."

    invoke-interface {v1, v2, v3}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;->onPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 333
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$skuID:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$productType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 334
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v1

    new-instance v3, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;

    invoke-direct {v3, p0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;)V

    invoke-static {v2, v1, v3}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$300(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 361
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;->onPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
