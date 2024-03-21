.class public Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "SendOpenGraphRequestFunction.java"


# static fields
.field private static mGraphRequestCallback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;Lcom/facebook/GraphResponse;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->onGraphRequestResult(Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method private getCallback()Lcom/facebook/GraphRequest$Callback;
    .locals 1

    .line 126
    sget-object v0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->mGraphRequestCallback:Lcom/facebook/GraphRequest$Callback;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction$1;

    invoke-direct {v0, p0}, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction$1;-><init>(Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;)V

    sput-object v0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->mGraphRequestCallback:Lcom/facebook/GraphRequest$Callback;

    .line 134
    :cond_0
    sget-object v0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->mGraphRequestCallback:Lcom/facebook/GraphRequest$Callback;

    return-object v0
.end method

.method private onGraphRequestResult(Lcom/facebook/GraphResponse;)V
    .locals 7

    .line 102
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open Graph request error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "openGraphError"

    .line 104
    iget v1, p0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->mListenerID:I

    .line 105
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "{}"

    .line 111
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    const-string v1, "openGraphSuccess"

    .line 116
    sget-object v2, Lcom/marpies/ane/facebook/utils/StringUtils;->locale:Ljava/util/Locale;

    const-string v3, "%d||%s||%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->mListenerID:I

    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getRawResponse()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {v1, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "ANE CONTEXT IS NULL WHEN REQUESTING OPEN GRAPH"

    .line 121
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    .line 47
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 49
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/HttpMethod;->valueOf(Ljava/lang/String;)Lcom/facebook/HttpMethod;

    move-result-object v0

    const/4 v1, 0x1

    .line 52
    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 53
    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->mListenerID:I

    .line 56
    sget-object v2, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction$2;->$SwitchMap$com$facebook$HttpMethod:[I

    invoke-virtual {v0}, Lcom/facebook/HttpMethod;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    move-object p1, v2

    goto/16 :goto_1

    .line 78
    :pswitch_0
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/facebook/GraphRequest;->newDeleteObjectRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sending Open Graph DELETE request with ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 67
    :pswitch_1
    array-length v0, p2

    if-le v0, v3, :cond_0

    aget-object v0, p2, v3

    if-eqz v0, :cond_0

    .line 68
    aget-object p2, p2, v3

    check-cast p2, Lcom/adobe/fre/FREArray;

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getJSONObjectFromFREArray(Lcom/adobe/fre/FREArray;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 70
    :goto_0
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    invoke-static {p1, v1, p2, v0}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Open Graph POST request with path "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and parameters "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_1
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :pswitch_2
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending Open Graph GET request with path "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 60
    array-length v0, p2

    if-le v0, v3, :cond_2

    aget-object v0, p2, v3

    if-eqz v0, :cond_2

    .line 61
    aget-object p2, p2, v3

    check-cast p2, Lcom/adobe/fre/FREArray;

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getBundleFromFREArray(Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;

    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_2

    :cond_3
    const-string p1, "openGraphError"

    .line 85
    iget p2, p0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->mListenerID:I

    const-string v0, "Error creating Open Graph request."

    .line 86
    invoke-static {p2, v0}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
