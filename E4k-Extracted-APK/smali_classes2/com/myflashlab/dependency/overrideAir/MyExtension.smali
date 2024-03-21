.class public Lcom/myflashlab/dependency/overrideAir/MyExtension;
.super Ljava/lang/Object;
.source "MyExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static AS3_CONTEXT:Lcom/adobe/fre/FREContext;

.field public static MYFLASHLAB_DEBUGGER:Z

.field static _aneLabIdDic:Lorg/json/JSONObject;

.field private static _appliedANEsArr:Lorg/json/JSONArray;

.field private static _hasDemoAne:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addANE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_appliedANEsArr:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_appliedANEsArr:Lorg/json/JSONArray;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 146
    :goto_0
    sget-object v2, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_appliedANEsArr:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 148
    sget-object v2, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_appliedANEsArr:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    .line 149
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 180
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 181
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "v"

    .line 182
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    sget-object p0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_appliedANEsArr:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    return-void
.end method

.method public static hasAnyDemoAne()Z
    .locals 1

    .line 136
    sget-boolean v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_hasDemoAne:Z

    return v0
.end method

.method public static isAneRegistered(Ljava/lang/String;)Z
    .locals 9

    .line 51
    sget-object v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_aneLabIdDic:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 53
    sput-boolean v2, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_hasDemoAne:Z

    return v1

    .line 59
    :cond_0
    :try_start_0
    sget-object v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    .line 61
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "air."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "air."

    .line 67
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/CharSequence;

    const-string v5, ""

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 71
    :goto_0
    sget-object v4, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_aneLabIdDic:Lorg/json/JSONObject;

    const-string v5, "anes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 72
    sget-object v5, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_aneLabIdDic:Lorg/json/JSONObject;

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    sget-object v6, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_aneLabIdDic:Lorg/json/JSONObject;

    const-string v7, "iv"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/myflashlab/dependency/overrideAir/AirCommand;->decrypteCipher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 83
    :goto_1
    sget-object v5, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_appliedANEsArr:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 85
    sget-object v5, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_appliedANEsArr:Lorg/json/JSONArray;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    .line 86
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_3

    move-object v0, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 96
    :goto_3
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 99
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.myflashlab.air.extensions."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    aget-object v6, v6, v2

    .line 103
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "v"

    .line 105
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move v1, v5

    goto :goto_5

    :catch_0
    move-exception p0

    move v1, v5

    goto :goto_4

    :catch_1
    move-exception p0

    :goto_4
    const-string v0, "self"

    const-string v3, "MyExtension"

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v3, p0}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    if-nez v1, :cond_8

    .line 130
    sput-boolean v2, Lcom/myflashlab/dependency/overrideAir/MyExtension;->_hasDemoAne:Z

    :cond_8
    return v1
.end method

.method public static toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 40
    sget-boolean v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->MYFLASHLAB_DEBUGGER:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    sget-boolean v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->MYFLASHLAB_DEBUGGER:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    if-nez v0, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    const-string v1, "TRACE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|||"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|||"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 32
    new-instance p1, Lcom/myflashlab/dependency/overrideAir/MyContext;

    invoke-direct {p1}, Lcom/myflashlab/dependency/overrideAir/MyContext;-><init>()V

    sput-object p1, Lcom/myflashlab/dependency/overrideAir/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    const/4 p1, 0x0

    .line 33
    sput-boolean p1, Lcom/myflashlab/dependency/overrideAir/MyExtension;->MYFLASHLAB_DEBUGGER:Z

    .line 35
    sget-object p1, Lcom/myflashlab/dependency/overrideAir/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 189
    sget-object v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->dispose()V

    const/4 v0, 0x0

    .line 190
    sput-object v0, Lcom/myflashlab/dependency/overrideAir/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
