.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;
.super Lcom/freshplanet/ane/AirInAppPurchase/BaseFunction;
.source "ExtensionContext.java"


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

    .line 249
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    const/4 p1, 0x0

    .line 252
    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 253
    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$900(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 259
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v2, "CONSUME_ERROR"

    iget-object v3, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const/4 v4, 0x6

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v4, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object v1

    new-instance v2, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13$1;

    invoke-direct {v2, p0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$13;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->consumePurchase(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-object v0
.end method
