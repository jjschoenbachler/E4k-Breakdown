.class public Lcom/goodgamestudios/extension/functions/ShowConsentDialogFunction;
.super Ljava/lang/Object;
.source "ShowConsentDialogFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private alwaysForceShow:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/goodgamestudios/extension/functions/ShowConsentDialogFunction;->alwaysForceShow:Z

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    const-string v0, "ShowConsentDialogFunction"

    .line 28
    invoke-static {v0}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 30
    move-object v0, p1

    check-cast v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    .line 31
    invoke-virtual {v0}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->isOneTrustWebViewInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    iget-boolean v1, p0, Lcom/goodgamestudios/extension/functions/ShowConsentDialogFunction;->alwaysForceShow:Z

    if-nez v1, :cond_1

    .line 41
    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    aget-object v2, p2, v3

    if-eqz v2, :cond_0

    aget-object p2, p2, v3

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result p2
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 47
    sget-object v2, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/adobe/fre/FRETypeMismatchException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p2

    .line 45
    sget-object v2, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/adobe/fre/FREWrongThreadException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p2

    .line 43
    sget-object v2, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/adobe/fre/FREInvalidObjectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/goodgamestudios/extension/GoodGameApplication;

    .line 53
    invoke-virtual {p2, v0}, Lcom/goodgamestudios/extension/GoodGameApplication;->setConsentDialogListener(Lcom/goodgamestudios/extension/ConsentDialogListener;)V

    .line 56
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 57
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/goodgamestudios/extension/ConsentDialogActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "forceShow"

    .line 58
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const-string p1, "OneTrust not initialized! Have you called initOneTrustWebView?"

    .line 33
    sget-object p2, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
