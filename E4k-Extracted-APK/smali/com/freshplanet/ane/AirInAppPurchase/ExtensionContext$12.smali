.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$12;
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

    .line 242
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$12;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Lcom/freshplanet/ane/AirInAppPurchase/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$12;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$400(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;

    move-result-object p1

    iget-object p2, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$12;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-static {p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$800(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;)Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;->queryPurchases(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;)V

    const/4 p1, 0x0

    return-object p1
.end method
