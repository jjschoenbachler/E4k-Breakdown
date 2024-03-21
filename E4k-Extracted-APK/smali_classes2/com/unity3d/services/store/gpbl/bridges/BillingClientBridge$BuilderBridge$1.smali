.class Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge$1;
.super Ljava/util/HashMap;
.source "BillingClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "setListener"

    const/4 v1, 0x1

    .line 106
    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {}, Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;->getProxyListenerClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enablePendingPurchases"

    .line 107
    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "build"

    .line 108
    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
