.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;Ljava/util/List;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetProductInfoFinishedListener(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;->val$result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->val$skuSubsList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string v1, "subs"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 150
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    new-instance v1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1$1;

    invoke-direct {v1, p0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$3$1;)V

    invoke-static {v0, p1, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$300(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V

    return-void
.end method
