.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$7;
.super Ljava/lang/Object;
.source "ExtensionContext.java"

# interfaces
.implements Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$QueryPurchasesFinishedListener;


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

    .line 147
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesFinished(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3

    .line 150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v0, "RESTORE_INFO_RECEIVED"

    invoke-static {p1, v0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v0, "RESTORE_INFO_ERROR"

    iget-object v1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$7;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const/4 v2, 0x6

    invoke-static {v1, v2, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$100(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
