.class public Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;
.super Lcom/unity3d/services/core/reflection/GenericBridge;
.source "BillingClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderBridge"
.end annotation


# static fields
.field private static final buildMethodName:Ljava/lang/String; = "build"

.field private static final enablePendingPurchasesMethodName:Ljava/lang/String; = "enablePendingPurchases"

.field private static final setListenerMethodName:Ljava/lang/String; = "setListener"


# instance fields
.field private _billingClientBuilderInternalInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge$1;

    invoke-direct {v0}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/reflection/GenericBridge;-><init>(Ljava/util/Map;)V

    .line 110
    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->_billingClientBuilderInternalInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "build"

    .line 129
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->_billingClientBuilderInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;

    invoke-direct {v1, v0}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public enablePendingPurchases()Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;
    .locals 3

    const-string v0, "enablePendingPurchases"

    .line 124
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->_billingClientBuilderInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->_billingClientBuilderInternalInstance:Ljava/lang/Object;

    return-object p0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.billingclient.api.BillingClient$Builder"

    return-object v0
.end method

.method public setListener(Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;)Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "setListener"

    .line 119
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->_billingClientBuilderInternalInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;->getProxyInstance()Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/BillingClientBridge$BuilderBridge;->_billingClientBuilderInternalInstance:Ljava/lang/Object;

    return-object p0
.end method
