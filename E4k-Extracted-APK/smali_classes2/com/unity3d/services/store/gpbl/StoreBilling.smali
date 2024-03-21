.class public Lcom/unity3d/services/store/gpbl/StoreBilling;
.super Ljava/lang/Object;
.source "StoreBilling.java"


# instance fields
.field private final _billingClientBridge:Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/services/store/listeners/IPurchaseUpdatedResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->newBuilder(Landroid/content/Context;)Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;

    invoke-direct {v0, p2}, Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;-><init>(Lcom/unity3d/services/store/listeners/IPurchaseUpdatedResponseListener;)V

    invoke-virtual {p1, v0}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->setListener(Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;)Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->enablePendingPurchases()Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->build()Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/StoreBilling;->_billingClientBridge:Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;

    return-void
.end method


# virtual methods
.method public getPurchaseHistory(Ljava/lang/String;ILcom/unity3d/services/store/listeners/IPurchaseHistoryResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/StoreBilling;->_billingClientBridge:Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;

    new-instance v1, Lcom/unity3d/services/store/gpbl/proxies/PurchaseHistoryResponseListenerProxy;

    invoke-direct {v1, p3, p2}, Lcom/unity3d/services/store/gpbl/proxies/PurchaseHistoryResponseListenerProxy;-><init>(Lcom/unity3d/services/store/listeners/IPurchaseHistoryResponseListener;I)V

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/unity3d/services/store/gpbl/proxies/PurchaseHistoryResponseListenerProxy;)V

    return-void
.end method

.method public getPurchases(Ljava/lang/String;Lcom/unity3d/services/store/listeners/IPurchasesResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/StoreBilling;->_billingClientBridge:Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;

    new-instance v1, Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;

    invoke-direct {v1, p2}, Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;-><init>(Lcom/unity3d/services/store/listeners/IPurchasesResponseListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->queryPurchasesAsync(Ljava/lang/String;Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;)V

    return-void
.end method

.method public getSkuDetails(Ljava/lang/String;Ljava/util/ArrayList;Lcom/unity3d/services/store/listeners/ISkuDetailsResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unity3d/services/store/listeners/ISkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge;->newBuilder()Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p2}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;->setSkuList(Ljava/util/List;)Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;->setType(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;->build()Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/unity3d/services/store/gpbl/StoreBilling;->_billingClientBridge:Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;

    new-instance v0, Lcom/unity3d/services/store/gpbl/proxies/SkuDetailsResponseListenerProxy;

    invoke-direct {v0, p3}, Lcom/unity3d/services/store/gpbl/proxies/SkuDetailsResponseListenerProxy;-><init>(Lcom/unity3d/services/store/listeners/ISkuDetailsResponseListener;)V

    invoke-virtual {p2, p1, v0}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->querySkuDetailsAsync(Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge;Lcom/unity3d/services/store/gpbl/proxies/SkuDetailsResponseListenerProxy;)V

    return-void
.end method

.method public initialize(Lcom/unity3d/services/store/gpbl/IBillingClientStateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/StoreBilling;->_billingClientBridge:Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;

    new-instance v1, Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;

    invoke-direct {v1, p1}, Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;-><init>(Lcom/unity3d/services/store/gpbl/IBillingClientStateListener;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->startConnection(Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;)V

    return-void
.end method

.method public isFeatureSupported(Ljava/lang/String;)I
    .locals 2

    const-string v0, "inapp"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    iget-object p1, p0, Lcom/unity3d/services/store/gpbl/StoreBilling;->_billingClientBridge:Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->isReady()Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "subs"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "subscriptions"

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/StoreBilling;->_billingClientBridge:Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->isFeatureSupported(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->OK:Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    :goto_1
    return v1
.end method
