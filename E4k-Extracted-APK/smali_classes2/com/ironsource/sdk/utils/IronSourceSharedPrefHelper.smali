.class public Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
.super Ljava/lang/Object;
.source "IronSourceSharedPrefHelper.java"


# static fields
.field private static final AD_ID_PATTERN:Ljava/lang/String; = "^\\d+_\\d+$"

.field private static final BACK_BUTTON_STATE:Ljava/lang/String; = "back_button_state"

.field private static final SEARCH_KEYS:Ljava/lang/String; = "search_keys"

.field private static final SUPERSONIC_SHARED_PREF:Ljava/lang/String; = "supersonic_shared_preferen"

.field private static final TAG:Ljava/lang/String; = "IronSourceSharedPrefHelper"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "supersonic_shared_preferen"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSupersonicPrefHelper(Landroid/content/Context;)Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    .line 43
    :cond_0
    sget-object p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mInstance:Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0

    throw p0
.end method

.method private isKeyOfCampaignLastUpdateTime(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^\\d+_\\d+$"

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public clearCampaignsUpdateTime()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 223
    iget-object v3, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 225
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v1, v2

    .line 226
    invoke-direct {p0, v5}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->isKeyOfCampaignLastUpdateTime(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method

.method public getBackButtonState()Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "back_button_state"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->None:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 74
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->Device:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 76
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->Controller:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    return-object v0

    .line 79
    :cond_2
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->Controller:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    return-object v0
.end method

.method public getCurrentSDKVersion()Ljava/lang/String;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "search_keys"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 105
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v0, "searchKeys"

    .line 107
    invoke-virtual {v2, v0}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "searchKeys"

    .line 109
    invoke-virtual {v2, v0}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 112
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/ironsource/sdk/data/SSAObj;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "{}"

    return-object p1
.end method

.method public setBackButtonState(Ljava/lang/String;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "back_button_state"

    .line 57
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentSDKVersion(Ljava/lang/String;)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getCurrentSDKVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    .line 168
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLatestCompletionsTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ssaUserData"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 193
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "timestamp"

    .line 197
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    iget-object p1, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "ssaUserData"

    .line 200
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSearchKeys(Ljava/lang/String;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_keys"

    .line 90
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
