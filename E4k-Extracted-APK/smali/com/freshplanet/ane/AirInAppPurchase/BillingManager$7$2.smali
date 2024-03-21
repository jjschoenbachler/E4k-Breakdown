.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$2;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;

.field final synthetic val$purchases:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;Ljava/util/List;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$2;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$2;->val$purchases:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 271
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 273
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 274
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$2;->val$purchases:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    .line 280
    :cond_2
    iget-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$2;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;

    iget-object p2, p2, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;->onQueryPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method
