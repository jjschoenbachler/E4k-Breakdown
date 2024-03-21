.class public Lcom/unity3d/services/core/device/reader/DeviceInfoReaderWithLifecycle;
.super Ljava/lang/Object;
.source "DeviceInfoReaderWithLifecycle.java"

# interfaces
.implements Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;


# instance fields
.field private final _deviceInfoReader:Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;

.field private final _lifecycleCache:Lcom/unity3d/services/core/lifecycle/LifecycleCache;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderWithLifecycle;->_deviceInfoReader:Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;

    .line 15
    iput-object p2, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderWithLifecycle;->_lifecycleCache:Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    return-void
.end method


# virtual methods
.method public getDeviceInfoData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderWithLifecycle;->_deviceInfoReader:Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;

    invoke-interface {v0}, Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;->getDeviceInfoData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "appActive"

    .line 21
    iget-object v2, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderWithLifecycle;->_lifecycleCache:Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    invoke-virtual {v2}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->isAppActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
