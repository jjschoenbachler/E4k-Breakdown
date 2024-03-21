.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;
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

    .line 198
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    const/4 v0, 0x0

    .line 202
    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 203
    aget-object p2, p2, v1

    invoke-virtual {p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_0

    .line 206
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string p2, "PURCHASE_ERROR"

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const/4 v1, 0x6

    const-string v2, "null purchaseId"

    invoke-static {v0, v1, v2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;-><init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
