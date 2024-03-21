.class public final Lcom/ironsource/sdk/controller/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ironsource/sdk/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/ironsource/sdk/controller/y;

.field private b:Lcom/ironsource/sdk/c/d;

.field private c:Lcom/ironsource/sdk/controller/c;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/a;->c:Lcom/ironsource/sdk/controller/c;

    invoke-static {}, Lcom/ironsource/sdk/c/d;->a()Lcom/ironsource/sdk/c/d;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/sdk/c/d;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Lcom/ironsource/sdk/controller/x$d$a;)V
    .locals 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/ironsource/sdk/controller/a$a;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/a$a;-><init>(B)V

    const-string v2, "functionName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/ironsource/sdk/controller/a$a;->a:Ljava/lang/String;

    const-string v2, "functionParams"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    const-string v2, "fail"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    new-instance v0, Lcom/ironsource/sdk/g/f;

    invoke-direct {v0}, Lcom/ironsource/sdk/g/f;-><init>()V

    :try_start_0
    iget-object v2, p1, Lcom/ironsource/sdk/controller/a$a;->a:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "webviewAction"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "handleGetViewVisibility"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "loadWithUrl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v4, "sendMessage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v4, "removeAdView"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/sdk/c/d;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    const-string v6, "adViewId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v2, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/sdk/c/e;

    const-string v6, "actionName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_d

    invoke-interface {v2, v3, v4, v5}, Lcom/ironsource/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "performWebViewAction fail - collection does not contain adViewId"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "collection does not contain adViewId"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "performWebViewAction fail - adViewId is empty"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "adViewId is empty"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    iget-object v2, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/sdk/c/d;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    const-string v6, "adViewId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v2, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/sdk/c/e;

    if-eqz v2, :cond_d

    invoke-interface {v2, v3, v4, v5}, Lcom/ironsource/sdk/c/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "removeAdView fail - collection does not contain adViewId"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "collection does not contain adViewId"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "removeAdView fail - adViewId is empty"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "adViewId is empty"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    iget-object v2, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/sdk/c/d;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    const-string v6, "adViewId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ironsource/sdk/c/e;

    iget-object v2, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_d

    invoke-interface {v6, v4, v5}, Lcom/ironsource/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "removeAdView fail - collection does not contain adViewId"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "collection does not contain adViewId"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "removeAdView fail - adViewId is empty"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "adViewId is empty"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_3
    iget-object v2, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/sdk/c/d;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    new-instance v6, Lorg/json/JSONObject;

    const-string v7, "params"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "adViewId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v2, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/sdk/c/e;

    if-eqz v2, :cond_d

    invoke-interface {v2, v3, v4, v5}, Lcom/ironsource/sdk/c/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "sendMessageToAd fail - collection does not contain adViewId"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "collection does not contain adViewId"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "sendMessageToAd fail - adViewId is empty"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "adViewId is empty"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_4
    iget-object v2, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/sdk/c/d;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/a;->c:Lcom/ironsource/sdk/controller/c;

    invoke-virtual {v4}, Lcom/ironsource/sdk/controller/c;->a()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    const-string v7, "adViewId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/c/d;->c(Lorg/json/JSONObject;)Lcom/ironsource/sdk/a;

    move-result-object v8

    iget-object v9, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    new-instance v9, Lcom/ironsource/sdk/c/c;

    invoke-direct {v9, p0, v4, v7, v8}, Lcom/ironsource/sdk/c/c;-><init>(Lcom/ironsource/sdk/b/a;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/sdk/a;)V

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getNetworkStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/ironsource/sdk/c/c;->b:Ljava/lang/String;

    sget-object v8, Lcom/ironsource/environment/e/a;->a:Lcom/ironsource/environment/e/a;

    new-instance v10, Lcom/ironsource/sdk/c/c$1;

    invoke-direct {v10, v9, v6, v3, v5}, Lcom/ironsource/sdk/c/c$1;-><init>(Lcom/ironsource/sdk/c/c;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/ironsource/environment/e/a;->a(Ljava/lang/Runnable;)V

    invoke-static {v3}, Lcom/ironsource/sdk/c/d;->b(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/ironsource/environment/e/a;->a:Lcom/ironsource/environment/e/a;

    new-instance v5, Lcom/ironsource/sdk/c/d$1;

    invoke-direct {v5, v2, v9, v4, v7}, Lcom/ironsource/sdk/c/d$1;-><init>(Lcom/ironsource/sdk/c/d;Lcom/ironsource/sdk/c/c;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/ironsource/environment/e/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    iget-object v2, v2, Lcom/ironsource/sdk/c/d;->b:Ljava/util/Map;

    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "sendMessageToAd fail - collection already contain adViewId"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "collection already contain adViewId"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    sget-object v2, Lcom/ironsource/sdk/c/d;->a:Ljava/lang/String;

    const-string v3, "loadWithUrl fail - adViewId is empty"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "adViewId is empty"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_2
    const-string v3, "%s | unsupported AdViews API"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "errMsg"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/ironsource/sdk/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/ironsource/sdk/c/d;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "adViewId"

    invoke-virtual {v0, v3, v2}, Lcom/ironsource/sdk/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object p1, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    invoke-virtual {p2, v1, p1, v0}, Lcom/ironsource/sdk/controller/x$d$a;->a(ZLjava/lang/String;Lcom/ironsource/sdk/g/f;)V

    :cond_d
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52839cf4 -> :sswitch_4
        0x2936bf5f -> :sswitch_3
        0x32354303 -> :sswitch_2
        0x4674e345 -> :sswitch_1
        0x58e7078f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2, p3}, Lcom/ironsource/environment/a$1;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sdk/controller/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/a;->a:Lcom/ironsource/sdk/controller/y;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/controller/a;->a:Lcom/ironsource/sdk/controller/y;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/sdk/controller/y;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
