.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$10;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->purchaseProduct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$10;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$10;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$10;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Service disconnected"

    invoke-interface {v0, v1, v2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;->onPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method
