.class public Lcom/marpies/ane/facebook/functions/GetExpirationTimestampFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "GetExpirationTimestampFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 27
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    return-object p1

    :catch_0
    move-exception p2

    .line 40
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method
