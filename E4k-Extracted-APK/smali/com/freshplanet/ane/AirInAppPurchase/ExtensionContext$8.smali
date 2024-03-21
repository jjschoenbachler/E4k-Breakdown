.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;
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

    .line 161
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const/4 v0, 0x1

    .line 165
    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    .line 167
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->dispose()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    new-instance v1, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$402(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    .line 172
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "AirInAppPurchase"

    invoke-virtual {p1, p2, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->enableDebugLogging(ZLjava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object p1

    iget-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$500(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;

    move-result-object p2

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$8;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$600(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->initialize(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    const/4 p1, 0x0

    return-object p1
.end method
