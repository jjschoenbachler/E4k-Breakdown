.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13$1;
.super Ljava/lang/Object;
.source "ExtensionContext.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13$1;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3

    .line 265
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;

    iget-object p1, p1, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13$1;->val$productId:Ljava/lang/String;

    const-string v1, "CONSUME_SUCCESSFUL"

    const-string v2, "CONSUME_ERROR"

    invoke-static {p1, v0, p2, v1, v2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$1000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;

    iget-object p2, p2, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v0, "CONSUME_ERROR"

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;

    iget-object v1, v1, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

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
