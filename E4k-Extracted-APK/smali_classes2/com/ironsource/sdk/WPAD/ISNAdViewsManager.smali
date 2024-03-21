.class public Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;
.super Ljava/lang/Object;
.source "ISNAdViewsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ISNAdViewsManager"

.field private static mInstance:Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;


# instance fields
.field private mAdViewsCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    return-object p0
.end method

.method private createAdSizeFromData(Lorg/json/JSONObject;)Lcom/ironsource/sdk/ISNAdSize;
    .locals 3

    .line 48
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "adSize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "height"

    .line 49
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "width"

    .line 50
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    .line 51
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v2, Lcom/ironsource/sdk/ISNAdSize;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v2, v1, p1, v0}, Lcom/ironsource/sdk/ISNAdSize;-><init>(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 54
    :catch_0
    new-instance p1, Lcom/ironsource/sdk/ISNAdSize;

    invoke-direct {p1}, Lcom/ironsource/sdk/ISNAdSize;-><init>()V

    return-object p1
.end method

.method private getAdSize(Lorg/json/JSONObject;)Lcom/ironsource/sdk/ISNAdSize;
    .locals 1

    .line 103
    new-instance v0, Lcom/ironsource/sdk/ISNAdSize;

    invoke-direct {v0}, Lcom/ironsource/sdk/ISNAdSize;-><init>()V

    .line 105
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->createAdSizeFromData(Lorg/json/JSONObject;)Lcom/ironsource/sdk/ISNAdSize;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mInstance:Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    invoke-direct {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;-><init>()V

    sput-object v1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mInstance:Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    .line 30
    :cond_0
    sget-object v1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mInstance:Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    throw v1
.end method

.method private shouldCreateContainer(Lorg/json/JSONObject;)Z
    .locals 1

    :try_start_0
    const-string v0, "shouldCreateContainer"

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getAdView(Ljava/lang/String;)Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;
    .locals 1

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdViewId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v1, "adViewId"

    .line 37
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "adViewId"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "params"

    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "adViewId"

    .line 41
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getViewVisibility(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "adViewId"

    .line 142
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;->sendHandleGetViewVisibility(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 148
    :cond_1
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "removeAdView fail - collection does not contain adViewId"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "collection does not contain adViewId"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_2
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "removeAdView fail - adViewId is empty"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "adViewId is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadWithUrl(Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;Lorg/json/JSONObject;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "adViewId"

    .line 61
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->getAdSize(Lorg/json/JSONObject;)Lcom/ironsource/sdk/ISNAdSize;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    new-instance v2, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-direct {v2, p1, p3, v0, v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;-><init>(Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/sdk/ISNAdSize;)V

    .line 76
    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getNetworkStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->setCacheDirectory(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, p2, p4, p5}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->loadWithUrl(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->shouldCreateContainer(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    sget-object p1, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    new-instance p2, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;

    invoke-direct {p2, p0, v2, p3, v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;-><init>(Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 71
    :cond_1
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "sendMessageToAd fail - collection already contain adViewId"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "collection already contain adViewId"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_2
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "loadWithUrl fail - adViewId is empty"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "adViewId is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performWebViewAction(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "adViewId"

    .line 175
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;

    const-string v1, "actionName"

    .line 185
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;->performWebViewAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 181
    :cond_1
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "performWebViewAction fail - collection does not contain adViewId"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "collection does not contain adViewId"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_2
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "performWebViewAction fail - adViewId is empty"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "adViewId is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAdView(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "adViewId"

    .line 158
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;

    .line 168
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p2, p3}, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;->performCleanup(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 164
    :cond_1
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "removeAdView fail - collection does not contain adViewId"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "collection does not contain adViewId"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_2
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "removeAdView fail - adViewId is empty"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "adViewId is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendMessageToAd(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "adViewId"

    .line 115
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->mAdViewsCollection:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;->sendMessageToAd(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 123
    :cond_1
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "sendMessageToAd fail - collection does not contain adViewId"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "collection does not contain adViewId"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_2
    sget-object p1, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->TAG:Ljava/lang/String;

    const-string p2, "sendMessageToAd fail - adViewId is empty"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "adViewId is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
