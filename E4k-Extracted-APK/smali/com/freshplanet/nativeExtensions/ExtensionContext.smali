.class public Lcom/freshplanet/nativeExtensions/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/freshplanet/nativeExtensions/Extension;->context:Lcom/adobe/fre/FREContext;

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

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enableDebug"

    .line 50
    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/EnableDebugFunction;

    invoke-direct {v2}, Lcom/freshplanet/nativeExtensions/functions/EnableDebugFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerPush"

    .line 51
    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;

    invoke-direct {v2}, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setBadgeNb"

    .line 52
    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/SetBadgeValueFunction;

    invoke-direct {v2}, Lcom/freshplanet/nativeExtensions/functions/SetBadgeValueFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendLocalNotification"

    .line 53
    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;

    invoke-direct {v2}, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setIsAppInForeground"

    .line 54
    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/SetIsAppInForegroundFunction;

    invoke-direct {v2}, Lcom/freshplanet/nativeExtensions/functions/SetIsAppInForegroundFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fetchStarterNotification"

    .line 55
    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/FetchStarterNotificationFunction;

    invoke-direct {v2}, Lcom/freshplanet/nativeExtensions/functions/FetchStarterNotificationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cancelLocalNotification"

    .line 56
    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/CancelLocalNotificationFunction;

    invoke-direct {v2}, Lcom/freshplanet/nativeExtensions/functions/CancelLocalNotificationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceNotificationSettings"

    .line 57
    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/GetDeviceNotificationSettingsFunction;

    invoke-direct {v2}, Lcom/freshplanet/nativeExtensions/functions/GetDeviceNotificationSettingsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setFirebaseMessagingAutoInitEnabled"

    .line 58
    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/FirebaseMessagingAutoInitEnabledFunction;

    invoke-direct {v2}, Lcom/freshplanet/nativeExtensions/functions/FirebaseMessagingAutoInitEnabledFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
