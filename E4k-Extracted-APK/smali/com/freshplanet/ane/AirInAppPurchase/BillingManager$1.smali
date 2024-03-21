.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->initialize(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$setupFinishedListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->val$setupFinishedListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    const-string v1, "BillingManager disconnected"

    invoke-virtual {v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->logDebug(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->val$setupFinishedListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;->SetupFinished(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    const-string v0, "BillingManager connected"

    invoke-virtual {p1, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->logDebug(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->access$102(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Z)Z

    .line 73
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->val$setupFinishedListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;->SetupFinished(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$1;->val$setupFinishedListener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;->SetupFinished(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method
