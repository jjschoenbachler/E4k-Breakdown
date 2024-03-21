.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;
.super Ljava/lang/Object;
.source "ExtensionContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$ctx:Lcom/adobe/fre/FREContext;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;

    iput-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;->val$ctx:Lcom/adobe/fre/FREContext;

    iput-object p3, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;->val$sku:Ljava/lang/String;

    iput-object p4, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;->val$accountId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 211
    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object v1

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;->val$ctx:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;->val$sku:Ljava/lang/String;

    iget-object v6, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;->val$accountId:Ljava/lang/String;

    const-string v7, "inapp"

    iget-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10$1;->this$1:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;

    iget-object v0, v0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$10;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {v0}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$300(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v8}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->purchaseProduct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;)V

    return-void
.end method
