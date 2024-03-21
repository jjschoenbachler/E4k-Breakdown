.class public Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "RequestAppRequestsFunction.java"


# static fields
.field private static mAppRequestsCallback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;Lcom/facebook/GraphResponse;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->onAppRequestsResult(Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method private getCallback()Lcom/facebook/GraphRequest$Callback;
    .locals 1

    .line 114
    sget-object v0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->mAppRequestsCallback:Lcom/facebook/GraphRequest$Callback;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction$1;

    invoke-direct {v0, p0}, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction$1;-><init>(Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;)V

    sput-object v0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->mAppRequestsCallback:Lcom/facebook/GraphRequest$Callback;

    .line 122
    :cond_0
    sget-object v0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->mAppRequestsCallback:Lcom/facebook/GraphRequest$Callback;

    return-object v0
.end method

.method private onAppRequestsResult(Lcom/facebook/GraphResponse;)V
    .locals 5

    .line 83
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error requesting user\'s Game Requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v1, "appRequestsError"

    .line 86
    iget v2, p0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->mListenerID:I

    .line 87
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {v0, v1, p1}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v1, "gameRequests"

    .line 97
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "listenerID"

    .line 98
    iget v4, p0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->mListenerID:I

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v3, v1

    goto :goto_0

    :catch_1
    move-object v2, v1

    move-object v3, v2

    :catch_2
    :goto_0
    const-string v1, "Facebook SDK returned unexpected data for Game Requests request."

    .line 100
    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    :goto_1
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const-string p1, "appRequestsSuccess"

    .line 103
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "appRequestsError"

    .line 107
    iget v2, p0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->mListenerID:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Facebook SDK returned unexpected data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getRawResponse()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {v0, v1, p1}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    .line 52
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 54
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/me/apprequests/"

    .line 57
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    const/4 v1, 0x0

    .line 58
    aget-object v2, p2, v1

    if-nez v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREArray;

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getListOfStringFromFREArray(Lcom/adobe/fre/FREArray;)Ljava/util/List;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 59
    aget-object p2, p2, v2

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->mListenerID:I

    if-eqz v1, :cond_1

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 61
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fields"

    const-string v3, ","

    .line 62
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_1

    :cond_2
    const-string p1, "User must be logged in to request Game Requests."

    .line 67
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string p1, "appRequestsError"

    .line 68
    iget p2, p0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->mListenerID:I

    const-string v1, "User is not logged in."

    invoke-static {p2, v1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
