.class Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;
.super Ljava/lang/Object;
.source "ISNAdViewLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->handleMessageFromController(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

.field final synthetic val$failureMethod:Ljava/lang/String;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$functionParams:Lorg/json/JSONObject;

.field final synthetic val$successMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    iput-object p2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$functionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$failureMethod:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$successMethod:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$functionParams:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$functionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->access$000(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISNAdViewLogic | handleMessageFromController | cannot handle command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-static {v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->access$100(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$failureMethod:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$functionName:Ljava/lang/String;

    const-string v1, "handleGetViewVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$successMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendHandleGetViewVisibilityParams(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$functionName:Ljava/lang/String;

    const-string v1, "sendMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$functionName:Ljava/lang/String;

    const-string v1, "updateAd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$functionParams:Lorg/json/JSONObject;

    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$successMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$failureMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToAdUnit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISNAdViewLogic | handleMessageFromController | Error while trying handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-static {v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->access$100(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;->val$failureMethod:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
