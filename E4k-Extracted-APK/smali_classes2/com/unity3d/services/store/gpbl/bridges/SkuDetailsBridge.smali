.class public Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;
.super Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;
.source "SkuDetailsBridge.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge$1;

    invoke-direct {v0}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.billingclient.api.SkuDetails"

    return-object v0
.end method
