.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;
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

    .line 219
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8

    const/4 v0, 0x0

    .line 223
    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    .line 224
    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    .line 225
    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)I

    move-result v6

    const/4 v0, 0x3

    .line 226
    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_0

    .line 229
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string p2, "PURCHASE_ERROR"

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const/4 v1, 0x6

    const-string v2, "null purchaseId"

    invoke-static {v0, v1, v2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$11;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
