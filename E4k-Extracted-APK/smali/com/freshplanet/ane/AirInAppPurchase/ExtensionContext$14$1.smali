.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14$1;
.super Ljava/lang/Object;
.source "ExtensionContext.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;

.field final synthetic val$acknowledgeToken:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14$1;->val$productId:Ljava/lang/String;

    iput-object p3, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14$1;->val$acknowledgeToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    .line 292
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;

    iget-object p1, p1, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14$1;->val$productId:Ljava/lang/String;

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14$1;->val$acknowledgeToken:Ljava/lang/String;

    const-string v2, "ACKNOWLEDGE_SUCCESSFUL"

    const-string v3, "ACKNOWLEDGE_ERROR"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$1000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v1, "ACKNOWLEDGE_ERROR"

    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;

    iget-object v2, v2, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$14;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
