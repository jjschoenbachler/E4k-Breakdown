.class public Lcom/ironsource/sdk/controller/JSInterfaceMessage;
.super Ljava/lang/Object;
.source "JSInterfaceMessage.java"


# instance fields
.field private mFailureCallback:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParams:Lorg/json/JSONObject;

.field private mSuccessCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "functionName"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mName:Ljava/lang/String;

    const-string v0, "functionParams"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mParams:Lorg/json/JSONObject;

    const-string v0, "success"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mSuccessCallback:Ljava/lang/String;

    const-string v0, "fail"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mFailureCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFailureCallback()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mFailureCallback:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSuccessCallback()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mSuccessCallback:Ljava/lang/String;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "functionName"

    .line 41
    iget-object v2, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "functionParams"

    .line 42
    iget-object v2, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mParams:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "success"

    .line 43
    iget-object v2, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mSuccessCallback:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fail"

    .line 44
    iget-object v2, p0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->mFailureCallback:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
