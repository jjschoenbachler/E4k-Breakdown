.class public Lcom/marpies/ane/facebook/functions/GetDeniedPermissionsFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "GetDeniedPermissionsFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 28
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getVectorFromSet(IZLjava/util/Set;)Lcom/adobe/fre/FREArray;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    return-object p1

    :catch_0
    move-exception p2

    .line 41
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method
