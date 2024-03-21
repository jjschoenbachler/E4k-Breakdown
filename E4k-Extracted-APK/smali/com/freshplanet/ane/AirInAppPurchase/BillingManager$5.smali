.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->getProductInfo(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;

.field final synthetic val$params:Lcom/android/billingclient/api/SkuDetailsParams;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;->val$params:Lcom/android/billingclient/api/SkuDetailsParams;

    iput-object p3, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$200(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)V

    .line 205
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;->val$params:Lcom/android/billingclient/api/SkuDetailsParams;

    new-instance v2, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5$1;

    invoke-direct {v2, p0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;->onGetProductInfoFinishedListener(Ljava/util/List;)V

    :goto_0
    return-void
.end method
