.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$6;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->getProductInfo(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$6;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$6;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$6;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;->onGetProductInfoFinishedListener(Ljava/util/List;)V

    return-void
.end method
