.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$executeOnError:Ljava/lang/Runnable;

.field final synthetic val$executeOnSuccess:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;->val$executeOnSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;->val$executeOnError:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;->val$executeOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;->val$executeOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 108
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;->val$executeOnSuccess:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;->val$executeOnSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;->val$executeOnError:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$2;->val$executeOnError:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
