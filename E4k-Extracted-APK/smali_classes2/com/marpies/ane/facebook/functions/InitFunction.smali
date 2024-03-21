.class public Lcom/marpies/ane/facebook/functions/InitFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "InitFunction.java"

# interfaces
.implements Lcom/facebook/FacebookSdk$InitializeCallback;


# static fields
.field private static final CHROME_PACKAGE:Ljava/lang/String; = "com.android.chrome"

.field private static final CUSTOM_TABS_SERVICE_ACTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    .line 35
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 37
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 39
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 40
    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    .line 41
    aget-object p2, p2, v2

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 42
    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/AIR;->setLogEnabled(Ljava/lang/Boolean;)V

    .line 45
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V

    .line 49
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;->startTracking()V

    .line 51
    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->load(I)V

    return-object v0
.end method

.method public onInitialized()V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> Facebook SDK initialized | v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "sdkInit"

    const-string v1, ""

    .line 60
    invoke-static {v0, v1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
