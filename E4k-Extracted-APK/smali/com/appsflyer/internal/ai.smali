.class final Lcom/appsflyer/internal/ai;
.super Lcom/appsflyer/internal/am;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/ai$b;
    }
.end annotation


# static fields
.field private static AFKeystoreWrapper:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field AFInAppEventParameterName:Lcom/appsflyer/internal/ai$b;

.field AFInAppEventType:Z

.field private valueOf:Ljava/lang/String;

.field private values:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "onelink.me"

    const-string v1, "onelnk.com"

    const-string v2, "app.aflink.com"

    .line 27
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/ai;->AFKeystoreWrapper:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Lcom/appsflyer/internal/ah;)V
    .locals 6

    .line 36
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/am;-><init>(Lcom/appsflyer/internal/ah;)V

    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p0, Lcom/appsflyer/internal/ai;->AFInAppEventType:Z

    .line 37
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 39
    sget-object v0, Lcom/appsflyer/internal/ai;->AFKeystoreWrapper:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/appsflyer/internal/f;->init:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Validate if link "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " belongs to custom domains: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/appsflyer/internal/f;->init:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/appsflyer/internal/f;->init:[Ljava/lang/String;

    array-length v2, v0

    :goto_1
    if-ge p2, v2, :cond_3

    aget-object v4, v0, p2

    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v1, "Link matches custom domain: "

    .line 49
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 50
    iput-boolean v3, p0, Lcom/appsflyer/internal/ai;->AFInAppEventType:Z

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_4

    .line 55
    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 56
    aget-object v0, p2, v3

    iput-object v0, p0, Lcom/appsflyer/internal/am;->oneLinkId:Ljava/lang/String;

    const/4 v0, 0x2

    .line 57
    aget-object p2, p2, v0

    iput-object p2, p0, Lcom/appsflyer/internal/ai;->values:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/ai;->valueOf:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method final getOneLinkUrl()Ljava/lang/String;
    .locals 5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/internal/ai;->BASE_URL:Ljava/lang/String;

    const/4 v2, 0x2

    .line 1062
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/appsflyer/internal/ah;->AFInAppEventParameterName()Lcom/appsflyer/internal/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/am;->oneLinkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/ai;->values:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final handleResponse(Ljava/lang/String;)V
    .locals 5

    .line 84
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 87
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/ai;->AFInAppEventParameterName:Lcom/appsflyer/internal/ai$b;

    invoke-interface {v1, v0}, Lcom/appsflyer/internal/ai$b;->AFInAppEventType(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/appsflyer/internal/ai;->AFInAppEventParameterName:Lcom/appsflyer/internal/ai$b;

    const-string v2, "Can\'t parse one link data"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/ai$b;->valueOf(Ljava/lang/String;)V

    const-string v1, "Error while parsing to json "

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final initRequest(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GET"

    .line 73
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method final onErrorResponse()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/appsflyer/internal/ai;->valueOf:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/ai;->valueOf:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "Can\'t get one link data"

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/ai;->AFInAppEventParameterName:Lcom/appsflyer/internal/ai$b;

    invoke-interface {v1, v0}, Lcom/appsflyer/internal/ai$b;->valueOf(Ljava/lang/String;)V

    return-void
.end method

.method final values()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/appsflyer/internal/am;->oneLinkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/ai;->values:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/am;->oneLinkId:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
