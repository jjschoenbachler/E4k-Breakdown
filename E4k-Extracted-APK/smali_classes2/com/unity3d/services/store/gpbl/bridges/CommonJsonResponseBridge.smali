.class public abstract Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;
.super Lcom/unity3d/services/core/reflection/GenericBridge;
.source "CommonJsonResponseBridge.java"

# interfaces
.implements Lcom/unity3d/services/store/gpbl/IBillingResponse;


# static fields
.field protected static final getOriginalJsonMethodName:Ljava/lang/String; = "getOriginalJson"


# instance fields
.field private final _internalBridgeRef:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p2}, Lcom/unity3d/services/core/reflection/GenericBridge;-><init>(Ljava/util/Map;)V

    .line 18
    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->_internalBridgeRef:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOriginalJson()Lorg/json/JSONObject;
    .locals 4

    const-string v0, "getOriginalJson"

    .line 23
    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->_internalBridgeRef:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v3}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t parse BillingResponse JSON : %s"

    const/4 v3, 0x1

    .line 28
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
