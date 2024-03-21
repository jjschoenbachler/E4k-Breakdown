.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;
.super Ljava/lang/Object;
.source "ExtensionContext.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 102
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$200(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$300(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;->onPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 105
    iget-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v0, "PURCHASE_ERROR"

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const-string v2, "USER_CANCELED"

    invoke-static {v1, p1, v2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v0, "PURCHASE_ERROR"

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$3;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
