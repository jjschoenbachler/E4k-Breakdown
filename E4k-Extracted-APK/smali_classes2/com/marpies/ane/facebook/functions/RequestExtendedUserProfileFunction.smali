.class public Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "RequestExtendedUserProfileFunction.java"


# static fields
.field private static mUserProfileCallback:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->onExtendedUserProfileLoaded(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method private getCallback()Lcom/facebook/GraphRequest$GraphJSONObjectCallback;
    .locals 1

    .line 101
    sget-object v0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->mUserProfileCallback:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction$1;

    invoke-direct {v0, p0}, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction$1;-><init>(Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;)V

    sput-object v0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->mUserProfileCallback:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    .line 109
    :cond_0
    sget-object v0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->mUserProfileCallback:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    return-object v0
.end method

.method private onExtendedUserProfileLoaded(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 78
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error requesting extended user profile: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string p1, "extendedProfileRequestError"

    .line 80
    iget v0, p0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->mListenerID:I

    .line 81
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-static {v0, p2}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object p2

    if-eqz p2, :cond_1

    :try_start_0
    const-string p2, "listenerID"

    .line 87
    iget v0, p0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->mListenerID:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "extendedProfileLoaded"

    .line 88
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "extendedProfileRequestError"

    .line 91
    iget p2, p0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->mListenerID:I

    const-string v0, "Error parsing returned user data."

    invoke-static {p2, v0}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "ANE CONTEXT IS NULL WHEN REQUESTING EXTENDED PROFILE"

    .line 96
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    .line 42
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x1

    .line 44
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->mListenerID:I

    .line 46
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->getCallback()Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    const/4 v1, 0x0

    .line 50
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

    .line 51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fields"

    const-string v3, ","

    .line 53
    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_1

    :cond_2
    const-string p1, "User must be logged in to request extended user info."

    .line 60
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string p1, "extendedProfileRequestError"

    .line 61
    iget p2, p0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->mListenerID:I

    const-string v1, "User is not logged in."

    invoke-static {p2, v1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
