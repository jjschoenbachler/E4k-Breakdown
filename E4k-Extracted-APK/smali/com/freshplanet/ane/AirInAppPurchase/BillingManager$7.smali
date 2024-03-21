.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->queryPurchases(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$200(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v2

    new-instance v3, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$1;

    invoke-direct {v3, p0, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 266
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v2

    new-instance v3, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$2;

    invoke-direct {v3, p0, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$2;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 287
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 288
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 292
    iget-object v4, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-virtual {v4, v3}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->purchaseToJSON(Lcom/android/billingclient/api/Purchase;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 294
    iget-object v4, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-virtual {v4, v3}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->purchaseToJSON(Lcom/android/billingclient/api/Purchase;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v0, "purchases"

    .line 298
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;->onQueryPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 302
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;->onQueryPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
