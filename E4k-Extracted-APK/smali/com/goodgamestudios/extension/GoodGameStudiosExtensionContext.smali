.class public Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "GoodGameStudiosExtensionContext.java"

# interfaces
.implements Lcom/goodgamestudios/extension/ConsentDialogListener;
.implements Lcom/goodgamestudios/extension/AppPermissionDialogListener;


# instance fields
.field private isOneTrustWebViewInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "showSplashScreen"

    .line 64
    new-instance v2, Lcom/goodgamestudios/extension/functions/DisplaySplashScreenFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/DisplaySplashScreenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hideSplashScreen"

    .line 65
    new-instance v2, Lcom/goodgamestudios/extension/functions/HideSplashScreenFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/HideSplashScreenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getReferrer"

    .line 67
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetReferrerFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetReferrerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getAndroidID"

    .line 68
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetAndroidIDFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetAndroidIDFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getInstallerPackageName"

    .line 69
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetInstallerPackageNameFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetInstallerPackageNameFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getCarrierInfo"

    .line 70
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetCarrierInfoFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetCarrierInfoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "immersiveMode"

    .line 71
    new-instance v2, Lcom/goodgamestudios/extension/functions/ImmersiveModeFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/ImmersiveModeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getKeyboardY"

    .line 72
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetKeyboardY;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetKeyboardY;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getKeyboardHeight"

    .line 73
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetKeyboardHeight;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetKeyboardHeight;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceBrand"

    .line 75
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetDeviceBrand;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetDeviceBrand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceModel"

    .line 76
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetDeviceModel;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetDeviceModel;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceName"

    .line 77
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetDeviceName;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetDeviceName;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceProduct"

    .line 78
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetDeviceProduct;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetDeviceProduct;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceHeapSize"

    .line 79
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetDeviceHeapSize;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetDeviceHeapSize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getAndroidSDK"

    .line 80
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetAndroidSDK;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetAndroidSDK;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getAndroidVersion"

    .line 81
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetAndroidVersion;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetAndroidVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceManufacturer"

    .line 82
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetDeviceManufacturer;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetDeviceManufacturer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showRatingDialog"

    .line 83
    new-instance v2, Lcom/goodgamestudios/extension/functions/ShowRatingDialog;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/ShowRatingDialog;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isRatingDialogSupported"

    .line 84
    new-instance v2, Lcom/goodgamestudios/extension/functions/isRatingDialogSupported;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/isRatingDialogSupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDisplayTopCutoutSize"

    .line 85
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetDisplayTopCutoutSize;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetDisplayTopCutoutSize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDisplayBottomCutoutSize"

    .line 86
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetDisplayBottomCutoutSize;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetDisplayBottomCutoutSize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "displayStatusBar"

    .line 87
    new-instance v2, Lcom/goodgamestudios/extension/functions/DisplayStatusBar;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/DisplayStatusBar;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendLog"

    .line 88
    new-instance v2, Lcom/goodgamestudios/extension/functions/SendLogFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/SendLogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getAppleAdvertisingIdentifier"

    .line 90
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetAppleAdvertisingIdentifierFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetAppleAdvertisingIdentifierFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isAdvertisingTrackingEnabled"

    .line 91
    new-instance v2, Lcom/goodgamestudios/extension/functions/IsAdvertisingTrackingEnabledFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/IsAdvertisingTrackingEnabledFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "readResetAccountSettings"

    .line 93
    new-instance v2, Lcom/goodgamestudios/extension/functions/EmptyFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/EmptyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "turnOffResetAccountSettings"

    .line 94
    new-instance v2, Lcom/goodgamestudios/extension/functions/EmptyFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/EmptyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getOSVersion"

    .line 95
    new-instance v2, Lcom/goodgamestudios/extension/functions/EmptyFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/EmptyFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "initOneTrustWebView"

    .line 97
    new-instance v2, Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isOneTrustInitialized"

    .line 98
    new-instance v2, Lcom/goodgamestudios/extension/functions/IsOneTrustInitializedFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/IsOneTrustInitializedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showConsentDialog"

    .line 99
    new-instance v2, Lcom/goodgamestudios/extension/functions/ShowConsentDialogFunction;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/goodgamestudios/extension/functions/ShowConsentDialogFunction;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showOneTrustPreferenceCenter"

    .line 100
    new-instance v2, Lcom/goodgamestudios/extension/functions/ShowConsentDialogFunction;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/goodgamestudios/extension/functions/ShowConsentDialogFunction;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getConsentStatusById"

    .line 101
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetConsentStatusFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetConsentStatusFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shouldShowConsentDialog"

    .line 102
    new-instance v2, Lcom/goodgamestudios/extension/functions/ShouldShowConsentDialogFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/ShouldShowConsentDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setGGSDebugMode"

    .line 103
    new-instance v2, Lcom/goodgamestudios/extension/functions/SetGGSDebugModeFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/SetGGSDebugModeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "addContentDescriptionView"

    .line 104
    new-instance v2, Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "removeContentDescriptionView"

    .line 105
    new-instance v2, Lcom/goodgamestudios/extension/functions/RemoveContentDescriptionViewFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/RemoveContentDescriptionViewFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setContentDescriptionToMainView"

    .line 106
    new-instance v2, Lcom/goodgamestudios/extension/functions/SetContentDescriptionToMainViewFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/SetContentDescriptionToMainViewFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "removeContentDescriptionFromMainView"

    .line 107
    new-instance v2, Lcom/goodgamestudios/extension/functions/RemoveContentDescriptionFromMainViewFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/RemoveContentDescriptionFromMainViewFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setViewClickable"

    .line 108
    new-instance v2, Lcom/goodgamestudios/extension/functions/SetViewClickableFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/SetViewClickableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getNowggAuthToken"

    .line 109
    new-instance v2, Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestAppPermissions"

    .line 110
    new-instance v2, Lcom/goodgamestudios/extension/functions/RequestAppPermissionsFunction;

    invoke-direct {v2}, Lcom/goodgamestudios/extension/functions/RequestAppPermissionsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isOneTrustWebViewInitialized()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->isOneTrustWebViewInitialized:Z

    return v0
.end method

.method public onConsentDialogResolved()V
    .locals 2

    const-string v0, "ONE_TRUST_ALL_SDK_VIEWS_DISMISSED"

    const-string v1, ""

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionDialogResolved(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "APP_GRANT_PERMISSIONS_RESOLVED"

    .line 131
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOneTrustWebViewInitialized(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->isOneTrustWebViewInitialized:Z

    return-void
.end method
