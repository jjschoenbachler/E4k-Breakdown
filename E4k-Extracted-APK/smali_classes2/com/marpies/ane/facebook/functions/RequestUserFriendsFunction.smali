.class public Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "RequestUserFriendsFunction.java"


# static fields
.field private static mUserFriendsCallback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->onUserFriendsLoaded(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method private getCallback()Lcom/facebook/GraphRequest$GraphJSONArrayCallback;
    .locals 1

    .line 110
    sget-object v0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->mUserFriendsCallback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction$1;

    invoke-direct {v0, p0}, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction$1;-><init>(Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;)V

    sput-object v0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->mUserFriendsCallback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    .line 120
    :cond_0
    sget-object v0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->mUserFriendsCallback:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    return-object v0
.end method

.method private onUserFriendsLoaded(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 85
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error requesting user friends: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string p1, "userFriendsRequestError"

    .line 87
    iget v0, p0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->mListenerID:I

    .line 88
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 94
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "friends"

    .line 95
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "listenerID"

    .line 96
    iget v0, p0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->mListenerID:I

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "userFriendsLoaded"

    .line 97
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "userFriendsRequestError"

    .line 100
    iget p2, p0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->mListenerID:I

    const-string v0, "Error parsing returned user friends data."

    .line 101
    invoke-static {p2, v0}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "ANE CONTEXT IS NULL WHEN REQUESTING USER FRIENDS"

    .line 105
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    .line 51
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x1

    .line 53
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->mListenerID:I

    .line 55
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->getCallback()Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/GraphRequest;->newMyFriendsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    const/4 v1, 0x0

    .line 59
    aget-object v2, p2, v1

    if-nez v2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/adobe/fre/FREArray;

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getListOfStringFromFREArray(Lcom/adobe/fre/FREArray;)Ljava/util/List;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 60
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fields"

    const-string v3, ","

    .line 62
    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_1

    :cond_2
    const-string p1, "User must be logged in to request friends."

    .line 67
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string p1, "userFriendsRequestError"

    .line 68
    iget p2, p0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->mListenerID:I

    const-string v1, "User is not logged in."

    .line 69
    invoke-static {p2, v1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
