.class public Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;
.super Lcom/unity3d/services/core/reflection/GenericBridge;
.source "BillingClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;
    }
.end annotation


# static fields
.field private static final endConnectionMethodName:Ljava/lang/String; = "endConnection"

.field private static final isFeatureSupportedMethodName:Ljava/lang/String; = "isFeatureSupported"

.field private static final isReadyMethodName:Ljava/lang/String; = "isReady"

.field private static final newBuilderMethodName:Ljava/lang/String; = "newBuilder"

.field private static final queryPurchaseHistoryAsyncMethodName:Ljava/lang/String; = "queryPurchaseHistoryAsync"

.field private static final queryPurchasesAsyncMethodName:Ljava/lang/String; = "queryPurchasesAsync"

.field private static final querySkuDetailsAsyncMethodName:Ljava/lang/String; = "querySkuDetailsAsync"

.field private static final startConnectionMethodName:Ljava/lang/String; = "startConnection"

.field private static final staticMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final _billingClientInternalInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$1;

    invoke-direct {v0}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$1;-><init>()V

    sput-object v0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->staticMethods:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;

    invoke-direct {v0}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$2;-><init>()V

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/reflection/GenericBridge;-><init>(Ljava/util/Map;)V

    .line 45
    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->_billingClientInternalInstance:Ljava/lang/Object;

    return-void
.end method

.method public static varargs callNonVoidStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->getClassForBridge()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->staticMethods:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getClassForBridge()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "com.android.billingclient.api.BillingClient"

    .line 94
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "newBuilder"

    const/4 v1, 0x1

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->callNonVoidStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;

    invoke-direct {v0, p0}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public endConnection()V
    .locals 3

    const-string v0, "endConnection"

    .line 58
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->_billingClientInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->callVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.billingclient.api.BillingClient"

    return-object v0
.end method

.method public isFeatureSupported(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;
    .locals 4

    const-string v0, "isFeatureSupported"

    .line 62
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->_billingClientInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;

    invoke-direct {v0, p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;-><init>(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 3

    const-string v0, "isReady"

    .line 68
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->_billingClientInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/unity3d/services/store/gpbl/proxies/PurchaseHistoryResponseListenerProxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "queryPurchaseHistoryAsync"

    .line 76
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->_billingClientInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2}, Lcom/unity3d/services/store/gpbl/proxies/PurchaseHistoryResponseListenerProxy;->getProxyInstance()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->callVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public queryPurchasesAsync(Ljava/lang/String;Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "queryPurchasesAsync"

    .line 80
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->_billingClientInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2}, Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;->getProxyInstance()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->callVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public querySkuDetailsAsync(Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge;Lcom/unity3d/services/store/gpbl/proxies/SkuDetailsResponseListenerProxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "querySkuDetailsAsync"

    .line 72
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->_billingClientInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge;->getInternalInstance()Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2}, Lcom/unity3d/services/store/gpbl/proxies/SkuDetailsResponseListenerProxy;->getProxyInstance()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->callVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public startConnection(Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "startConnection"

    .line 54
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->_billingClientInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;->getProxyInstance()Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;->callVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
