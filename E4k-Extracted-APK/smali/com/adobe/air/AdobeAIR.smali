.class public Lcom/adobe/air/AdobeAIR;
.super Landroid/app/Activity;
.source "AdobeAIR.java"


# static fields
.field private static final PROPERTY_INITIAL_LAUNCH:Ljava/lang/String; = "initialLaunch"

.field private static final TAG:Ljava/lang/String; = "Adobe AIR"


# instance fields
.field public DYNAMIC_URL:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field private mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    const-string v1, "https://www.adobe.com/airgames/5/"

    .line 126
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    return-void
.end method

.method private isInitialLaunch()Z
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initialLaunch"

    const/4 v2, 0x1

    .line 64
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updateSharedPrefForInitialLaunch()V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "initialLaunch"

    const/4 v2, 0x0

    .line 73
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AdobeAIRWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AdobeAIRWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 106
    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AdobeAIRWebView;->goBack()V

    return-void

    .line 121
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iput-object p0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->isInitialLaunch()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "https://www.adobe.com/airgames/4/"

    .line 48
    iput-object p1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->updateSharedPrefForInitialLaunch()V

    .line 52
    :cond_0
    new-instance p1, Lcom/adobe/air/AdobeAIRWebView;

    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/adobe/air/AdobeAIRWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    .line 53
    iget-object p1, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {p1}, Lcom/adobe/air/AdobeAIRWebView;->create()V

    .line 56
    iget-object p1, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AdobeAIRWebView;->loadUrl(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/adobe/air/AdobeAIR;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AdobeAIRWebView;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIRWebView;->setOffline(Z)V

    .line 88
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mGameListingWebView:Lcom/adobe/air/AdobeAIRWebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIRWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
