.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$8;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->queryPurchases(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

.field final synthetic val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$8;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$8;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$8;->val$listener:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Service disconnected"

    invoke-interface {v0, v1, v2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;->onQueryPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method
