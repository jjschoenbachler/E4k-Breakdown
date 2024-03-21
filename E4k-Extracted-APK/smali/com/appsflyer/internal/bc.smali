.class public final Lcom/appsflyer/internal/bc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final AFInAppEventType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static valueOf:Ljava/lang/String; = "https://%sgcdsdk.%s/install_data/v4.0/"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final AFInAppEventParameterName:Ljava/lang/String;

.field public final AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

.field private final AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

.field private final AFVersionDeclaration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final init:I

.field private final values:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "googleplay"

    const-string v1, "playstore"

    const-string v2, "googleplaystore"

    .line 37
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/bc;->AFInAppEventType:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/ah;Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Lcom/appsflyer/internal/l;

    invoke-direct {v0}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 1048
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 43
    invoke-virtual {v0}, Lcom/appsflyer/internal/l;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/bc;->AFVersionDeclaration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    iput-object p1, p0, Lcom/appsflyer/internal/bc;->AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

    .line 52
    iput-object p2, p0, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    .line 53
    iput-object p3, p0, Lcom/appsflyer/internal/bc;->AFInAppEventParameterName:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/appsflyer/internal/bc;->init:I

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/internal/bc;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2045
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez v0, :cond_0

    .line 2046
    new-instance v0, Lcom/appsflyer/internal/l;

    invoke-direct {v0}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 2048
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 43
    invoke-virtual {v0}, Lcom/appsflyer/internal/l;->values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/bc;->AFVersionDeclaration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    iget-object v0, p1, Lcom/appsflyer/internal/bc;->AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

    iput-object v0, p0, Lcom/appsflyer/internal/bc;->AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

    .line 59
    iget-object v0, p1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    iput-object v0, p0, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    .line 60
    iget-object v0, p1, Lcom/appsflyer/internal/bc;->AFInAppEventParameterName:Ljava/lang/String;

    iput-object v0, p0, Lcom/appsflyer/internal/bc;->AFInAppEventParameterName:Ljava/lang/String;

    .line 61
    iget p1, p1, Lcom/appsflyer/internal/bc;->init:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/internal/bc;->init:I

    return-void
.end method

.method public static AFKeystoreWrapper(Ljava/lang/String;)V
    .locals 2

    .line 76
    sget-object v0, Lcom/appsflyer/internal/ah;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_0

    const-string v0, "[GCD-A02] Calling onConversionFailure with:\n"

    .line 77
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/appsflyer/internal/ah;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GCD-A02] Calling onConversionDataSuccess with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/appsflyer/internal/ah;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    .line 84
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 91
    :cond_0
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[GCD-E03] \'isStopTracking\' enabled"

    .line 92
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    const-string v0, "\'isStopTracking\' enabled"

    .line 93
    invoke-static {v0}, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_1
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFVersionDeclaration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v2, 0x0

    const-wide/16 v3, 0xa

    const/4 v5, 0x2

    .line 101
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    if-nez v0, :cond_2

    const-string v0, "[GCD-E06] Context null"

    .line 102
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    const-string v0, "Context null"

    .line 103
    invoke-static {v0}, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFVersionDeclaration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    .line 106
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

    iget-object v6, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    iget-object v7, v1, Lcom/appsflyer/internal/bc;->AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

    iget-object v8, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    .line 107
    invoke-virtual {v7, v8}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-virtual {v0, v6, v7}, Lcom/appsflyer/internal/ah;->values(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 110
    sget-object v9, Lcom/appsflyer/internal/bc;->AFInAppEventType:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v6, "-"

    .line 111
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v9, "AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    .line 113
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v0, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    .line 118
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/appsflyer/internal/bc;->valueOf:Ljava/lang/String;

    .line 2062
    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {}, Lcom/appsflyer/internal/ah;->AFInAppEventParameterName()Lcom/appsflyer/internal/ah;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    .line 119
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?devkey="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/appsflyer/internal/bc;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&device_id="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v9, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    invoke-direct {v6, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 122
    invoke-static {v6}, Lcom/appsflyer/internal/an;->AFKeystoreWrapper(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/appsflyer/internal/ap;->AFInAppEventParameterName()Lcom/appsflyer/internal/ap;

    move-result-object v6

    const-string v9, ""

    const-string v10, "server_request"

    .line 2190
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v10, v0, v9}, Lcom/appsflyer/internal/ap;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "[GCD-B01] URL: "

    .line 125
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/ak;->values(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 127
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "GET"

    .line 128
    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 129
    invoke-virtual {v6, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v2, "Connection"

    const-string v11, "close"

    .line 130
    invoke-virtual {v6, v2, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 132
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 133
    iget-object v11, v1, Lcom/appsflyer/internal/bc;->AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

    invoke-virtual {v11, v6}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-static {}, Lcom/appsflyer/internal/ap;->AFInAppEventParameterName()Lcom/appsflyer/internal/ap;

    move-result-object v12

    const-string v13, "server_response"

    .line 2194
    new-array v14, v5, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v8

    aput-object v11, v14, v7

    invoke-virtual {v12, v13, v0, v14}, Lcom/appsflyer/internal/ap;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v0, 0xc8

    const/16 v12, 0x194

    if-eq v2, v0, :cond_8

    if-ne v2, v12, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x193

    if-eq v2, v0, :cond_6

    const/16 v0, 0x1f4

    if-lt v2, v0, :cond_7

    .line 197
    :cond_6
    iget v0, v1, Lcom/appsflyer/internal/bc;->init:I

    if-ge v0, v5, :cond_7

    .line 199
    new-instance v0, Lcom/appsflyer/internal/bc;

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/bc;-><init>(Lcom/appsflyer/internal/bc;)V

    .line 4221
    iget-object v2, v0, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v0, v3, v4, v7}, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_5

    :cond_7
    const-string v0, "Error connection to server: "

    .line 201
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 137
    :cond_8
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "net"

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    sub-long/2addr v14, v9

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "retries"

    .line 139
    iget v10, v1, Lcom/appsflyer/internal/bc;->init:I

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    iget-object v9, v1, Lcom/appsflyer/internal/bc;->AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

    iget-object v9, v9, Lcom/appsflyer/internal/ah;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/ax;

    const-string v10, "gcd"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3071
    iget-object v9, v9, Lcom/appsflyer/internal/ax;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Attribution data: "

    .line 141
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/ak;->values(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 143
    invoke-static {v11}, Lcom/appsflyer/internal/az;->valueOf(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    const-string v0, "iscache"

    .line 144
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-ne v2, v12, :cond_9

    const-string v2, "error_reason"

    .line 147
    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status_code"

    .line 148
    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "af_status"

    const-string v10, "Organic"

    .line 149
    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "af_message"

    const-string v10, "organic install"

    .line 150
    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v0, :cond_a

    .line 152
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 154
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFLogger$LogLevel:Lcom/appsflyer/internal/ah;

    iget-object v2, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    const-string v10, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v2, v10, v12, v13}, Lcom/appsflyer/internal/ah;->values(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_a
    const-string v0, "af_siteid"

    .line 156
    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "af_channel"

    .line 157
    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[Invite] Detected App-Invite via channel: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "af_channel"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v0, "[CrossPromotion] App was installed via %s\'s Cross Promotion"

    .line 162
    new-array v2, v7, [Ljava/lang/Object;

    const-string v10, "af_siteid"

    .line 164
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v2, v8

    .line 162
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    :cond_c
    :goto_2
    const-string v0, "af_siteid"

    .line 167
    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[Invite] Detected App-Invite via channel: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "af_channel"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    :cond_d
    const-string v0, "is_first_launch"

    .line 172
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 176
    iget-object v2, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    const-string v10, "attributionId"

    invoke-static {v2, v10, v0}, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 178
    :cond_e
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    const-string v2, "attributionId"

    invoke-static {v0, v2, v11}, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_3
    sget-object v0, Lcom/appsflyer/internal/ah;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_10

    .line 181
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFVersionDeclaration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gt v0, v7, :cond_10

    .line 184
    :try_start_3
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    invoke-static {v0}, Lcom/appsflyer/internal/az;->AFInAppEventType(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 185
    iget-object v2, v1, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    invoke-static {v2}, Lcom/appsflyer/internal/ah;->values(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v7, "sixtyDayConversionData"

    .line 186
    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "is_first_launch"

    .line 187
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/appsflyer/internal/ay; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "Exception while trying to fetch attribution data. "

    .line 190
    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v9

    .line 4071
    :cond_f
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "[GCD-A02] Calling onConversionDataSuccess with:\n"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 4072
    sget-object v2, Lcom/appsflyer/internal/ah;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v2, v0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    :cond_10
    :goto_5
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFVersionDeclaration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v6, :cond_12

    .line 213
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v2, v6

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v6, v2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 204
    :goto_6
    :try_start_5
    iget v6, v1, Lcom/appsflyer/internal/bc;->init:I

    if-ge v6, v5, :cond_11

    .line 205
    new-instance v5, Lcom/appsflyer/internal/bc;

    invoke-direct {v5, v1}, Lcom/appsflyer/internal/bc;-><init>(Lcom/appsflyer/internal/bc;)V

    .line 5221
    iget-object v6, v5, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v5, v3, v4, v7}, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_7

    .line 207
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 209
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 211
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFVersionDeclaration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v2, :cond_12

    .line 213
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 216
    :cond_12
    :goto_8
    iget-object v0, v1, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const-string v0, "[GCD-A03] Server retrieving attempt finished"

    .line 217
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-void

    .line 211
    :goto_9
    iget-object v2, v1, Lcom/appsflyer/internal/bc;->AFVersionDeclaration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v6, :cond_13

    .line 213
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 215
    :cond_13
    throw v0

    :cond_14
    :goto_a
    const-string v0, "[GCD-E05] AppsFlyer dev key is missing"

    .line 85
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    const-string v0, "AppsFlyer dev key is missing"

    .line 86
    invoke-static {v0}, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-void
.end method
