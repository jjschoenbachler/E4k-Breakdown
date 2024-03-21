.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetProductInfoFinishedListener(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 337
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 339
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    .line 340
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$accountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$accountId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$accountId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v1, v1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$oldSkuPurchaseToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$oldSkuPurchaseToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$replaceSkusProrationMode:I

    if-ltz v0, :cond_1

    .line 348
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v1, v1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$oldSkuPurchaseToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldSkuPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 350
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget v1, v1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$replaceSkusProrationMode:I

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setReplaceSkusProrationMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 351
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v1, v1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    goto :goto_0

    .line 356
    :cond_2
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object p1, p1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get productInfo for purchasing skuID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;

    iget-object v2, v2, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$9;->val$skuID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;->onPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
