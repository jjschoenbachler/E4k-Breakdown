.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$2;
.super Ljava/lang/Object;
.source "ExtensionContext.java"

# interfaces
.implements Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$PurchaseFinishedListener;


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

    .line 79
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$2;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3

    .line 82
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$2;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v0, "PURCHASE_SUCCESSFUL"

    invoke-static {p1, v0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No data received for purchase error! Stack trace: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$2;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v0, "PURCHASE_ERROR"

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$2;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const/4 v2, 0x6

    invoke-static {v1, v2, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
