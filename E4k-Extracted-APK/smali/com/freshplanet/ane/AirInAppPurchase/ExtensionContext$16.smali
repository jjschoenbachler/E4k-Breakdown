.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$16;
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

    .line 318
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$16;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    .line 321
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$16;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object p1

    const-string p2, "inapp"

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$16;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$1100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/android/billingclient/api/PurchasesResponseListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->getInventory(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 322
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$16;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object p1

    const-string p2, "subs"

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$16;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$1200(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/android/billingclient/api/PurchasesResponseListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->getInventory(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    const/4 p1, 0x0

    return-object p1
.end method
