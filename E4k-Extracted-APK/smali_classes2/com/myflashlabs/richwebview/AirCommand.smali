.class public Lcom/myflashlabs/richwebview/AirCommand;
.super Ljava/lang/Object;
.source "AirCommand.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;,
        Lcom/myflashlabs/richwebview/AirCommand$commands;
    }
.end annotation


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _framelayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private _layoutParamsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private _webviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/myflashlabs/richwebview/MyWebView;",
            ">;"
        }
    .end annotation
.end field

.field private isDialogCalled:Z

.field private isDialogClicked:Z

.field private mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->isDialogCalled:Z

    .line 58
    iput-boolean v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->isDialogClicked:Z

    return-void
.end method

.method private CookieManager_flush()V
    .locals 2

    .line 1945
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1947
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    :cond_0
    return-void
.end method

.method private CookieManager_getAcceptCookie()Z
    .locals 1

    .line 1976
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method private CookieManager_getAcceptThirdPartyCookies(I)Z
    .locals 2

    .line 1961
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1963
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->acceptThirdPartyCookies(Landroid/webkit/WebView;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private CookieManager_getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1940
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private CookieManager_hasCookies()Z
    .locals 1

    .line 1920
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v0

    return v0
.end method

.method private CookieManager_removeAllCookies()V
    .locals 2

    .line 1905
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1907
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-instance v1, Lcom/myflashlabs/richwebview/AirCommand$5;

    invoke-direct {v1, p0}, Lcom/myflashlabs/richwebview/AirCommand$5;-><init>(Lcom/myflashlabs/richwebview/AirCommand;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private CookieManager_removeSessionCookies()V
    .locals 2

    .line 1890
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1892
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-instance v1, Lcom/myflashlabs/richwebview/AirCommand$4;

    invoke-direct {v1, p0}, Lcom/myflashlabs/richwebview/AirCommand$4;-><init>(Lcom/myflashlabs/richwebview/AirCommand;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private CookieManager_setAcceptCookie(Z)V
    .locals 1

    .line 1971
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void
.end method

.method private CookieManager_setAcceptThirdPartyCookies(IZ)V
    .locals 2

    .line 1953
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1955
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method private CookieManager_setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1925
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1927
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-instance v1, Lcom/myflashlabs/richwebview/AirCommand$6;

    invoke-direct {v1, p0}, Lcom/myflashlabs/richwebview/AirCommand$6;-><init>(Lcom/myflashlabs/richwebview/AirCommand;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private WebChromeClient_getDefaultVideoPoster(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 2007
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getClient_chrome()Lcom/myflashlabs/richwebview/MyWebChromeClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2011
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private WebChromeClient_getVisitedHistory(I)V
    .locals 2

    .line 1981
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myflashlabs/richwebview/MyWebView;->getClient_chrome()Lcom/myflashlabs/richwebview/MyWebChromeClient;

    move-result-object v0

    new-instance v1, Lcom/myflashlabs/richwebview/AirCommand$7;

    invoke-direct {v1, p0, p1}, Lcom/myflashlabs/richwebview/AirCommand$7;-><init>(Lcom/myflashlabs/richwebview/AirCommand;I)V

    invoke-virtual {v0, v1}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private WebSettings_getAllowContentAccess(I)Z
    .locals 0

    .line 2484
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getAllowFileAccess(I)Z
    .locals 0

    .line 2474
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getAllowFileAccessFromFileURLs(I)Z
    .locals 0

    .line 2464
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getAllowUniversalAccessFromFileURLs(I)Z
    .locals 0

    .line 2454
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getBlockNetworkImage(I)Z
    .locals 0

    .line 2444
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getBlockNetworkLoads(I)Z
    .locals 0

    .line 2434
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getBuiltInZoomControls(I)Z
    .locals 0

    .line 2424
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getCacheMode(I)I
    .locals 1

    .line 2395
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result p1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    :goto_0
    :pswitch_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private WebSettings_getCursiveFontFamily(I)Ljava/lang/String;
    .locals 0

    .line 2352
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private WebSettings_getDatabaseEnabled(I)Z
    .locals 0

    .line 2292
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getDefaultFixedFontSize(I)I
    .locals 0

    .line 2282
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result p1

    return p1
.end method

.method private WebSettings_getDefaultFontSize(I)I
    .locals 0

    .line 2272
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result p1

    return p1
.end method

.method private WebSettings_getDefaultTextEncodingName(I)Ljava/lang/String;
    .locals 0

    .line 2262
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private WebSettings_getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .line 2252
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private WebSettings_getDisplayZoomControls(I)Z
    .locals 0

    .line 2237
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getDomStorageEnabled(I)Z
    .locals 0

    .line 2227
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getFantasyFontFamily(I)Ljava/lang/String;
    .locals 0

    .line 2342
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private WebSettings_getFixedFontFamily(I)Ljava/lang/String;
    .locals 0

    .line 2332
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private WebSettings_getGeolocationEnabled(I)Z
    .locals 0

    .line 2034
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getGeolocationEnabled()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getJavaScriptCanOpenWindowsAutomatically(I)Z
    .locals 0

    .line 2217
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getJavaScriptEnabled(I)Z
    .locals 0

    .line 2207
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getLoadWithOverviewMode(I)Z
    .locals 0

    .line 2202
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getLoadsImagesAutomatically(I)Z
    .locals 0

    .line 2192
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getMediaPlaybackRequiresUserGesture(I)Z
    .locals 0

    .line 2182
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getMinimumFontSize(I)I
    .locals 0

    .line 2172
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result p1

    return p1
.end method

.method private WebSettings_getMinimumLogicalFontSize(I)I
    .locals 0

    .line 2162
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getMinimumLogicalFontSize()I

    move-result p1

    return p1
.end method

.method private WebSettings_getMixedContentMode(I)I
    .locals 3

    .line 2136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 2138
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getMixedContentMode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    :cond_0
    :goto_0
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private WebSettings_getOffscreenPreRaster(I)Z
    .locals 2

    .line 2101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2103
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getOffscreenPreRaster()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private WebSettings_getSafeBrowsingEnabled(I)Z
    .locals 2

    .line 2083
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2085
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getSafeBrowsingEnabled()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private WebSettings_getSansSerifFontFamily(I)Ljava/lang/String;
    .locals 0

    .line 2322
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private WebSettings_getSaveFormData(I)Z
    .locals 0

    .line 2070
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getSerifFontFamily(I)Ljava/lang/String;
    .locals 0

    .line 2312
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private WebSettings_getStandardFontFamily(I)Ljava/lang/String;
    .locals 0

    .line 2302
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private WebSettings_getSupportMultipleWindows(I)Z
    .locals 0

    .line 2019
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getSupportZoom(I)Z
    .locals 0

    .line 2029
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getTextZoom(I)I
    .locals 0

    .line 2060
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result p1

    return p1
.end method

.method private WebSettings_getUseWideViewPort(I)Z
    .locals 0

    .line 2050
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result p1

    return p1
.end method

.method private WebSettings_getUserAgentString(I)Ljava/lang/String;
    .locals 0

    .line 2247
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private WebSettings_setAllowContentAccess(IZ)V
    .locals 0

    .line 2479
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    return-void
.end method

.method private WebSettings_setAllowFileAccess(IZ)V
    .locals 0

    .line 2469
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    return-void
.end method

.method private WebSettings_setAllowFileAccessFromFileURLs(IZ)V
    .locals 0

    .line 2459
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    return-void
.end method

.method private WebSettings_setAllowUniversalAccessFromFileURLs(IZ)V
    .locals 0

    .line 2449
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    return-void
.end method

.method private WebSettings_setAppCacheEnabled(IZ)V
    .locals 0

    .line 2362
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    return-void
.end method

.method private WebSettings_setAppCachePath(ILjava/lang/String;)V
    .locals 0

    .line 2357
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    return-void
.end method

.method private WebSettings_setBlockNetworkImage(IZ)V
    .locals 0

    .line 2439
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    return-void
.end method

.method private WebSettings_setBlockNetworkLoads(IZ)V
    .locals 0

    .line 2429
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    return-void
.end method

.method private WebSettings_setBuiltInZoomControls(IZ)V
    .locals 0

    .line 2419
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method private WebSettings_setCacheMode(II)V
    .locals 1

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    .line 2388
    :goto_0
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private WebSettings_setCursiveFontFamily(ILjava/lang/String;)V
    .locals 0

    .line 2347
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method private WebSettings_setDatabaseEnabled(IZ)V
    .locals 0

    .line 2287
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    return-void
.end method

.method private WebSettings_setDefaultFixedFontSize(II)V
    .locals 0

    .line 2277
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    return-void
.end method

.method private WebSettings_setDefaultFontSize(II)V
    .locals 0

    .line 2267
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    return-void
.end method

.method private WebSettings_setDefaultTextEncodingName(ILjava/lang/String;)V
    .locals 0

    .line 2257
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    return-void
.end method

.method private WebSettings_setDisplayZoomControls(IZ)V
    .locals 0

    .line 2232
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    return-void
.end method

.method private WebSettings_setDomStorageEnabled(IZ)V
    .locals 0

    .line 2222
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    return-void
.end method

.method private WebSettings_setFantasyFontFamily(ILjava/lang/String;)V
    .locals 0

    .line 2337
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method private WebSettings_setFixedFontFamily(ILjava/lang/String;)V
    .locals 0

    .line 2327
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method private WebSettings_setGeolocationEnabled(IZ)V
    .locals 1

    .line 2039
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/myflashlabs/richwebview/MyWebView;->setGeolocationEnabled(Z)V

    .line 2040
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    return-void
.end method

.method private WebSettings_setJavaScriptCanOpenWindowsAutomatically(IZ)V
    .locals 0

    .line 2212
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    return-void
.end method

.method private WebSettings_setJavaScriptEnabled(IZ)V
    .locals 0

    .line 2956
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method private WebSettings_setLoadWithOverviewMode(IZ)V
    .locals 0

    .line 2197
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method private WebSettings_setLoadsImagesAutomatically(IZ)V
    .locals 0

    .line 2187
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    return-void
.end method

.method private WebSettings_setMediaPlaybackRequiresUserGesture(IZ)V
    .locals 0

    .line 2177
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method

.method private WebSettings_setMinimumFontSize(II)V
    .locals 0

    .line 2167
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    return-void
.end method

.method private WebSettings_setMinimumLogicalFontSize(II)V
    .locals 0

    .line 2157
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    return-void
.end method

.method private WebSettings_setMixedContentMode(II)V
    .locals 2

    .line 2111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 2128
    :goto_0
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private WebSettings_setOffscreenPreRaster(IZ)V
    .locals 2

    .line 2093
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2095
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    :cond_0
    return-void
.end method

.method private WebSettings_setSafeBrowsingEnabled(IZ)V
    .locals 2

    .line 2075
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2077
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    :cond_0
    return-void
.end method

.method private WebSettings_setSansSerifFontFamily(ILjava/lang/String;)V
    .locals 0

    .line 2317
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method private WebSettings_setSaveFormData(IZ)V
    .locals 0

    .line 2065
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    return-void
.end method

.method private WebSettings_setSerifFontFamily(ILjava/lang/String;)V
    .locals 0

    .line 2307
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method private WebSettings_setStandardFontFamily(ILjava/lang/String;)V
    .locals 0

    .line 2297
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method private WebSettings_setSupportZoom(IZ)V
    .locals 0

    .line 2024
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method private WebSettings_setTextZoom(II)V
    .locals 0

    .line 2055
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method

.method private WebSettings_setUseWideViewPort(IZ)V
    .locals 0

    .line 2045
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method private WebSettings_setUserAgentString(ILjava/lang/String;)V
    .locals 0

    .line 2242
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method private WebViewDatabase_getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1704
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1706
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 1708
    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p2, "username"

    const/4 v1, 0x0

    .line 1714
    aget-object v1, p1, v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "password"

    const/4 v1, 0x1

    .line 1715
    aget-object p1, p1, v1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1719
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method static synthetic access$002(Lcom/myflashlabs/richwebview/AirCommand;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->isDialogClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/myflashlabs/richwebview/AirCommand;)Lcom/myflashlabs/richwebview/CustomTabActivityHelper;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/myflashlabs/richwebview/AirCommand;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/myflashlabs/richwebview/AirCommand;I)Lcom/myflashlabs/richwebview/MyWebView;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/myflashlabs/richwebview/AirCommand;)Ljava/io/File;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->getOutputMediaFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private addJavascriptInterface(I)V
    .locals 2

    const-string v0, "addJavascriptInterface.... BEGIN"

    .line 2961
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    .line 2963
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    .line 2965
    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->get_jsHandler()Lcom/myflashlabs/richwebview/NativeBridge;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->set_jsHandler(Landroid/app/Activity;Lcom/myflashlabs/richwebview/MyWebView;)V

    .line 2967
    :cond_0
    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->get_jsHandler()Lcom/myflashlabs/richwebview/NativeBridge;

    move-result-object v0

    const-string v1, "NativeBridge"

    invoke-virtual {p1, v0, v1}, Lcom/myflashlabs/richwebview/MyWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "addJavascriptInterface.... END"

    .line 2969
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method private addView(I)V
    .locals 3

    const-string v0, "addView... BEGIN"

    .line 2979
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    .line 2981
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v0

    .line 2982
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_fl(I)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 2983
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_lp(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 2985
    iget-object v2, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2986
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string p1, "addView... END"

    .line 2988
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method private callJS(ILjava/lang/String;)V
    .locals 0

    .line 2974
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->get_jsHandler()Lcom/myflashlabs/richwebview/NativeBridge;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/NativeBridge;->callJS(Ljava/lang/String;)V

    return-void
.end method

.method private canGoBack(I)Z
    .locals 0

    .line 2951
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->canGoBack()Z

    move-result p1

    return p1
.end method

.method private canGoBackOrForward(II)Z
    .locals 0

    .line 2946
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method private canGoForward(I)Z
    .locals 0

    .line 2941
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->canGoForward()Z

    move-result p1

    return p1
.end method

.method private clearCache(IZ)V
    .locals 0

    .line 2936
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->clearCache(Z)V

    return-void
.end method

.method private clearFormData(I)V
    .locals 0

    .line 2931
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->clearFormData()V

    return-void
.end method

.method private clearHistory(I)V
    .locals 0

    .line 2926
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->clearHistory()V

    return-void
.end method

.method private clearSslPreferences(I)V
    .locals 0

    .line 2921
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->clearSslPreferences()V

    return-void
.end method

.method private closeWebView(I)V
    .locals 2

    .line 3063
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v0

    const/4 v1, 0x0

    .line 3064
    invoke-virtual {v0, v1}, Lcom/myflashlabs/richwebview/MyWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const-string v1, ""

    .line 3065
    invoke-virtual {v0, v1}, Lcom/myflashlabs/richwebview/MyWebView;->loadUrl(Ljava/lang/String;)V

    .line 3066
    invoke-virtual {v0}, Lcom/myflashlabs/richwebview/MyWebView;->destroy()V

    .line 3068
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_fl(I)Landroid/widget/FrameLayout;

    move-result-object p1

    .line 3069
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method private copyBackForwardList(I)Ljava/lang/String;
    .locals 6

    .line 1675
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    .line 1677
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 1681
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1683
    invoke-virtual {p1, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 1685
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "originalurl"

    .line 1687
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "title"

    .line 1688
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "url"

    .line 1689
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1691
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1696
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    .line 1699
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createPendingIntent(I)Landroid/app/PendingIntent;
    .locals 3

    .line 1843
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    const-class v2, Lcom/myflashlabs/richwebview/ChromeTabActionBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1844
    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1845
    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private createPrintDocumentAdapter(ILjava/lang/String;)V
    .locals 2

    .line 2900
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2902
    new-instance v0, Lcom/myflashlabs/richwebview/PrintDocumentAdapterWrapper;

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/myflashlabs/richwebview/PrintDocumentAdapterWrapper;-><init>(Landroid/print/PrintDocumentAdapter;)V

    goto :goto_0

    .line 2906
    :cond_0
    new-instance v0, Lcom/myflashlabs/richwebview/PrintDocumentAdapterWrapper;

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/myflashlabs/richwebview/PrintDocumentAdapterWrapper;-><init>(Landroid/print/PrintDocumentAdapter;)V

    .line 2910
    :goto_0
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    const-string v1, "print"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    .line 2913
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method

.method private disposeEmbeddedBrowser()V
    .locals 2

    .line 1850
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 1851
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->setConnectionCallback(Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;)V

    .line 1852
    iput-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    return-void
.end method

.method private evaluateJavascript(ILjava/lang/String;)V
    .locals 2

    .line 2876
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v0

    new-instance v1, Lcom/myflashlabs/richwebview/AirCommand$12;

    invoke-direct {v1, p0, p1}, Lcom/myflashlabs/richwebview/AirCommand$12;-><init>(Lcom/myflashlabs/richwebview/AirCommand;I)V

    invoke-virtual {v0, p2, v1}, Lcom/myflashlabs/richwebview/MyWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private findOutIfKeyboardIsVisible()V
    .locals 4

    .line 2507
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 2508
    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2510
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/myflashlabs/richwebview/AirCommand$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/myflashlabs/richwebview/AirCommand$8;-><init>(Lcom/myflashlabs/richwebview/AirCommand;Landroid/view/View;[Ljava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private find_fl(I)Landroid/widget/FrameLayout;
    .locals 1

    .line 3137
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_framelayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private find_lp(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 3142
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_layoutParamsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method private find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;
    .locals 1

    .line 3132
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_webviewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/myflashlabs/richwebview/MyWebView;

    return-object p1
.end method

.method private flingScroll(III)V
    .locals 0

    .line 2871
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/myflashlabs/richwebview/MyWebView;->flingScroll(II)V

    return-void
.end method

.method private getFavicon(I)Landroid/graphics/Bitmap;
    .locals 0

    .line 2866
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getOriginalUrl(I)Ljava/lang/String;
    .locals 0

    .line 2861
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getOutputMediaFile()Ljava/io/File;
    .locals 4

    .line 3230
    new-instance v0, Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-string v1, "richWebViewScreenshots"

    const/4 v2, 0x0

    .line 3232
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 3235
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3237
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getProgress(I)I
    .locals 0

    .line 2856
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getProgress()I

    move-result p1

    return p1
.end method

.method private getRendererPriorityWaivedWhenNotVisible(I)Z
    .locals 2

    .line 2846
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2848
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getRendererRequestedPriority(I)I
    .locals 2

    .line 2836
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2838
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getRendererRequestedPriority()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private getSafeBrowsingPrivacyPolicyUrl()Ljava/lang/String;
    .locals 2

    .line 2822
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 2824
    invoke-static {}, Lcom/myflashlabs/richwebview/MyWebView;->getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 0

    .line 2817
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUrl(I)Ljava/lang/String;
    .locals 0

    .line 2812
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hideWebView(IZ)V
    .locals 1

    .line 3042
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    .line 3043
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_fl(I)Landroid/widget/FrameLayout;

    move-result-object p1

    .line 3044
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    .line 3047
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3054
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initEmbeddedBrowser(Ljava/lang/String;)V
    .locals 2

    .line 1857
    new-instance v0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    invoke-direct {v0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;-><init>()V

    iput-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    .line 1858
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    new-instance v1, Lcom/myflashlabs/richwebview/AirCommand$3;

    invoke-direct {v1, p0, p1}, Lcom/myflashlabs/richwebview/AirCommand$3;-><init>(Lcom/myflashlabs/richwebview/AirCommand;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->setConnectionCallback(Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;)V

    return-void
.end method

.method private initNewInstance(IIIILjava/lang/String;)I
    .locals 4

    const-string v0, "initNewInstance... BEGIN"

    .line 3075
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    .line 3077
    new-instance v0, Lcom/myflashlabs/richwebview/MyWebView;

    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/myflashlabs/richwebview/MyWebView;-><init>(Landroid/content/Context;)V

    .line 3078
    invoke-virtual {v0, p5}, Lcom/myflashlabs/richwebview/MyWebView;->setBridgeJs(Ljava/lang/String;)V

    .line 3080
    iget-object p5, p0, Lcom/myflashlabs/richwebview/AirCommand;->_webviewList:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3081
    iget-object p5, p0, Lcom/myflashlabs/richwebview/AirCommand;->_webviewList:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    add-int/lit8 p5, p5, -0x1

    .line 3082
    invoke-virtual {v0, p5}, Lcom/myflashlabs/richwebview/MyWebView;->setId(I)V

    .line 3084
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3085
    invoke-virtual {v1, p5}, Landroid/widget/FrameLayout;->setId(I)V

    const/4 v2, 0x0

    .line 3086
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3087
    iget-object v3, p0, Lcom/myflashlabs/richwebview/AirCommand;->_framelayoutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3089
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x33

    .line 3090
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3091
    invoke-virtual {v1, p1, p2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 3092
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_layoutParamsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3094
    new-instance p1, Lcom/myflashlabs/richwebview/MyWebChromeClient;

    iget-object p2, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-direct {p1, v0, p2}, Lcom/myflashlabs/richwebview/MyWebChromeClient;-><init>(Lcom/myflashlabs/richwebview/MyWebView;Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->setClient_chrome(Lcom/myflashlabs/richwebview/MyWebChromeClient;)V

    .line 3095
    new-instance p1, Lcom/myflashlabs/richwebview/MyWebViewClient;

    invoke-direct {p1, v0}, Lcom/myflashlabs/richwebview/MyWebViewClient;-><init>(Lcom/myflashlabs/richwebview/MyWebView;)V

    invoke-virtual {v0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->setClient_webview(Lcom/myflashlabs/richwebview/MyWebViewClient;)V

    .line 3097
    invoke-virtual {v0}, Lcom/myflashlabs/richwebview/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 3099
    new-instance p1, Lcom/myflashlabs/richwebview/AirCommand$14;

    invoke-direct {p1, p0, p5}, Lcom/myflashlabs/richwebview/AirCommand$14;-><init>(Lcom/myflashlabs/richwebview/AirCommand;I)V

    invoke-virtual {v0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initNewInstance id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    const-string p1, "initNewInstance... END"

    .line 3123
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    return p5
.end method

.method private isEmbeddedBrowserSupported()Z
    .locals 3

    const-string v0, "android.support.customtabs.action.CustomTabsService"

    const-string v1, "com.android.chrome"

    .line 1881
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1885
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private listenToScrollingEvent(IZ)V
    .locals 0

    .line 1670
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->listenToScrollingEvent(Z)V

    return-void
.end method

.method private listenToTouchEvents(IZ)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2994
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2998
    new-instance p2, Lcom/myflashlabs/richwebview/AirCommand$13;

    invoke-direct {p2, p0, p1}, Lcom/myflashlabs/richwebview/AirCommand$13;-><init>(Lcom/myflashlabs/richwebview/AirCommand;I)V

    invoke-virtual {v0, p2}, Lcom/myflashlabs/richwebview/MyWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3026
    invoke-virtual {v0, p1}, Lcom/myflashlabs/richwebview/MyWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method

.method private loadData(ILjava/lang/String;)V
    .locals 10

    const-string v0, "loadData... BEGIN"

    .line 2780
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    .line 2784
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "baseUrl"

    .line 2786
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2787
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    const-string p2, "historyUrl"

    .line 2789
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2790
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object v9, p2

    :goto_1
    const-string p2, "mimeType"

    .line 2792
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2793
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, p2

    .line 2795
    :goto_2
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v4

    const-string p1, "data"

    .line 2797
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "encoding"

    .line 2799
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2795
    invoke-virtual/range {v4 .. v9}, Lcom/myflashlabs/richwebview/MyWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2804
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    :goto_3
    const-string p1, "loadData... END"

    .line 2807
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method private loadUrl(ILjava/lang/String;)V
    .locals 0

    .line 2775
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onPause(I)V
    .locals 0

    .line 2764
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->onPause()V

    return-void
.end method

.method private onResume(I)V
    .locals 0

    .line 2759
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->onResume()V

    return-void
.end method

.method private openEmbeddedBrowser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1757
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "mCustomTabActivityHelper == null"

    .line 1759
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    return v1

    .line 1766
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1768
    new-instance p2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v2, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    invoke-virtual {v2}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v2

    invoke-direct {p2, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    const-string v2, "colors"

    .line 1771
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "toolbarColor"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    const-string v2, "colors"

    .line 1772
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "secondaryToolbarColor"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSecondaryToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    const-string v2, "menuItems"

    .line 1775
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 1776
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1778
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/myflashlabs/richwebview/AirCommand;->createPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->addMenuItem(Ljava/lang/String;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "actionBtnIcon"

    .line 1782
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1783
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    .line 1785
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    .line 1786
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    .line 1789
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1786
    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1784
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "actionBtnDescription"

    .line 1790
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    .line 1791
    invoke-direct {p0, v5}, Lcom/myflashlabs/richwebview/AirCommand;->createPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1783
    invoke-virtual {p2, v2, v3, v5, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 1795
    :cond_2
    iget-object v2, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    sget v3, Lcom/myflashlabs/richwebview/R$anim;->richwebview_slide_in_right:I

    sget v5, Lcom/myflashlabs/richwebview/R$anim;->richwebview_slide_out_left:I

    invoke-virtual {p2, v2, v3, v5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setStartAnimations(Landroid/content/Context;II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 1796
    iget-object v2, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    sget v3, Lcom/myflashlabs/richwebview/R$anim;->richwebview_slide_in_left:I

    sget v5, Lcom/myflashlabs/richwebview/R$anim;->richwebview_slide_out_right:I

    invoke-virtual {p2, v2, v3, v5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setExitAnimations(Landroid/content/Context;II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    const-string v2, "enableUrlBarHiding"

    .line 1798
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->enableUrlBarHiding()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_3
    const-string v2, "closeBtnIcon"

    .line 1804
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1809
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setCloseButtonIcon(Landroid/graphics/Bitmap;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_4
    const-string v2, "showTitle"

    .line 1811
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    const-string v2, "defaultShareMenuItem"

    .line 1813
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->addDefaultShareMenuItem()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 1816
    :cond_5
    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p2

    const-string v2, "isWeakActivity"

    .line 1819
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1822
    :cond_6
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v2, Lcom/myflashlabs/richwebview/AirCommand$2;

    invoke-direct {v2, p0}, Lcom/myflashlabs/richwebview/AirCommand$2;-><init>(Lcom/myflashlabs/richwebview/AirCommand;)V

    invoke-static {v0, p2, p1, v2}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->openCustomTab(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabFallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 1835
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->toTrace(Ljava/lang/String;)V

    return v1
.end method

.method private pageDown(IZ)V
    .locals 0

    .line 2754
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->pageDown(Z)Z

    return-void
.end method

.method private pageUp(IZ)V
    .locals 0

    .line 2749
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->pageUp(Z)Z

    return-void
.end method

.method private pauseTimers(I)V
    .locals 0

    .line 2744
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->pauseTimers()V

    return-void
.end method

.method private postUrl(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 2733
    invoke-static {p3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    .line 2734
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/myflashlabs/richwebview/MyWebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method private reload(I)V
    .locals 0

    .line 2728
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->reload()V

    return-void
.end method

.method private requestFocus(II)Z
    .locals 1

    const/16 v0, 0x21

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x42

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x82

    .line 2723
    :goto_0
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/myflashlabs/richwebview/MyWebView;->requestFocus(I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resumeTimers(I)V
    .locals 0

    .line 2739
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->resumeTimers()V

    return-void
.end method

.method private saveWebArchive(ILjava/lang/String;Z)V
    .locals 2

    .line 2683
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v0

    new-instance v1, Lcom/myflashlabs/richwebview/AirCommand$11;

    invoke-direct {v1, p0, p1}, Lcom/myflashlabs/richwebview/AirCommand$11;-><init>(Lcom/myflashlabs/richwebview/AirCommand;I)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/myflashlabs/richwebview/MyWebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method private setBackgroundColor(ILjava/lang/String;)V
    .locals 0

    .line 2678
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->setBackgroundColor(I)V

    return-void
.end method

.method private setDataDirectorySuffix(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setInitialScale(II)V
    .locals 0

    .line 2668
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->setInitialScale(I)V

    return-void
.end method

.method private setNetworkAvailable(IZ)V
    .locals 0

    .line 2663
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->setNetworkAvailable(Z)V

    return-void
.end method

.method private setOverScrollMode(II)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 2658
    :goto_0
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/myflashlabs/richwebview/MyWebView;->setOverScrollMode(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPosition(IIIII)V
    .locals 1

    .line 3032
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_lp(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 3033
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3034
    iput p5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 p4, 0x0

    .line 3035
    invoke-virtual {v0, p2, p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 3037
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_fl(I)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setRendererPriorityPolicy(IIZ)V
    .locals 2

    .line 2620
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 2637
    :goto_0
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcom/myflashlabs/richwebview/MyWebView;->setRendererPriorityPolicy(IZ)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSafeBrowsingWhitelist(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2605
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 2607
    new-instance v0, Lcom/myflashlabs/richwebview/AirCommand$10;

    invoke-direct {v0, p0}, Lcom/myflashlabs/richwebview/AirCommand$10;-><init>(Lcom/myflashlabs/richwebview/AirCommand;)V

    invoke-static {p1, v0}, Lcom/myflashlabs/richwebview/MyWebView;->setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private setScrollBarStyle(II)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x3000000

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x2000000

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x1000000

    .line 2585
    :goto_0
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/myflashlabs/richwebview/MyWebView;->setScrollBarStyle(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSoftInputMode()V
    .locals 2

    .line 1729
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private setWebContentsDebuggingEnabled(Z)V
    .locals 0

    .line 2562
    invoke-static {p1}, Lcom/myflashlabs/richwebview/MyWebView;->setWebContentsDebuggingEnabled(Z)V

    return-void
.end method

.method private showSoftKeyboard(Z)V
    .locals 2

    .line 2489
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    const/4 v1, 0x1

    .line 2493
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2496
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 2500
    :cond_0
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method private showTestVersionDialog()V
    .locals 3

    .line 270
    invoke-static {}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->hasAnyDemoAne()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->isAneRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 277
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "DEMO ANE!"

    .line 278
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The library \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    .line 281
    new-instance v2, Lcom/myflashlabs/richwebview/AirCommand$1;

    invoke-direct {v2, p0}, Lcom/myflashlabs/richwebview/AirCommand$1;-><init>(Lcom/myflashlabs/richwebview/AirCommand;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->isDialogCalled:Z

    return-void
.end method

.method private startSafeBrowsing()V
    .locals 2

    .line 2590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 2592
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/myflashlabs/richwebview/AirCommand$9;

    invoke-direct {v1, p0}, Lcom/myflashlabs/richwebview/AirCommand$9;-><init>(Lcom/myflashlabs/richwebview/AirCommand;)V

    invoke-static {v0, v1}, Lcom/myflashlabs/richwebview/MyWebView;->startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private stopLoad(I)V
    .locals 1

    .line 2769
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myflashlabs/richwebview/MyWebView;->stopLoading()V

    .line 2770
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/myflashlabs/richwebview/MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private toTrace(Ljava/lang/String;)V
    .locals 2

    .line 3147
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private zoomBy(ID)V
    .locals 2

    .line 2554
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2556
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->zoomBy(F)V

    :cond_0
    return-void
.end method

.method private zoomIn(I)Z
    .locals 0

    .line 2549
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->zoomIn()Z

    move-result p1

    return p1
.end method

.method private zoomOut(I)Z
    .locals 0

    .line 2544
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->zoomOut()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11

    const/4 v0, 0x0

    .line 299
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    .line 304
    sget-object p1, Lcom/myflashlabs/richwebview/AirCommand$15;->$SwitchMap$com$myflashlabs$richwebview$AirCommand$commands:[I

    invoke-static {v1}, Lcom/myflashlabs/richwebview/AirCommand$commands;->valueOf(Ljava/lang/String;)Lcom/myflashlabs/richwebview/AirCommand$commands;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myflashlabs/richwebview/AirCommand$commands;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1652
    :pswitch_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 1654
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p1

    aget-object v0, p2, v5

    .line 1655
    invoke-static {v0}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v4

    .line 1656
    invoke-static {v1}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v1

    aget-object v3, p2, v3

    .line 1657
    invoke-static {v3}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v3

    aget-object p2, p2, v2

    .line 1658
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1654
    invoke-virtual {p1, v0, v1, v3, p2}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1644
    :pswitch_1
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    .line 1645
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebViewDatabase;->hasHttpAuthUsernamePassword()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1644
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1637
    :pswitch_2
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    .line 1638
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebViewDatabase;->hasFormData()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1637
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1627
    :pswitch_3
    aget-object p1, p2, v5

    .line 1629
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v5

    .line 1630
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1628
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebViewDatabase_getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1631
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1627
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1622
    :pswitch_4
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    goto/16 :goto_0

    .line 1617
    :pswitch_5
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    goto/16 :goto_0

    .line 1607
    :pswitch_6
    aget-object p1, p2, v5

    .line 1609
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v4

    .line 1610
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1608
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->openEmbeddedBrowser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1607
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1602
    :pswitch_7
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    iget-object p2, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->unbindCustomTabsService(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1597
    :pswitch_8
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->mCustomTabActivityHelper:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    iget-object p2, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->bindCustomTabsService(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1592
    :pswitch_9
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->disposeEmbeddedBrowser()V

    goto/16 :goto_0

    .line 1587
    :pswitch_a
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->initEmbeddedBrowser(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1581
    :pswitch_b
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->isEmbeddedBrowserSupported()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1580
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1575
    :pswitch_c
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_removeSessionCookies()V

    goto/16 :goto_0

    .line 1570
    :pswitch_d
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_removeAllCookies()V

    goto/16 :goto_0

    .line 1565
    :pswitch_e
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_hasCookies()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1557
    :pswitch_f
    aget-object p1, p2, v5

    .line 1558
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v4

    .line 1559
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1557
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1548
    :pswitch_10
    aget-object p1, p2, v5

    .line 1550
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    .line 1549
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1548
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1543
    :pswitch_11
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_flush()V

    goto/16 :goto_0

    .line 1536
    :pswitch_12
    aget-object p1, p2, v5

    .line 1537
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1536
    invoke-static {p1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    goto/16 :goto_0

    .line 1531
    :pswitch_13
    invoke-static {}, Landroid/webkit/CookieManager;->allowFileSchemeCookies()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1523
    :pswitch_14
    aget-object p1, p2, v5

    .line 1524
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1525
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1523
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_setAcceptThirdPartyCookies(IZ)V

    goto/16 :goto_0

    .line 1514
    :pswitch_15
    aget-object p1, p2, v5

    .line 1516
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1515
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_getAcceptThirdPartyCookies(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1514
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1507
    :pswitch_16
    aget-object p1, p2, v5

    .line 1508
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1507
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_setAcceptCookie(Z)V

    goto/16 :goto_0

    .line 1502
    :pswitch_17
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->CookieManager_getAcceptCookie()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1495
    :pswitch_18
    aget-object p1, p2, v5

    .line 1496
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1495
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebChromeClient_getVisitedHistory(I)V

    goto/16 :goto_0

    .line 1486
    :pswitch_19
    aget-object p1, p2, v5

    .line 1488
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1487
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebChromeClient_getDefaultVideoPoster(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1486
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Bitmap(Landroid/graphics/Bitmap;)Lcom/adobe/fre/FREBitmapData;

    move-result-object p1

    goto/16 :goto_1

    .line 1477
    :pswitch_1a
    aget-object p1, p2, v5

    .line 1479
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1478
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getSupportMultipleWindows(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1477
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1469
    :pswitch_1b
    aget-object p1, p2, v5

    .line 1470
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1471
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1469
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setSupportZoom(IZ)V

    goto/16 :goto_0

    .line 1460
    :pswitch_1c
    aget-object p1, p2, v5

    .line 1462
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1461
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getSupportZoom(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1460
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1451
    :pswitch_1d
    aget-object p1, p2, v5

    .line 1453
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1452
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getGeolocationEnabled(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1451
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1443
    :pswitch_1e
    aget-object p1, p2, v5

    .line 1444
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1445
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1443
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setGeolocationEnabled(IZ)V

    goto/16 :goto_0

    .line 1435
    :pswitch_1f
    aget-object p1, p2, v5

    .line 1436
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1437
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1435
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setUseWideViewPort(IZ)V

    goto/16 :goto_0

    .line 1426
    :pswitch_20
    aget-object p1, p2, v5

    .line 1428
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1427
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getUseWideViewPort(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1426
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1418
    :pswitch_21
    aget-object p1, p2, v5

    .line 1419
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1420
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1418
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setTextZoom(II)V

    goto/16 :goto_0

    .line 1409
    :pswitch_22
    aget-object p1, p2, v5

    .line 1411
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1410
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getTextZoom(I)I

    move-result p1

    .line 1409
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1401
    :pswitch_23
    aget-object p1, p2, v5

    .line 1402
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1403
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1401
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setSaveFormData(IZ)V

    goto/16 :goto_0

    .line 1392
    :pswitch_24
    aget-object p1, p2, v5

    .line 1394
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1393
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getSaveFormData(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1392
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1384
    :pswitch_25
    aget-object p1, p2, v5

    .line 1385
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1386
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1384
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setSafeBrowsingEnabled(IZ)V

    goto/16 :goto_0

    .line 1375
    :pswitch_26
    aget-object p1, p2, v5

    .line 1377
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1376
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getSafeBrowsingEnabled(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1375
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1367
    :pswitch_27
    aget-object p1, p2, v5

    .line 1368
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1369
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1367
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setOffscreenPreRaster(IZ)V

    goto/16 :goto_0

    .line 1358
    :pswitch_28
    aget-object p1, p2, v5

    .line 1360
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1359
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getOffscreenPreRaster(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1358
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1350
    :pswitch_29
    aget-object p1, p2, v5

    .line 1351
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1352
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1350
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setMixedContentMode(II)V

    goto/16 :goto_0

    .line 1341
    :pswitch_2a
    aget-object p1, p2, v5

    .line 1343
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1342
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getMixedContentMode(I)I

    move-result p1

    .line 1341
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1333
    :pswitch_2b
    aget-object p1, p2, v5

    .line 1334
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1335
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1333
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setMinimumLogicalFontSize(II)V

    goto/16 :goto_0

    .line 1324
    :pswitch_2c
    aget-object p1, p2, v5

    .line 1326
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1325
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getMinimumLogicalFontSize(I)I

    move-result p1

    .line 1324
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1316
    :pswitch_2d
    aget-object p1, p2, v5

    .line 1317
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1318
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1316
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setMinimumFontSize(II)V

    goto/16 :goto_0

    .line 1307
    :pswitch_2e
    aget-object p1, p2, v5

    .line 1309
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1308
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getMinimumFontSize(I)I

    move-result p1

    .line 1307
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1299
    :pswitch_2f
    aget-object p1, p2, v5

    .line 1300
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1301
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1299
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setMediaPlaybackRequiresUserGesture(IZ)V

    goto/16 :goto_0

    .line 1290
    :pswitch_30
    aget-object p1, p2, v5

    .line 1292
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1291
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getMediaPlaybackRequiresUserGesture(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1290
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1282
    :pswitch_31
    aget-object p1, p2, v5

    .line 1283
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1284
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1282
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setLoadsImagesAutomatically(IZ)V

    goto/16 :goto_0

    .line 1273
    :pswitch_32
    aget-object p1, p2, v5

    .line 1275
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1274
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getLoadsImagesAutomatically(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1273
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1265
    :pswitch_33
    aget-object p1, p2, v5

    .line 1266
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1267
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1265
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setLoadWithOverviewMode(IZ)V

    goto/16 :goto_0

    .line 1256
    :pswitch_34
    aget-object p1, p2, v5

    .line 1258
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1257
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getLoadWithOverviewMode(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1256
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1248
    :pswitch_35
    aget-object p1, p2, v5

    .line 1249
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1250
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1248
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setJavaScriptEnabled(IZ)V

    goto/16 :goto_0

    .line 1239
    :pswitch_36
    aget-object p1, p2, v5

    .line 1241
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1240
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getJavaScriptEnabled(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1239
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1214
    :pswitch_37
    aget-object p1, p2, v5

    .line 1215
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1216
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1214
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setDomStorageEnabled(IZ)V

    goto/16 :goto_0

    .line 1205
    :pswitch_38
    aget-object p1, p2, v5

    .line 1207
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1206
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getDomStorageEnabled(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1205
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1197
    :pswitch_39
    aget-object p1, p2, v5

    .line 1198
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1199
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1197
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setDisplayZoomControls(IZ)V

    goto/16 :goto_0

    .line 1188
    :pswitch_3a
    aget-object p1, p2, v5

    .line 1190
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1189
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getDisplayZoomControls(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1188
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1182
    :pswitch_3b
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getDefaultUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1181
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1173
    :pswitch_3c
    aget-object p1, p2, v5

    .line 1174
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1175
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1173
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setUserAgentString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1164
    :pswitch_3d
    aget-object p1, p2, v5

    .line 1166
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1165
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getUserAgentString(I)Ljava/lang/String;

    move-result-object p1

    .line 1164
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1156
    :pswitch_3e
    aget-object p1, p2, v5

    .line 1157
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1158
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1156
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setDefaultTextEncodingName(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1147
    :pswitch_3f
    aget-object p1, p2, v5

    .line 1149
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1148
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getDefaultTextEncodingName(I)Ljava/lang/String;

    move-result-object p1

    .line 1147
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1139
    :pswitch_40
    aget-object p1, p2, v5

    .line 1140
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1141
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1139
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setDefaultFontSize(II)V

    goto/16 :goto_0

    .line 1130
    :pswitch_41
    aget-object p1, p2, v5

    .line 1132
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1131
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getDefaultFontSize(I)I

    move-result p1

    .line 1130
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1122
    :pswitch_42
    aget-object p1, p2, v5

    .line 1123
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1124
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1122
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setDefaultFixedFontSize(II)V

    goto/16 :goto_0

    .line 1113
    :pswitch_43
    aget-object p1, p2, v5

    .line 1115
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1114
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getDefaultFixedFontSize(I)I

    move-result p1

    .line 1113
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1105
    :pswitch_44
    aget-object p1, p2, v5

    .line 1106
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1107
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1105
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setDatabaseEnabled(IZ)V

    goto/16 :goto_0

    .line 1096
    :pswitch_45
    aget-object p1, p2, v5

    .line 1098
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1097
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getDatabaseEnabled(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1096
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1088
    :pswitch_46
    aget-object p1, p2, v5

    .line 1089
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1090
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1088
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setCursiveFontFamily(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1079
    :pswitch_47
    aget-object p1, p2, v5

    .line 1081
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1080
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getCursiveFontFamily(I)Ljava/lang/String;

    move-result-object p1

    .line 1079
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1071
    :pswitch_48
    aget-object p1, p2, v5

    .line 1072
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1073
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1071
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setFantasyFontFamily(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1062
    :pswitch_49
    aget-object p1, p2, v5

    .line 1064
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1063
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getFantasyFontFamily(I)Ljava/lang/String;

    move-result-object p1

    .line 1062
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1054
    :pswitch_4a
    aget-object p1, p2, v5

    .line 1055
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1056
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1054
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setFixedFontFamily(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1045
    :pswitch_4b
    aget-object p1, p2, v5

    .line 1047
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1046
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getFixedFontFamily(I)Ljava/lang/String;

    move-result-object p1

    .line 1045
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1037
    :pswitch_4c
    aget-object p1, p2, v5

    .line 1038
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1039
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1037
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setStandardFontFamily(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1028
    :pswitch_4d
    aget-object p1, p2, v5

    .line 1030
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1029
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getStandardFontFamily(I)Ljava/lang/String;

    move-result-object p1

    .line 1028
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1020
    :pswitch_4e
    aget-object p1, p2, v5

    .line 1021
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1022
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1020
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setSerifFontFamily(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1011
    :pswitch_4f
    aget-object p1, p2, v5

    .line 1013
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1012
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getSerifFontFamily(I)Ljava/lang/String;

    move-result-object p1

    .line 1011
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 1003
    :pswitch_50
    aget-object p1, p2, v5

    .line 1004
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 1005
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 1003
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setSansSerifFontFamily(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 994
    :pswitch_51
    aget-object p1, p2, v5

    .line 996
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 995
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getSansSerifFontFamily(I)Ljava/lang/String;

    move-result-object p1

    .line 994
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 986
    :pswitch_52
    aget-object p1, p2, v5

    .line 987
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 988
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 986
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setAppCachePath(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 978
    :pswitch_53
    aget-object p1, p2, v5

    .line 979
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 980
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 978
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setAppCacheEnabled(IZ)V

    goto/16 :goto_0

    .line 970
    :pswitch_54
    aget-object p1, p2, v5

    .line 971
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 972
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 970
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setCacheMode(II)V

    goto/16 :goto_0

    .line 961
    :pswitch_55
    aget-object p1, p2, v5

    .line 963
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 962
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getCacheMode(I)I

    move-result p1

    .line 961
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 953
    :pswitch_56
    aget-object p1, p2, v5

    .line 954
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 955
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 953
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setBuiltInZoomControls(IZ)V

    goto/16 :goto_0

    .line 944
    :pswitch_57
    aget-object p1, p2, v5

    .line 946
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 945
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getBuiltInZoomControls(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 944
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 936
    :pswitch_58
    aget-object p1, p2, v5

    .line 937
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 938
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 936
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setBlockNetworkLoads(IZ)V

    goto/16 :goto_0

    .line 927
    :pswitch_59
    aget-object p1, p2, v5

    .line 929
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 928
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getBlockNetworkLoads(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 927
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 919
    :pswitch_5a
    aget-object p1, p2, v5

    .line 920
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 921
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 919
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setBlockNetworkImage(IZ)V

    goto/16 :goto_0

    .line 910
    :pswitch_5b
    aget-object p1, p2, v5

    .line 912
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 911
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getBlockNetworkImage(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 910
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 902
    :pswitch_5c
    aget-object p1, p2, v5

    .line 903
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 904
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setAllowUniversalAccessFromFileURLs(IZ)V

    goto/16 :goto_0

    .line 893
    :pswitch_5d
    aget-object p1, p2, v5

    .line 895
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 894
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getAllowUniversalAccessFromFileURLs(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 893
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 885
    :pswitch_5e
    aget-object p1, p2, v5

    .line 886
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 887
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 885
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setAllowFileAccessFromFileURLs(IZ)V

    goto/16 :goto_0

    .line 876
    :pswitch_5f
    aget-object p1, p2, v5

    .line 878
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 877
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getAllowFileAccessFromFileURLs(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 876
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 868
    :pswitch_60
    aget-object p1, p2, v5

    .line 869
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 870
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 868
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setAllowFileAccess(IZ)V

    goto/16 :goto_0

    .line 859
    :pswitch_61
    aget-object p1, p2, v5

    .line 861
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 860
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getAllowFileAccess(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 859
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 851
    :pswitch_62
    aget-object p1, p2, v5

    .line 852
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 853
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 851
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_setAllowContentAccess(IZ)V

    goto/16 :goto_0

    .line 842
    :pswitch_63
    aget-object p1, p2, v5

    .line 844
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 843
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->WebSettings_getAllowContentAccess(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 842
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 837
    :pswitch_64
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->setSoftInputMode()V

    goto/16 :goto_0

    .line 829
    :pswitch_65
    aget-object p1, p2, v5

    .line 831
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 829
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->showSoftKeyboard(Z)V

    goto/16 :goto_0

    .line 824
    :pswitch_66
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_activity:Landroid/app/Activity;

    invoke-virtual {p1, v5}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 819
    :pswitch_67
    new-instance p1, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;

    aget-object p2, p2, v5

    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;-><init>(Lcom/myflashlabs/richwebview/AirCommand;I)V

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 811
    :pswitch_68
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    aget-object v0, p2, v4

    .line 812
    invoke-static {v0}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p2, p2, v3

    .line 813
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 811
    invoke-virtual {p1, v0, p2}, Lcom/myflashlabs/richwebview/MyWebView;->scrollTo(II)V

    goto/16 :goto_0

    .line 803
    :pswitch_69
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    aget-object v0, p2, v4

    .line 804
    invoke-static {v0}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p2, p2, v3

    .line 805
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 803
    invoke-virtual {p1, v0, p2}, Lcom/myflashlabs/richwebview/MyWebView;->scrollBy(II)V

    goto/16 :goto_0

    .line 796
    :pswitch_6a
    aget-object p1, p2, v5

    .line 797
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getScrollY()I

    move-result p1

    .line 796
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 789
    :pswitch_6b
    aget-object p1, p2, v5

    .line 790
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getScrollX()I

    move-result p1

    .line 789
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 782
    :pswitch_6c
    aget-object p1, p2, v5

    .line 783
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->zoomOut(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 782
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 775
    :pswitch_6d
    aget-object p1, p2, v5

    .line 776
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->zoomIn(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 775
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 767
    :pswitch_6e
    aget-object p1, p2, v5

    .line 768
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 769
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Double(Lcom/adobe/fre/FREObject;)D

    move-result-wide v0

    .line 767
    invoke-direct {p0, p1, v0, v1}, Lcom/myflashlabs/richwebview/AirCommand;->zoomBy(ID)V

    goto/16 :goto_0

    .line 762
    :pswitch_6f
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->setWebContentsDebuggingEnabled(Z)V

    goto/16 :goto_0

    .line 754
    :pswitch_70
    aget-object p1, p2, v5

    .line 755
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 756
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 754
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->setScrollBarStyle(II)V

    goto/16 :goto_0

    .line 749
    :pswitch_71
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->startSafeBrowsing()V

    goto/16 :goto_0

    .line 742
    :pswitch_72
    aget-object p1, p2, v5

    .line 743
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Array_Type_String(Lcom/adobe/fre/FREObject;)Ljava/util/ArrayList;

    move-result-object p1

    .line 742
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->setSafeBrowsingWhitelist(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 733
    :pswitch_73
    aget-object p1, p2, v5

    .line 734
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object v0, p2, v4

    .line 735
    invoke-static {v0}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p2, p2, v3

    .line 736
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 733
    invoke-direct {p0, p1, v0, p2}, Lcom/myflashlabs/richwebview/AirCommand;->setRendererPriorityPolicy(IIZ)V

    goto/16 :goto_0

    .line 725
    :pswitch_74
    aget-object p1, p2, v5

    .line 726
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 727
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 725
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->setOverScrollMode(II)V

    goto/16 :goto_0

    .line 717
    :pswitch_75
    aget-object p1, p2, v5

    .line 718
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 719
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->setNetworkAvailable(IZ)V

    goto/16 :goto_0

    .line 709
    :pswitch_76
    aget-object p1, p2, v5

    .line 710
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 711
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 709
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->setInitialScale(II)V

    goto/16 :goto_0

    .line 694
    :pswitch_77
    aget-object p1, p2, v5

    .line 695
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 696
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 694
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->setBackgroundColor(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 685
    :pswitch_78
    aget-object p1, p2, v5

    .line 686
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object v0, p2, v4

    .line 687
    invoke-static {v0}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    aget-object p2, p2, v3

    .line 688
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 685
    invoke-direct {p0, p1, v0, p2}, Lcom/myflashlabs/richwebview/AirCommand;->saveWebArchive(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 677
    :pswitch_79
    aget-object p1, p2, v5

    .line 678
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 679
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->requestFocus(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 672
    :pswitch_7a
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->reload(I)V

    goto/16 :goto_0

    .line 667
    :pswitch_7b
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->stopLoading()V

    goto/16 :goto_0

    .line 658
    :pswitch_7c
    aget-object p1, p2, v5

    .line 659
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object v0, p2, v4

    .line 660
    invoke-static {v0}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    aget-object p2, p2, v3

    .line 661
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 658
    invoke-direct {p0, p1, v0, p2}, Lcom/myflashlabs/richwebview/AirCommand;->postUrl(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 653
    :pswitch_7d
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->resumeTimers(I)V

    goto/16 :goto_0

    .line 646
    :pswitch_7e
    aget-object p1, p2, v5

    .line 647
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 646
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->pauseTimers(I)V

    goto/16 :goto_0

    .line 638
    :pswitch_7f
    aget-object p1, p2, v5

    .line 639
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 640
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 638
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->pageUp(IZ)V

    goto/16 :goto_0

    .line 630
    :pswitch_80
    aget-object p1, p2, v5

    .line 631
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 632
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 630
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->pageDown(IZ)V

    goto/16 :goto_0

    .line 625
    :pswitch_81
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->onResume(I)V

    goto/16 :goto_0

    .line 620
    :pswitch_82
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->onPause(I)V

    goto/16 :goto_0

    .line 613
    :pswitch_83
    aget-object p1, p2, v5

    .line 614
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 613
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->stopLoad(I)V

    goto/16 :goto_0

    .line 605
    :pswitch_84
    aget-object p1, p2, v5

    .line 606
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 607
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 605
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->loadUrl(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 597
    :pswitch_85
    aget-object p1, p2, v5

    .line 598
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 599
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 597
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->loadData(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 590
    :pswitch_86
    aget-object p1, p2, v5

    .line 591
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->isPrivateBrowsingEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 590
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 585
    :pswitch_87
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->invokeZoomPicker()V

    goto/16 :goto_0

    .line 580
    :pswitch_88
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->goForward()V

    goto/16 :goto_0

    .line 573
    :pswitch_89
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    aget-object p2, p2, v4

    .line 574
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 573
    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebView;->goBackOrForward(I)V

    goto/16 :goto_0

    .line 568
    :pswitch_8a
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->goBack()V

    goto/16 :goto_0

    .line 561
    :pswitch_8b
    aget-object p1, p2, v5

    .line 562
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->getUrl(I)Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 554
    :pswitch_8c
    aget-object p1, p2, v5

    .line 555
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->getTitle(I)Ljava/lang/String;

    move-result-object p1

    .line 554
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 548
    :pswitch_8d
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->getSafeBrowsingPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 538
    :pswitch_8e
    aget-object p1, p2, v5

    .line 540
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 539
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->getRendererRequestedPriority(I)I

    move-result p1

    .line 538
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 529
    :pswitch_8f
    aget-object p1, p2, v5

    .line 531
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 530
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->getRendererPriorityWaivedWhenNotVisible(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 529
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 522
    :pswitch_90
    aget-object p1, p2, v5

    .line 523
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 522
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->getProgress(I)I

    move-result p1

    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 515
    :pswitch_91
    aget-object p1, p2, v5

    .line 516
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->getOriginalUrl(I)Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 508
    :pswitch_92
    aget-object p1, p2, v5

    .line 509
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 508
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Bitmap(Landroid/graphics/Bitmap;)Lcom/adobe/fre/FREBitmapData;

    move-result-object p1

    goto/16 :goto_1

    .line 501
    :pswitch_93
    aget-object p1, p2, v5

    .line 502
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getContentHeight()I

    move-result p1

    .line 501
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 492
    :pswitch_94
    aget-object p1, p2, v5

    .line 493
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object v0, p2, v4

    .line 494
    invoke-static {v0}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p2, p2, v3

    .line 495
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 492
    invoke-direct {p0, p1, v0, p2}, Lcom/myflashlabs/richwebview/AirCommand;->flingScroll(III)V

    goto/16 :goto_0

    .line 484
    :pswitch_95
    aget-object p1, p2, v5

    .line 485
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 486
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->evaluateJavascript(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 476
    :pswitch_96
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 478
    invoke-static {}, Lcom/myflashlabs/richwebview/MyWebView;->enableSlowWholeDocumentDraw()V

    goto/16 :goto_0

    .line 471
    :pswitch_97
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->destroy()V

    goto/16 :goto_0

    .line 463
    :pswitch_98
    aget-object p1, p2, v5

    .line 464
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 465
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->createPrintDocumentAdapter(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 455
    :pswitch_99
    aget-object p1, p2, v5

    .line 457
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 456
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->copyBackForwardList(I)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_String(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 450
    :pswitch_9a
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->clearSslPreferences(I)V

    goto/16 :goto_0

    .line 445
    :pswitch_9b
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->clearHistory(I)V

    goto/16 :goto_0

    .line 440
    :pswitch_9c
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->clearFormData(I)V

    goto/16 :goto_0

    .line 432
    :pswitch_9d
    aget-object p1, p2, v5

    .line 433
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 434
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->clearCache(IZ)V

    goto/16 :goto_0

    .line 425
    :pswitch_9e
    aget-object p1, p2, v5

    .line 426
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->canGoForward(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 425
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 415
    :pswitch_9f
    aget-object p1, p2, v5

    .line 417
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 418
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->canGoBackOrForward(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 415
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 408
    :pswitch_a0
    aget-object p1, p2, v5

    .line 409
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->canGoBack(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 408
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Boolean(Ljava/lang/Boolean;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto/16 :goto_1

    .line 403
    :pswitch_a1
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->addJavascriptInterface(I)V

    goto/16 :goto_0

    .line 398
    :pswitch_a2
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->addView(I)V

    goto/16 :goto_0

    .line 390
    :pswitch_a3
    aget-object p1, p2, v5

    .line 391
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 392
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->callJS(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :pswitch_a4
    aget-object p1, p2, v5

    .line 383
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 384
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->listenToScrollingEvent(IZ)V

    goto/16 :goto_0

    .line 374
    :pswitch_a5
    aget-object p1, p2, v4

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 376
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getClient_webview()Lcom/myflashlabs/richwebview/MyWebViewClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebViewClient;->continueLoadingTheURL()V

    goto/16 :goto_0

    .line 367
    :pswitch_a6
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->find_wv(I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getClient_webview()Lcom/myflashlabs/richwebview/MyWebViewClient;

    move-result-object p1

    aget-object p2, p2, v4

    .line 368
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 367
    invoke-virtual {p1, p2}, Lcom/myflashlabs/richwebview/MyWebViewClient;->set_isListeningToPageStartingEvent(Z)V

    goto/16 :goto_0

    .line 359
    :pswitch_a7
    aget-object p1, p2, v5

    .line 360
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 361
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->listenToTouchEvents(IZ)V

    goto/16 :goto_0

    .line 348
    :pswitch_a8
    aget-object p1, p2, v5

    .line 349
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object p1, p2, v4

    .line 350
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object p1, p2, v3

    .line 351
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object p1, p2, v2

    .line 352
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object p1, p2, v1

    .line 353
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v5, p0

    .line 348
    invoke-direct/range {v5 .. v10}, Lcom/myflashlabs/richwebview/AirCommand;->setPosition(IIIII)V

    goto/16 :goto_0

    .line 340
    :pswitch_a9
    aget-object p1, p2, v5

    .line 341
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v4

    .line 342
    invoke-static {p2}, Lcom/myflashlab/Conversions;->AirToJava_Boolean(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->hideWebView(IZ)V

    goto :goto_0

    .line 335
    :pswitch_aa
    aget-object p1, p2, v5

    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->closeWebView(I)V

    goto :goto_0

    .line 322
    :pswitch_ab
    aget-object p1, p2, v5

    .line 324
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object p1, p2, v4

    .line 325
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object p1, p2, v3

    .line 326
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object p1, p2, v2

    .line 327
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_Integer(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object p1, p2, v1

    .line 328
    invoke-static {p1}, Lcom/myflashlab/Conversions;->AirToJava_String(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    .line 323
    invoke-direct/range {v5 .. v10}, Lcom/myflashlabs/richwebview/AirCommand;->initNewInstance(IIIILjava/lang/String;)I

    move-result p1

    .line 322
    invoke-static {p1}, Lcom/myflashlab/Conversions;->JavaToAir_Integer(I)Lcom/adobe/fre/FREObject;

    move-result-object p1

    goto :goto_1

    .line 313
    :pswitch_ac
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_webviewList:Ljava/util/ArrayList;

    .line 314
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_framelayoutList:Ljava/util/ArrayList;

    .line 315
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand;->_layoutParamsList:Ljava/util/ArrayList;

    .line 317
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->findOutIfKeyboardIsVisible()V

    goto :goto_0

    .line 308
    :pswitch_ad
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/AirCommand;->showTestVersionDialog()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
