.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;->onGetProductInfoFinishedListener(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1$1;->this$2:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetProductInfoFinishedListener(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1$1;->this$2:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;->val$result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1$1;->this$2:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;->val$result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 162
    :try_start_0
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 164
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 168
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "details"

    .line 170
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 172
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 175
    :goto_1
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1$1;->this$2:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;

    iget-object p1, p1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;

    iget-object p1, p1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;->onQueryInventoryFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method
