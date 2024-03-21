.class public Lcom/myflashlabs/richwebview/MyWebView;
.super Landroid/webkit/WebView;
.source "MyWebView.java"


# instance fields
.field private _bridgeJsBase64:Ljava/lang/String;

.field private _chromeClient:Lcom/myflashlabs/richwebview/MyWebChromeClient;

.field private _geolocationEnabled:Z

.field private _jsHandler:Lcom/myflashlabs/richwebview/NativeBridge;

.field private _webviewClient:Lcom/myflashlabs/richwebview/MyWebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/myflashlabs/richwebview/MyWebView;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method private toTrace(Ljava/lang/String;)V
    .locals 2

    .line 196
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBridgeJsBase64()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebView;->_bridgeJsBase64:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_chrome()Lcom/myflashlabs/richwebview/MyWebChromeClient;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebView;->_chromeClient:Lcom/myflashlabs/richwebview/MyWebChromeClient;

    return-object v0
.end method

.method public getClient_webview()Lcom/myflashlabs/richwebview/MyWebViewClient;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebView;->_webviewClient:Lcom/myflashlabs/richwebview/MyWebViewClient;

    return-object v0
.end method

.method public getGeolocationEnabled()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/myflashlabs/richwebview/MyWebView;->_geolocationEnabled:Z

    return v0
.end method

.method public get_jsHandler()Lcom/myflashlabs/richwebview/NativeBridge;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebView;->_jsHandler:Lcom/myflashlabs/richwebview/NativeBridge;

    return-object v0
.end method

.method public listenToScrollingEvent(Z)V
    .locals 2

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 205
    new-instance p1, Lcom/myflashlabs/richwebview/MyWebView$1;

    invoke-direct {p1, p0}, Lcom/myflashlabs/richwebview/MyWebView$1;-><init>(Lcom/myflashlabs/richwebview/MyWebView;)V

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 231
    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    const-string v0, "onAttachedToWindow"

    .line 92
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 97
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    const-string v0, "onDetachedFromWindow"

    .line 98
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    .line 101
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 102
    invoke-virtual {p0}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExConst.WEBVIEW_DETACHED_FROM_WINDOW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/myflashlabs/richwebview/ExConst;->WEBVIEW_DETACHED_FROM_WINDOW:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFocusChanged, focused: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 124
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    const-string p1, ""

    if-eqz p2, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "GONE"

    goto :goto_0

    :cond_1
    const-string p1, "INVISIBLE"

    goto :goto_0

    :cond_2
    const-string p1, "VISIBLE"

    .line 140
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged, visibility: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 74
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 75
    invoke-virtual {p0}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hasWindowFocus"

    .line 76
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExConst.WINDOW_FOCUS_CHANGED: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    const-string v0, ""

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "GONE"

    goto :goto_0

    :cond_1
    const-string v0, "INVISIBLE"

    goto :goto_0

    :cond_2
    const-string v0, "VISIBLE"

    .line 162
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowVisibilityChanged, visibility: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method public setBridgeJs(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 171
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/myflashlabs/richwebview/MyWebView;->_bridgeJsBase64:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->toTrace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setClient_chrome(Lcom/myflashlabs/richwebview/MyWebChromeClient;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/myflashlabs/richwebview/MyWebView;->_chromeClient:Lcom/myflashlabs/richwebview/MyWebChromeClient;

    .line 30
    iget-object p1, p0, Lcom/myflashlabs/richwebview/MyWebView;->_chromeClient:Lcom/myflashlabs/richwebview/MyWebChromeClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setClient_webview(Lcom/myflashlabs/richwebview/MyWebViewClient;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/myflashlabs/richwebview/MyWebView;->_webviewClient:Lcom/myflashlabs/richwebview/MyWebViewClient;

    .line 36
    iget-object p1, p0, Lcom/myflashlabs/richwebview/MyWebView;->_webviewClient:Lcom/myflashlabs/richwebview/MyWebViewClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/myflashlabs/richwebview/MyWebView;->_geolocationEnabled:Z

    return-void
.end method

.method public set_jsHandler(Landroid/app/Activity;Lcom/myflashlabs/richwebview/MyWebView;)V
    .locals 1

    .line 191
    new-instance v0, Lcom/myflashlabs/richwebview/NativeBridge;

    invoke-direct {v0, p1, p2}, Lcom/myflashlabs/richwebview/NativeBridge;-><init>(Landroid/app/Activity;Lcom/myflashlabs/richwebview/MyWebView;)V

    iput-object v0, p0, Lcom/myflashlabs/richwebview/MyWebView;->_jsHandler:Lcom/myflashlabs/richwebview/NativeBridge;

    return-void
.end method
