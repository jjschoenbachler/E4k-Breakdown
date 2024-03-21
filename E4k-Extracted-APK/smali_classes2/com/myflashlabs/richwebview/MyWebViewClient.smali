.class public Lcom/myflashlabs/richwebview/MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MyWebViewClient.java"


# instance fields
.field private _isListeningToPageStartingEvent:Z

.field private _shouldContinueLoadingTheURL:Z

.field private _urlToBeLoaded:Ljava/lang/String;

.field private _webview:Lcom/myflashlabs/richwebview/MyWebView;


# direct methods
.method public constructor <init>(Lcom/myflashlabs/richwebview/MyWebView;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_isListeningToPageStartingEvent:Z

    .line 21
    iput-boolean v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_shouldContinueLoadingTheURL:Z

    .line 25
    iput-object p1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    return-void
.end method

.method private injectJS()V
    .locals 3

    const-string v0, "injectJS... BEGIN"

    .line 167
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function() {var parent = document.getElementsByTagName(\'head\').item(0);var script = document.createElement(\'script\');script.type = \'text/javascript\';script.innerHTML = window.atob(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    .line 175
    invoke-virtual {v2}, Lcom/myflashlabs/richwebview/MyWebView;->getBridgeJsBase64()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\');parent.appendChild(script)})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/myflashlabs/richwebview/MyWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    :goto_0
    const-string v0, "injectJS... END"

    .line 184
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method private shouldOverride(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "shouldOverrideUrlLoading"

    .line 118
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading, _isListeningToPageStartingEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_isListeningToPageStartingEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading, _shouldContinueLoadingTheURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_shouldContinueLoadingTheURL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_isListeningToPageStartingEvent:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_shouldContinueLoadingTheURL:Z

    if-eqz v0, :cond_1

    .line 130
    iput-boolean v1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_shouldContinueLoadingTheURL:Z

    return v1

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_urlToBeLoaded:Ljava/lang/String;

    .line 138
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    .line 139
    iget-object v1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {v1}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "url"

    .line 140
    iget-object v1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_urlToBeLoaded:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->PAGE_STARTING:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private toTrace(Ljava/lang/String;)V
    .locals 2

    .line 202
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public continueLoadingTheURL()V
    .locals 2

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_shouldContinueLoadingTheURL:Z

    .line 197
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    iget-object v1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_urlToBeLoaded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/myflashlabs/richwebview/MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/MyWebViewClient;->injectJS()V

    .line 100
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 104
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    .line 105
    iget-object v1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {v1}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "url"

    .line 106
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    sget-object p2, Lcom/myflashlabs/richwebview/ExConst;->PAGE_FINISHED:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_shouldContinueLoadingTheURL:Z

    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 84
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "id"

    .line 85
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {v0}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "url"

    .line 86
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    sget-object p2, Lcom/myflashlabs/richwebview/ExConst;->PAGE_STARTED:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 64
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "id"

    .line 65
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {v0}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "error"

    .line 66
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    sget-object p2, Lcom/myflashlabs/richwebview/ExConst;->ERROR:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 35
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "id"

    .line 36
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {v0}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "error"

    .line 37
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    sget-object p2, Lcom/myflashlabs/richwebview/ExConst;->ERROR_SSL:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public set_isListeningToPageStartingEvent(Z)V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_isListeningToPageStartingEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebViewClient;->toTrace(Ljava/lang/String;)V

    .line 191
    iput-boolean p1, p0, Lcom/myflashlabs/richwebview/MyWebViewClient;->_isListeningToPageStartingEvent:Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 156
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebViewClient;->shouldOverride(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 162
    invoke-direct {p0, p2}, Lcom/myflashlabs/richwebview/MyWebViewClient;->shouldOverride(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
