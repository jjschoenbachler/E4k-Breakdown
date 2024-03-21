.class public Lcom/ironsource/sdk/controller/OMIDJSAdapter;
.super Ljava/lang/Object;
.source "OMIDJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;
    }
.end annotation


# static fields
.field private static final ACTIVATE_FUNCTION_NAME:Ljava/lang/String; = "activate"

.field private static final FAIL_JS_CALLBACK_NAME:Ljava/lang/String; = "fail"

.field private static final FINISH_SESSION_FUNCTION_NAME:Ljava/lang/String; = "finishSession"

.field private static final GET_OMID_DATA_FUNCTION_NAME:Ljava/lang/String; = "getOmidData"

.field private static final IMPRESSION_OCCURRED_FUNCTION_NAME:Ljava/lang/String; = "impressionOccurred"

.field private static final OMID_FUNCTION_PROPERTY_NAME:Ljava/lang/String; = "omidFunction"

.field private static final OMID_PARAMS_PROPERTY_NAME:Ljava/lang/String; = "omidParams"

.field private static final START_SESSION_FUNCTION_NAME:Ljava/lang/String; = "startSession"

.field private static final SUCCESS_JS_CALLBACK_NAME:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "OMIDJSAdapter"

.field private static final UNSUPPORTED_OMID_API_MESSAGE:Ljava/lang/String; = "%s | unsupported OMID API"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOmidManager:Lcom/ironsource/sdk/analytics/omid/OMIDManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->mContext:Landroid/content/Context;

    .line 40
    new-instance p1, Lcom/ironsource/sdk/analytics/omid/OMIDManager;

    invoke-direct {p1}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->mOmidManager:Lcom/ironsource/sdk/analytics/omid/OMIDManager;

    return-void
.end method

.method private fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;-><init>(Lcom/ironsource/sdk/controller/OMIDJSAdapter$1;)V

    const-string v1, "omidFunction"

    .line 99
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->name:Ljava/lang/String;

    const-string v1, "omidParams"

    .line 100
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    const-string v1, "success"

    .line 101
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    const-string v1, "fail"

    .line 102
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->failCallback:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method call(Ljava/lang/String;Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;

    move-result-object p1

    .line 53
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    .line 56
    iget-object v1, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    const-string v2, "adViewId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "adViewId"

    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 66
    :try_start_0
    iget-object v2, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->name:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "startSession"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "impressionOccurred"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "finishSession"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "getOmidData"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v4, "activate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_4

    .line 81
    :pswitch_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->mOmidManager:Lcom/ironsource/sdk/analytics/omid/OMIDManager;

    invoke-virtual {v2}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->getOMIDData()Lcom/ironsource/sdk/data/SSAObj;

    move-result-object v2

    :goto_2
    move-object v0, v2

    goto :goto_3

    .line 78
    :pswitch_1
    iget-object v2, p0, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->mOmidManager:Lcom/ironsource/sdk/analytics/omid/OMIDManager;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->impressionOccurred(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 75
    :pswitch_2
    iget-object v2, p0, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->mOmidManager:Lcom/ironsource/sdk/analytics/omid/OMIDManager;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->finishSession(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 72
    :pswitch_3
    iget-object v2, p0, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->mOmidManager:Lcom/ironsource/sdk/analytics/omid/OMIDManager;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->startSession(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 68
    :pswitch_4
    iget-object v2, p0, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->mOmidManager:Lcom/ironsource/sdk/analytics/omid/OMIDManager;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->activate(Landroid/content/Context;)V

    .line 69
    iget-object v2, p0, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->mOmidManager:Lcom/ironsource/sdk/analytics/omid/OMIDManager;

    invoke-virtual {v2}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->getOMIDData()Lcom/ironsource/sdk/data/SSAObj;

    move-result-object v2

    goto :goto_2

    .line 86
    :goto_3
    iget-object v2, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    invoke-virtual {p2, v5, v2, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V

    goto :goto_5

    :goto_4
    const-string v3, "%s | unsupported OMID API"

    .line 84
    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->name:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "errMsg"

    .line 88
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v3, Lcom/ironsource/sdk/controller/OMIDJSAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMIDJSAdapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p1, p1, Lcom/ironsource/sdk/controller/OMIDJSAdapter$FunctionCall;->failCallback:Ljava/lang/String;

    invoke-virtual {p2, v1, p1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62b42b0d -> :sswitch_4
        -0x3aada7c7 -> :sswitch_3
        0x436d283 -> :sswitch_2
        0x48024a4e -> :sswitch_1
        0x6e4d03d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
