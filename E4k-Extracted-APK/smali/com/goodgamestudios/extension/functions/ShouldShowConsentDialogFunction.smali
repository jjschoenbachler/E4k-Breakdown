.class public Lcom/goodgamestudios/extension/functions/ShouldShowConsentDialogFunction;
.super Ljava/lang/Object;
.source "ShouldShowConsentDialogFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    .line 18
    move-object p2, p1

    check-cast p2, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    .line 19
    invoke-virtual {p2}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->isOneTrustWebViewInitialized()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 26
    :try_start_0
    new-instance p2, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->shouldShowBanner()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    sget-object p2, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_1
    return-object p1

    :cond_1
    const-string p1, "OneTrust not initialized! Have you called initOneTrustWebView?"

    .line 21
    sget-object p2, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
