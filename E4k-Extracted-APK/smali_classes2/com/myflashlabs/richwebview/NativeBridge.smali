.class public Lcom/myflashlabs/richwebview/NativeBridge;
.super Ljava/lang/Object;
.source "NativeBridge.java"


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _webview:Lcom/myflashlabs/richwebview/MyWebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/myflashlabs/richwebview/MyWebView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/myflashlabs/richwebview/NativeBridge;->_activity:Landroid/app/Activity;

    .line 17
    iput-object p2, p0, Lcom/myflashlabs/richwebview/NativeBridge;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    return-void
.end method

.method static synthetic access$000(Lcom/myflashlabs/richwebview/NativeBridge;)Lcom/myflashlabs/richwebview/MyWebView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/myflashlabs/richwebview/NativeBridge;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    return-object p0
.end method

.method private toTrace(Ljava/lang/String;)V
    .locals 2

    .line 71
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public callFlash(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callFlash... BEGIN"

    .line 28
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/NativeBridge;->toTrace(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callFlash, jsString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/NativeBridge;->toTrace(Ljava/lang/String;)V

    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 34
    iget-object v2, p0, Lcom/myflashlabs/richwebview/NativeBridge;->_webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {v2}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    .line 35
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "fromJS"

    .line 37
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/NativeBridge;->toTrace(Ljava/lang/String;)V

    :goto_0
    const-string p1, "callFlash... END"

    .line 44
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/NativeBridge;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method public callJS(Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/myflashlabs/richwebview/NativeBridge;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/myflashlabs/richwebview/NativeBridge;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/myflashlabs/richwebview/NativeBridge$1;

    invoke-direct {v1, p0, p1}, Lcom/myflashlabs/richwebview/NativeBridge$1;-><init>(Lcom/myflashlabs/richwebview/NativeBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
