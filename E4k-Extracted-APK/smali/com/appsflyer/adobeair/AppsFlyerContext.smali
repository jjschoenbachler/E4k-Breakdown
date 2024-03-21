.class public Lcom/appsflyer/adobeair/AppsFlyerContext;
.super Lcom/adobe/fre/FREContext;


# static fields
.field public static final EXTENSION_TYPE:Ljava/lang/String; = "AIR"


# instance fields
.field private devKey:Ljava/lang/String;

.field private lastConversionData:Ljava/lang/String;


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

.method public getDevKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/adobeair/AppsFlyerContext;->devKey:Ljava/lang/String;

    return-object v0
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

    const-string v1, "init"

    new-instance v2, Lcom/appsflyer/adobeair/functions/AppsFlyerInit;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/AppsFlyerInit;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerConversionListener"

    new-instance v2, Lcom/appsflyer/adobeair/functions/RegisterConversionListener;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/RegisterConversionListener;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "start"

    new-instance v2, Lcom/appsflyer/adobeair/functions/Start;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/Start;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stop"

    new-instance v2, Lcom/appsflyer/adobeair/functions/Stop;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/Stop;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isStopped"

    new-instance v2, Lcom/appsflyer/adobeair/functions/IsStopped;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/IsStopped;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logEvent"

    new-instance v2, Lcom/appsflyer/adobeair/functions/LogEvent;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/LogEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerUninstall"

    new-instance v2, Lcom/appsflyer/adobeair/functions/RegisterUninstall;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/RegisterUninstall;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCurrency"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetCurrency;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetCurrency;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setAndroidIdData"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetAndroidIdData;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetAndroidIdData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setImeiData"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetImeiData;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetImeiData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCollectAndroidID"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetCollectAndroidID;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetCollectAndroidID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCollectIMEI"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetCollectIMEI;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetCollectIMEI;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getAppsFlyerUID"

    new-instance v2, Lcom/appsflyer/adobeair/functions/GetAppsFlyerUID;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/GetAppsFlyerUID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "waitForCustomerUserID"

    new-instance v2, Lcom/appsflyer/adobeair/functions/WaitForCustomerUserID;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/WaitForCustomerUserID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startWithCUID"

    new-instance v2, Lcom/appsflyer/adobeair/functions/StartWithCUID;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/StartWithCUID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setDebug"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetDebug;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetDebug;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setResolveDeepLinkURLs"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetResolveDeepLinkURLsFunction;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetResolveDeepLinkURLsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "validateAndLogInAppPurchase"

    new-instance v2, Lcom/appsflyer/adobeair/functions/ValidateAndLogInAppPurchaseFunction;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/ValidateAndLogInAppPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerValidatorListener"

    new-instance v2, Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "useReceiptValidationSandbox"

    new-instance v2, Lcom/appsflyer/adobeair/functions/UseReceiptValidationSandboxFunction;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/UseReceiptValidationSandboxFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setOneLinkCustomDomain"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetOneLinkCustomDomain;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetOneLinkCustomDomain;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "performOnAppAttribution"

    new-instance v2, Lcom/appsflyer/adobeair/functions/PerformOnAppAttribution;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/PerformOnAppAttribution;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setSharingFilter"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetSharingFilter;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetSharingFilter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setSharingFilterForAllPartners"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetSharingFilterForAllPartners;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetSharingFilterForAllPartners;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCustomerUserId"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetCustomerUserId;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetCustomerUserId;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUserEmails"

    new-instance v2, Lcom/appsflyer/adobeair/functions/SetUserEmails;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/SetUserEmails;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "waitForATTUserAuthorization"

    new-instance v2, Lcom/appsflyer/adobeair/functions/waitForATTUserAuthorization;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/waitForATTUserAuthorization;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disableSKAdNetwork"

    new-instance v2, Lcom/appsflyer/adobeair/functions/disableSKAdNetwork;

    invoke-direct {v2}, Lcom/appsflyer/adobeair/functions/disableSKAdNetwork;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getLastConversionData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/adobeair/AppsFlyerContext;->lastConversionData:Ljava/lang/String;

    return-object v0
.end method

.method public setDevKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/adobeair/AppsFlyerContext;->devKey:Ljava/lang/String;

    return-void
.end method

.method public setLastConversionData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/adobeair/AppsFlyerContext;->lastConversionData:Ljava/lang/String;

    return-void
.end method
