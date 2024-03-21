.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$9;
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

    .line 179
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$9;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    const/4 p1, 0x0

    .line 184
    aget-object v0, p2, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    aget-object p1, p2, p1

    check-cast p1, Lcom/adobe/fre/FREArray;

    invoke-virtual {p0, p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$9;->getListOfStringFromFREArray(Lcom/adobe/fre/FREArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v0, 0x1

    .line 189
    aget-object v2, p2, v0

    if-eqz v2, :cond_1

    .line 190
    aget-object p2, p2, v0

    check-cast p2, Lcom/adobe/fre/FREArray;

    invoke-virtual {p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$9;->getListOfStringFromFREArray(Lcom/adobe/fre/FREArray;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$9;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object v0

    iget-object v2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$9;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$700(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->queryInventory(Ljava/util/List;Ljava/util/List;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryInventoryFinishedListener;)V

    return-object v1
.end method
