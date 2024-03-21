.class Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;
.super Ljava/lang/Object;
.source "ISNAdViewWebPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->performCleanup(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

.field final synthetic val$failureCallback:Ljava/lang/String;

.field final synthetic val$successCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iput-object p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->val$successCallback:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->val$failureCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 137
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adViewId"

    .line 138
    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v2}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$300(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$400(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$400(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->val$successCallback:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 141
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$400(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->destroy()V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$402(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    .line 144
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$502(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Landroid/app/Activity;)Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    invoke-static {}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performCleanup | could not destroy ISNAdView webView ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v3}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$300(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v1, Lcom/ironsource/sdk/Events/SDK5Events;->webViewCleanUpFailed:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    new-instance v2, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v2}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v3, "callfailreason"

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    .line 151
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$2;->val$failureCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
