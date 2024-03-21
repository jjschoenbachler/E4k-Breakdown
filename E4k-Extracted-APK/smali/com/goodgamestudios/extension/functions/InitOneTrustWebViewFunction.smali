.class public Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction;
.super Ljava/lang/Object;
.source "InitOneTrustWebViewFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    const-string v0, "InitOneTrustWebViewFunction"

    .line 19
    invoke-static {v0}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 22
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 25
    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 28
    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 31
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 32
    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p2

    .line 34
    move-object v1, p1

    check-cast v1, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    .line 35
    new-instance v2, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v2, v0, p2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->initializeOneTrustPublishersSDK(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance p1, Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction$1;

    invoke-direct {p1, p0, v1}, Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction$1;-><init>(Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction;Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;)V

    invoke-virtual {v2, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->downloadOneTrustData(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)V

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing argument 1: appId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing argument 0: jsUrl"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 54
    sget-object p2, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/fre/FRETypeMismatchException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 52
    sget-object p2, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 50
    sget-object p2, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/fre/FREInvalidObjectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
