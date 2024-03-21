.class public Lcom/ironsource/sdk/controller/JSMessageDispatcher;
.super Ljava/lang/Object;
.source "JSMessageDispatcher.java"


# instance fields
.field private mCallback:Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->mCallback:Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;

    return-void
.end method


# virtual methods
.method public sendFailureMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->mCallback:Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;

    .line 24
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->getFailureCallback()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public sendSuccessMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->mCallback:Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;

    .line 16
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->getSuccessCallback()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
