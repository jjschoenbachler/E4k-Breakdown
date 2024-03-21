.class public Lcom/myflashlabs/richwebview/MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MyWebChromeClient.java"


# static fields
.field private static mUploadMessage1:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static mUploadMessage2:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _filePickerTitle:Ljava/lang/String;

.field private _webview:Lcom/myflashlabs/richwebview/MyWebView;


# direct methods
.method public constructor <init>(Lcom/myflashlabs/richwebview/MyWebView;Landroid/app/Activity;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const-string v0, "Choose a file"

    .line 20
    iput-object v0, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_filePickerTitle:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    .line 25
    iput-object p2, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_activity:Landroid/app/Activity;

    return-void
.end method

.method public static pickMsg1()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage1:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static pickMsg2()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage2:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static pickMsgNull()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage1:Landroid/webkit/ValueCallback;

    .line 41
    sput-object v0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage2:Landroid/webkit/ValueCallback;

    return-void
.end method

.method private runPicker1(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "runPicker1... 1"

    .line 83
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->toTrace(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage1:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage1:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "runPicker1... 2"

    .line 87
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->toTrace(Ljava/lang/String;)V

    .line 89
    sput-object p1, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage1:Landroid/webkit/ValueCallback;

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const-string p2, "*/*"

    .line 93
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_activity:Landroid/app/Activity;

    const-class v1, Lcom/myflashlabs/richwebview/Pick;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "IS_LOLLIPOP"

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "CHOOSER_FILE_TYPE"

    .line 95
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "CHOOSER_TITLE"

    .line 96
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_filePickerTitle:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object p2, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "runPicker1... 3"

    .line 99
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method private runPicker2(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage2:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage2:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 106
    :cond_0
    sput-object p1, Lcom/myflashlabs/richwebview/MyWebChromeClient;->mUploadMessage2:Landroid/webkit/ValueCallback;

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const-string p2, "*/*"

    .line 110
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_activity:Landroid/app/Activity;

    const-class v2, Lcom/myflashlabs/richwebview/Pick;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IS_LOLLIPOP"

    .line 111
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "CHOOSER_FILE_TYPE"

    .line 112
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "CHOOSER_TITLE"

    .line 113
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_filePickerTitle:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object p2, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private toTrace(Ljava/lang/String;)V
    .locals 2

    .line 119
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyWebChromeClient;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {v0}, Lcom/myflashlabs/richwebview/MyWebView;->getGeolocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :goto_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 76
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-direct {p0, p2, p1}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->runPicker2(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->runPicker1(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->runPicker1(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->runPicker1(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
