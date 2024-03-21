.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 211
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;

    iget-object p1, p1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$5;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;

    invoke-interface {p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;->onGetProductInfoFinishedListener(Ljava/util/List;)V

    return-void
.end method
