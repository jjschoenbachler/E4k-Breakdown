.class Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$1;
.super Ljava/lang/Object;
.source "ExtensionContext.java"

# interfaces
.implements Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$SetupFinishedListener;


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

    .line 69
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$1;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetupFinished(Ljava/lang/Boolean;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$1;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v0, "INIT_SUCCESSFUL"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext$1;->this$0:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    const-string v0, "INIT_ERROR"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;->access$000(Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
