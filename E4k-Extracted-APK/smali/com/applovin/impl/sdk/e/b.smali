.class Lcom/applovin/impl/sdk/e/b;
.super Lcom/applovin/impl/sdk/e/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/n;)V
    .locals 1

    const-string v0, "TaskApiSubmitData"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/b;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/h;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->K()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->W:Lcom/applovin/impl/sdk/c/b;

    const-string v2, "device_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->K()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->Y:Lcom/applovin/impl/sdk/c/b;

    const-string v2, "device_token"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->K()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->Z:Lcom/applovin/impl/sdk/c/b;

    const-string v2, "publisher_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V

    const-string v0, "latest_version"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SDK version ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is outdated. Please integrate the latest version of the AppLovin SDK ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "). Doing so will improve your CPMs and ensure you have access to the latest revenue earning features."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk_update_message"

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sdk_update_message"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p1, "AppLovinSdk"

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/w;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->T()Lcom/applovin/impl/sdk/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/g;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Unable to parse API response"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/e/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->V()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "platform"

    const-string v3, "type"

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "api_level"

    const-string v3, "sdk_version"

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "device_info"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->h()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sdk_version"

    const-string v2, "applovin_sdk_version"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "ia"

    const-string v2, "installed_at"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "app_info"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "2.0/device"

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "2.0/device"

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/h;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/h;->e(Lcom/applovin/impl/sdk/n;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/c$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->ev:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/c$a;->d(Z)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->cV:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/c$a;->a(I)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/c$a;->a()Lcom/applovin/impl/sdk/network/c;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/e/b$1;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-direct {v0, p0, p1, v1}, Lcom/applovin/impl/sdk/e/b$1;-><init>(Lcom/applovin/impl/sdk/e/b;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/n;)V

    sget-object p1, Lcom/applovin/impl/sdk/c/b;->aS:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/u;->a(Lcom/applovin/impl/sdk/c/b;)V

    sget-object p1, Lcom/applovin/impl/sdk/c/b;->aT:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/u;->b(Lcom/applovin/impl/sdk/c/b;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/b;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->S()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Submitting user data..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e/b;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e/b;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Unable to build JSON message with collected data"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/e/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
