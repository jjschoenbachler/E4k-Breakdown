.class Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;
.super Ljava/lang/Object;
.source "ISNAdViewWebPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->loadWithUrl(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

.field final synthetic val$failureMethod:Ljava/lang/String;

.field final synthetic val$params:Lorg/json/JSONObject;

.field final synthetic val$successCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iput-object p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->val$failureMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->val$params:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->val$successCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->adunitCouldNotLoadToWebView:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    new-instance v1, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v2, "callfailreason"

    const-string v3, "loadWithUrl | webView is not null"

    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->val$failureMethod:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$100(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->val$params:Lorg/json/JSONObject;

    const-string v2, "urlForWebView"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$200(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adViewId"

    .line 91
    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v2}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$300(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$400(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->val$successCallback:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$1;->val$failureMethod:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/ironsource/sdk/Events/SDK5Events;->adunitCouldNotLoadToWebView:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    new-instance v2, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v2}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v3, "callfailreason"

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
