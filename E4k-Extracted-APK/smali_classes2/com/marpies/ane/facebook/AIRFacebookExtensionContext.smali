.class public Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AIRFacebookExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->setContext(Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;)V

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "init"

    .line 33
    new-instance v2, Lcom/marpies/ane/facebook/functions/InitFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/InitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isUserLoggedIn"

    .line 36
    new-instance v2, Lcom/marpies/ane/facebook/functions/IsUserLoggedInFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/IsUserLoggedInFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getAccessToken"

    .line 37
    new-instance v2, Lcom/marpies/ane/facebook/functions/GetAccessTokenFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/GetAccessTokenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isAccessTokenExpired"

    .line 38
    new-instance v2, Lcom/marpies/ane/facebook/functions/IsAccessTokenExpiredFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/IsAccessTokenExpiredFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getExpirationTimestamp"

    .line 39
    new-instance v2, Lcom/marpies/ane/facebook/functions/GetExpirationTimestampFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/GetExpirationTimestampFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loginWithPermissions"

    .line 40
    new-instance v2, Lcom/marpies/ane/facebook/functions/LoginWithPermissionsFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/LoginWithPermissionsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logout"

    .line 41
    new-instance v2, Lcom/marpies/ane/facebook/functions/LogoutFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/LogoutFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isPermissionGranted"

    .line 43
    new-instance v2, Lcom/marpies/ane/facebook/functions/IsPermissionGrantedFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/IsPermissionGrantedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getGrantedPermissions"

    .line 44
    new-instance v2, Lcom/marpies/ane/facebook/functions/GetGrantedPermissionsFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/GetGrantedPermissionsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeniedPermissions"

    .line 45
    new-instance v2, Lcom/marpies/ane/facebook/functions/GetDeniedPermissionsFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/GetDeniedPermissionsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getUserProfilePictureUri"

    .line 47
    new-instance v2, Lcom/marpies/ane/facebook/functions/GetUserProfilePictureUriFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/GetUserProfilePictureUriFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestExtendedUserProfile"

    .line 48
    new-instance v2, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestUserFriends"

    .line 50
    new-instance v2, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendOpenGraphRequest"

    .line 51
    new-instance v2, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestAppRequests"

    .line 52
    new-instance v2, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "canShareContent"

    .line 54
    new-instance v2, Lcom/marpies/ane/facebook/functions/CanShareContentFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/CanShareContentFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shareLink"

    .line 55
    new-instance v2, Lcom/marpies/ane/facebook/functions/ShareLinkFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/ShareLinkFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sharePhoto"

    .line 56
    new-instance v2, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shareMessageWithLink"

    .line 57
    new-instance v2, Lcom/marpies/ane/facebook/functions/ShareLinkFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/ShareLinkFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shareMessageWithPhoto"

    .line 58
    new-instance v2, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shareOpenGraphStory"

    .line 59
    new-instance v2, Lcom/marpies/ane/facebook/functions/ShareOpenGraphStoryFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/ShareOpenGraphStoryFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "canShowAppInviteDialog"

    .line 60
    new-instance v2, Lcom/marpies/ane/facebook/functions/CanShowAppInviteDialogFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/CanShowAppInviteDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showAppInviteDialog"

    .line 61
    new-instance v2, Lcom/marpies/ane/facebook/functions/ShowAppInviteDialogFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/ShowAppInviteDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "canShowGameRequestDialog"

    .line 62
    new-instance v2, Lcom/marpies/ane/facebook/functions/CanShowGameRequestDialogFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/CanShowGameRequestDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showGameRequestDialog"

    .line 63
    new-instance v2, Lcom/marpies/ane/facebook/functions/ShowGameRequestDialogFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/ShowGameRequestDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logEvent"

    .line 65
    new-instance v2, Lcom/marpies/ane/facebook/functions/LogEventFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/LogEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "activateApp"

    .line 66
    new-instance v2, Lcom/marpies/ane/facebook/functions/ActivateAppFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/ActivateAppFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deactivateApp"

    .line 67
    new-instance v2, Lcom/marpies/ane/facebook/functions/DeactivateAppFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/DeactivateAppFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fetchDeferredAppLink"

    .line 68
    new-instance v2, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getSDKVersion"

    .line 69
    new-instance v2, Lcom/marpies/ane/facebook/functions/GetSDKVersionFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/GetSDKVersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isSDKInitialized"

    .line 70
    new-instance v2, Lcom/marpies/ane/facebook/functions/IsSDKInitializedFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/IsSDKInitializedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setAutoLogAppEventsEnabled"

    .line 71
    new-instance v2, Lcom/marpies/ane/facebook/functions/SetAutoLogAppEventsEnabledFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/SetAutoLogAppEventsEnabledFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setAdvertiserIDCollectionEnabled"

    .line 72
    new-instance v2, Lcom/marpies/ane/facebook/functions/SetAdvertiserIDCollectionEnabledFunction;

    invoke-direct {v2}, Lcom/marpies/ane/facebook/functions/SetAdvertiserIDCollectionEnabledFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
