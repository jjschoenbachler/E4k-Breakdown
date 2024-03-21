.class public Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;
.super Ljava/lang/Object;
.source "AIRFacebookProfileTracker.java"


# static fields
.field private static mProfileTracker:Lcom/facebook/ProfileTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;->onProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    return-void
.end method

.method private static onProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 50
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 54
    invoke-virtual {p1}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "first_name"

    .line 55
    invoke-virtual {p1}, Lcom/facebook/Profile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "middle_name"

    .line 56
    invoke-virtual {p1}, Lcom/facebook/Profile;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_name"

    .line 57
    invoke-virtual {p1}, Lcom/facebook/Profile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 58
    invoke-virtual {p1}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {p1}, Lcom/facebook/Profile;->getLinkUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "link_uri"

    .line 60
    invoke-virtual {p1}, Lcom/facebook/Profile;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "basicProfileReady"

    .line 62
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, "Error parsing basic user profile."

    .line 65
    invoke-static {p0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 67
    :goto_0
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;->stopTracking()V

    goto :goto_1

    :cond_1
    const-string p0, "ANE CONTEXT IS NULL WHEN TRACKING PROFILE CHANGE"

    .line 69
    invoke-static {p0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static startTracking()V
    .locals 1

    .line 31
    sget-object v0, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;->mProfileTracker:Lcom/facebook/ProfileTracker;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker$1;

    invoke-direct {v0}, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker$1;-><init>()V

    sput-object v0, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;->mProfileTracker:Lcom/facebook/ProfileTracker;

    .line 40
    :cond_0
    sget-object v0, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;->mProfileTracker:Lcom/facebook/ProfileTracker;

    invoke-virtual {v0}, Lcom/facebook/ProfileTracker;->startTracking()V

    return-void
.end method

.method public static stopTracking()V
    .locals 1

    .line 45
    sget-object v0, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;->mProfileTracker:Lcom/facebook/ProfileTracker;

    invoke-virtual {v0}, Lcom/facebook/ProfileTracker;->stopTracking()V

    return-void
.end method
