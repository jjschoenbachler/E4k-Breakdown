.class public Lcom/bugsnag/ANEBugsnagContext;
.super Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "initialize"

    new-instance v2, Lcom/bugsnag/functions/Initialize;

    invoke-direct {v2}, Lcom/bugsnag/functions/Initialize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setContext"

    new-instance v2, Lcom/bugsnag/functions/SetContext;

    invoke-direct {v2}, Lcom/bugsnag/functions/SetContext;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUser"

    new-instance v2, Lcom/bugsnag/functions/SetUser;

    invoke-direct {v2}, Lcom/bugsnag/functions/SetUser;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setReleaseStage"

    new-instance v2, Lcom/bugsnag/functions/SetReleaseStage;

    invoke-direct {v2}, Lcom/bugsnag/functions/SetReleaseStage;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoNotify"

    new-instance v2, Lcom/bugsnag/functions/AutoNotify;

    invoke-direct {v2}, Lcom/bugsnag/functions/AutoNotify;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crash"

    new-instance v2, Lcom/bugsnag/functions/Crash;

    invoke-direct {v2}, Lcom/bugsnag/functions/Crash;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "addAttribute"

    new-instance v2, Lcom/bugsnag/functions/AddAttribute;

    invoke-direct {v2}, Lcom/bugsnag/functions/AddAttribute;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "removeAttribute"

    new-instance v2, Lcom/bugsnag/functions/RemoveAttribute;

    invoke-direct {v2}, Lcom/bugsnag/functions/RemoveAttribute;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "removeTab"

    new-instance v2, Lcom/bugsnag/functions/RemoveTab;

    invoke-direct {v2}, Lcom/bugsnag/functions/RemoveTab;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getOSVersion"

    new-instance v2, Lcom/bugsnag/functions/GetOSVersion;

    invoke-direct {v2}, Lcom/bugsnag/functions/GetOSVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceModel"

    new-instance v2, Lcom/bugsnag/functions/GetDeviceModel;

    invoke-direct {v2}, Lcom/bugsnag/functions/GetDeviceModel;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceId"

    new-instance v2, Lcom/bugsnag/functions/GetDeviceId;

    invoke-direct {v2}, Lcom/bugsnag/functions/GetDeviceId;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceManufacturer"

    new-instance v2, Lcom/bugsnag/functions/GetDeviceManufacturer;

    invoke-direct {v2}, Lcom/bugsnag/functions/GetDeviceManufacturer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setNotifyURL"

    new-instance v2, Lcom/bugsnag/functions/SetEndpoint;

    invoke-direct {v2}, Lcom/bugsnag/functions/SetEndpoint;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
