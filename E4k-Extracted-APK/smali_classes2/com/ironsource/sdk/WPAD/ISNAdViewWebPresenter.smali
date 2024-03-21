.class public Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;
.super Ljava/lang/Object;
.source "ISNAdViewWebPresenter.java"

# interfaces
.implements Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final TAG:Ljava/lang/String; = "ISNAdViewWebPresenter"

.field private static final WEBVIEW_IS_NOT_NULL:Ljava/lang/String; = "loadWithUrl | webView is not null"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mAdViewId:Ljava/lang/String;

.field private mCacheDirectory:Ljava/lang/String;

.field private mISAdSize:Lcom/ironsource/sdk/ISNAdSize;

.field private mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/sdk/ISNAdSize;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mActivity:Landroid/app/Activity;

    .line 45
    new-instance p2, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-direct {p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;-><init>()V

    iput-object p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    .line 46
    iget-object p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-virtual {p2, p3}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->setAdViewId(Ljava/lang/String;)V

    .line 47
    iput-object p3, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mAdViewId:Ljava/lang/String;

    .line 48
    iget-object p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-virtual {p2, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->setControllerDelegate(Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;)V

    .line 49
    iput-object p4, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mISAdSize:Lcom/ironsource/sdk/ISNAdSize;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Landroid/webkit/WebView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->createWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->createAdUnitUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mAdViewId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    return-object p1
.end method

.method static synthetic access$502(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->performCleanup()V

    return-void
.end method

.method private createAdUnitUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 232
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->isRelativePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->removePreFixOfRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private createWebView(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->TAG:Ljava/lang/String;

    const-string v1, "ISNAdViewWebPresenter | createWebView"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mWebView:Landroid/webkit/WebView;

    .line 189
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ironsource/sdk/WPAD/ISNAdViewJSInterface;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/WPAD/ISNAdViewJSInterface;-><init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)V

    const-string v2, "containerMsgHandler"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;

    new-instance v2, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;-><init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewWebClient;-><init>(Lcom/ironsource/sdk/WPAD/ISNPresentableAdView$IErrorReportDelegate;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 212
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mWebView:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/ironsource/sdk/utils/WebViewUtils;->setWebViewSettings(Landroid/webkit/WebView;)V

    .line 213
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->setWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method private isRelativePath(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "."

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private declared-synchronized performCleanup()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    const-string v1, ""

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->performCleanup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 181
    monitor-exit p0

    throw v0
.end method

.method private removePreFixOfRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAdViewId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mAdViewId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    return-object v0
.end method

.method public getAdViewSize()Lcom/ironsource/sdk/ISNAdSize;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mISAdSize:Lcom/ironsource/sdk/ISNAdSize;

    return-object v0
.end method

.method public getPresentingView()Landroid/webkit/WebView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handleMessageFromAd(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->handleMessageFromWebView(Ljava/lang/String;)V

    return-void
.end method

.method public loadWithUrl(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77
    sget-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    new-instance v1, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;-><init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized performCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 123
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    sget-object v0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->TAG:Ljava/lang/String;

    const-string v1, "performCleanup"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    new-instance v1, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;-><init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 121
    monitor-exit p0

    throw p1
.end method

.method public performWebViewAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "action parameter empty"

    .line 160
    invoke-virtual {p0, p3, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to perform WebView Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "onPause"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 169
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "onResume"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 172
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "action not supported"

    .line 174
    invoke-virtual {p0, p3, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "failed to perform action"

    .line 177
    invoke-virtual {p0, p3, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendHandleGetViewVisibility(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 115
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendHandleGetViewVisibilityParams(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    sget-object p2, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendHandleGetViewVisibility fail with reason: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendMessageToAd(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mIsnAdViewLogic:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToAdUnit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 108
    sget-object p2, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessageToAd fail message: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    throw p1
.end method

.method public setCacheDirectory(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->mCacheDirectory:Ljava/lang/String;

    return-void
.end method
