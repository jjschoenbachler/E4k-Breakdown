.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->queryInventory(Ljava/util/List;Ljava/util/List;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;

.field final synthetic val$skuList:Ljava/util/List;

.field final synthetic val$skuSubsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/util/List;Ljava/util/List;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->val$skuList:Ljava/util/List;

    iput-object p3, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->val$skuSubsList:Ljava/util/List;

    iput-object p4, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$200(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->val$skuList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 140
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v1

    new-instance v3, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;

    invoke-direct {v3, p0, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;Ljava/util/List;)V

    invoke-static {v2, v1, v3}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$300(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;->onQueryInventoryFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
