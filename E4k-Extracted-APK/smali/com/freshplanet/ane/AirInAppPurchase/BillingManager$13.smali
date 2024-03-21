.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->acknowledgePurchase(Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

.field final synthetic val$purchaseToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;->val$purchaseToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;->val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$200(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)V

    .line 411
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;->val$purchaseToken:Ljava/lang/String;

    .line 412
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;->val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 417
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$13;->val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    invoke-interface {v1, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    :goto_0
    return-void
.end method
