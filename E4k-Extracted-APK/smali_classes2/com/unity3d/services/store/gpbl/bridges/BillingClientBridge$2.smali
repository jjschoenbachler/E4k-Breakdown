.class Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;
.super Ljava/util/HashMap;
.source "BillingClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;-><init>(Ljava/lang/Object;)V
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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "newBuilder"

    const/4 v1, 0x1

    .line 36
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "startConnection"

    .line 37
    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {}, Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;->getProxyListenerClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "endConnection"

    .line 38
    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "querySkuDetailsAsync"

    const/4 v2, 0x2

    .line 39
    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge;->getClassForBridge()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Lcom/unity3d/services/store/gpbl/proxies/SkuDetailsResponseListenerProxy;->getProxyListenerClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "queryPurchaseHistoryAsync"

    .line 40
    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {}, Lcom/unity3d/services/store/gpbl/proxies/PurchaseHistoryResponseListenerProxy;->getProxyListenerClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "queryPurchasesAsync"

    .line 41
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {}, Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;->getProxyListenerClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isFeatureSupported"

    .line 42
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isReady"

    .line 43
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
