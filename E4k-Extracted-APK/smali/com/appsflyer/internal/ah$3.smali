.class final Lcom/appsflyer/internal/ah$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/af$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ah;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/ah;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field private synthetic values:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ah;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    iput-object p2, p0, Lcom/appsflyer/internal/ah$3;->values:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/internal/ah$3;->AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(Landroid/app/Activity;)V
    .locals 9

    .line 947
    iget-object v0, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ah;->AFInAppEventParameterName(Lcom/appsflyer/internal/ah;J)J

    .line 948
    iget-object v0, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    .line 2812
    iget-object v1, v0, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/ax;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appsflyer/internal/ax;

    invoke-direct {v1, p1}, Lcom/appsflyer/internal/ax;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/ax;

    .line 2813
    :cond_0
    iget-object v0, v0, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/ax;

    .line 3079
    invoke-virtual {v0}, Lcom/appsflyer/internal/ax;->AFInAppEventType()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fg_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4067
    iget-object v0, v0, Lcom/appsflyer/internal/ax;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {v0}, Lcom/appsflyer/internal/ah;->valueOf(Lcom/appsflyer/internal/ah;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    .line 4711
    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ah;->values(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_2

    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {v0}, Lcom/appsflyer/internal/ah;->getLevel(Lcom/appsflyer/internal/ah;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "init_to_fg"

    iget-object v3, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {v3}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Lcom/appsflyer/internal/ah;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    iget-object v5, v5, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/ax;

    const-string v6, "init_ts"

    .line 5058
    iget-object v5, v5, Lcom/appsflyer/internal/ax;->AFInAppEventType:Landroid/content/SharedPreferences;

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v3, v5

    .line 951
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    const-string v0, "onBecameForeground"

    .line 955
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    .line 957
    invoke-static {p1}, Lcom/appsflyer/internal/ah;->values(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appsFlyerCount"

    .line 5711
    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ah;->values(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 958
    invoke-static {p1}, Lcom/appsflyer/internal/ad;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/ad;

    move-result-object v0

    .line 6150
    iget-object v1, v0, Lcom/appsflyer/internal/ad;->valueOf:Landroid/os/Handler;

    iget-object v3, v0, Lcom/appsflyer/internal/ad;->AppsFlyer2dXConversionCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6152
    iget-object v1, v0, Lcom/appsflyer/internal/ad;->valueOf:Landroid/os/Handler;

    iget-object v0, v0, Lcom/appsflyer/internal/ad;->AFInAppEventType:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 960
    :cond_3
    new-instance v0, Lcom/appsflyer/internal/bl;

    invoke-direct {v0}, Lcom/appsflyer/internal/bl;-><init>()V

    .line 961
    invoke-static {}, Lcom/appsflyer/internal/f;->values()Lcom/appsflyer/internal/f;

    move-result-object v1

    .line 963
    invoke-virtual {v0}, Lcom/appsflyer/internal/h;->AFInAppEventType()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    iget-object v4, v4, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/ax;

    .line 7063
    invoke-static {p1}, Lcom/appsflyer/internal/ah;->values(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "ddl_sent"

    .line 7064
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 7065
    invoke-static {}, Lcom/appsflyer/internal/ah;->AFInAppEventParameterName()Lcom/appsflyer/internal/ah;

    const-string v7, "appsFlyerCount"

    .line 7711
    invoke-static {v5, v7, v2}, Lcom/appsflyer/internal/ah;->values(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v2

    .line 7066
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, v5, p1, v3}, Lcom/appsflyer/internal/f;->AFKeystoreWrapper(Landroid/content/Intent;Landroid/content/Context;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, v1, Lcom/appsflyer/internal/f;->values:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    if-nez v6, :cond_5

    .line 7070
    new-instance v1, Lcom/appsflyer/internal/ar;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/appsflyer/internal/ar;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/ax;)V

    const-string v2, "[DDL] start"

    .line 8090
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 8091
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/appsflyer/internal/ar$1;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/ar$1;-><init>(Lcom/appsflyer/internal/ar;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 8105
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const/4 v3, 0x0

    .line 8107
    :try_start_1
    sget-wide v4, Lcom/appsflyer/internal/ar;->onAppOpenAttributionNative:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 8108
    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/ar;->valueOf(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 8117
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[DDL] Timeout, didn\'t manage to find deferred deep link after "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/appsflyer/internal/ar;->onDeepLinkingNative:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " attempt(s) within "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/appsflyer/internal/ar;->onAppOpenAttributionNative:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " milliseconds"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 8119
    new-instance v2, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v4, Lcom/appsflyer/deeplink/DeepLinkResult$c;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    invoke-direct {v2, v3, v4}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$c;)V

    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/ar;->valueOf(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v4, "[DDL] Error occurred"

    .line 8110
    invoke-static {v4, v2}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8111
    new-instance v4, Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 8112
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$c;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$c;->values:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    :goto_1
    invoke-direct {v4, v3, v2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$c;)V

    .line 8115
    invoke-virtual {v1, v4}, Lcom/appsflyer/internal/ar;->valueOf(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 965
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    if-eqz p1, :cond_6

    .line 9053
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, v0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 965
    :cond_6
    iget-object v2, p0, Lcom/appsflyer/internal/ah$3;->values:Ljava/lang/String;

    .line 9127
    iput-object v2, v0, Lcom/appsflyer/internal/h;->AFVersionDeclaration:Ljava/lang/String;

    .line 966
    iget-object v2, p0, Lcom/appsflyer/internal/ah$3;->AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 10089
    iput-object v2, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 965
    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper(Lcom/appsflyer/internal/h;Landroid/app/Activity;)V

    return-void
.end method

.method public final values(Landroid/content/Context;)V
    .locals 7

    const-string v0, "onBecameBackground"

    .line 971
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ah;->values(Lcom/appsflyer/internal/ah;J)J

    .line 973
    iget-object v0, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {v0}, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback(Lcom/appsflyer/internal/ah;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {v2}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Lcom/appsflyer/internal/ah;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 978
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    .line 10812
    iget-object v3, v2, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/ax;

    if-nez v3, :cond_1

    new-instance v3, Lcom/appsflyer/internal/ax;

    invoke-direct {v3, p1}, Lcom/appsflyer/internal/ax;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/ax;

    .line 10813
    :cond_1
    iget-object v2, v2, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/ax;

    const-string v3, "prev_session_dur"

    .line 978
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 979
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 11067
    iget-object v2, v2, Lcom/appsflyer/internal/ax;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "callStatsBackground background call"

    .line 981
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/appsflyer/internal/ah$3;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/ah;->valueOf(Ljava/lang/ref/WeakReference;)V

    .line 983
    invoke-static {}, Lcom/appsflyer/internal/ap;->AFInAppEventParameterName()Lcom/appsflyer/internal/ap;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Lcom/appsflyer/internal/ap;->AppsFlyer2dXConversionCallback()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 985
    invoke-virtual {v0}, Lcom/appsflyer/internal/ap;->values()V

    if-eqz p1, :cond_2

    .line 987
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 988
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 989
    invoke-static {v1, v2}, Lcom/appsflyer/internal/ap;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 991
    :cond_2
    invoke-virtual {v0}, Lcom/appsflyer/internal/ap;->AFKeystoreWrapper()V

    goto :goto_0

    :cond_3
    const-string v0, "RD status is OFF"

    .line 993
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 12045
    :goto_0
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez v0, :cond_4

    .line 12046
    new-instance v0, Lcom/appsflyer/internal/l;

    invoke-direct {v0}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 12048
    :cond_4
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 12092
    :try_start_0
    iget-object v1, v0, Lcom/appsflyer/internal/l;->AFInAppEventType:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Lcom/appsflyer/internal/l;->values(Ljava/util/concurrent/ExecutorService;)V

    .line 12094
    iget-object v1, v0, Lcom/appsflyer/internal/l;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_5

    .line 12095
    iget-object v0, v0, Lcom/appsflyer/internal/l;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/appsflyer/internal/l;->values(Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "failed to stop Executors"

    .line 12098
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 996
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/appsflyer/internal/ad;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/ad;

    move-result-object p1

    .line 12183
    iget-object v0, p1, Lcom/appsflyer/internal/ad;->valueOf:Landroid/os/Handler;

    iget-object p1, p1, Lcom/appsflyer/internal/ad;->AppsFlyer2dXConversionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
