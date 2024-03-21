.class public Lcom/unity3d/services/ads/token/TokenStorage;
.super Ljava/lang/Object;
.source "TokenStorage.java"


# static fields
.field private static _accessCounter:I = 0x0

.field private static _initToken:Ljava/lang/String; = null

.field private static _peekMode:Z = false

.field private static _queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
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
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized appendTokens(Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/unity3d/services/ads/token/TokenStorage;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 41
    sput v2, Lcom/unity3d/services/ads/token/TokenStorage;->_accessCounter:I

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 45
    sget-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    sget-object p0, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 49
    invoke-static {}, Lcom/unity3d/services/ads/token/TokenStorage;->triggerTokenAvailable()V

    .line 50
    invoke-static {}, Lcom/unity3d/services/ads/token/AsyncTokenStorage;->getInstance()Lcom/unity3d/services/ads/token/AsyncTokenStorage;

    move-result-object p0

    sget-object v1, Lcom/unity3d/services/core/device/TokenType;->TOKEN_REMOTE:Lcom/unity3d/services/core/device/TokenType;

    invoke-virtual {p0, v1}, Lcom/unity3d/services/ads/token/AsyncTokenStorage;->onTokenAvailable(Lcom/unity3d/services/core/device/TokenType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0

    throw p0

    :goto_1
    nop

    goto :goto_1
.end method

.method public static declared-synchronized createTokens(Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/unity3d/services/ads/token/TokenStorage;

    monitor-enter v0

    .line 25
    :try_start_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x0

    .line 26
    sput v1, Lcom/unity3d/services/ads/token/TokenStorage;->_accessCounter:I

    .line 28
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 29
    sget-object v2, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    sget-object p0, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 33
    invoke-static {}, Lcom/unity3d/services/ads/token/TokenStorage;->triggerTokenAvailable()V

    .line 34
    invoke-static {}, Lcom/unity3d/services/ads/token/AsyncTokenStorage;->getInstance()Lcom/unity3d/services/ads/token/AsyncTokenStorage;

    move-result-object p0

    sget-object v1, Lcom/unity3d/services/core/device/TokenType;->TOKEN_REMOTE:Lcom/unity3d/services/core/device/TokenType;

    invoke-virtual {p0, v1}, Lcom/unity3d/services/ads/token/AsyncTokenStorage;->onTokenAvailable(Lcom/unity3d/services/core/device/TokenType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    throw p0

    :goto_1
    nop

    goto :goto_1
.end method

.method public static declared-synchronized deleteTokens()V
    .locals 2

    const-class v0, Lcom/unity3d/services/ads/token/TokenStorage;

    monitor-enter v0

    const/4 v1, 0x0

    .line 55
    :try_start_0
    sput-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x0

    .line 56
    sput v1, Lcom/unity3d/services/ads/token/TokenStorage;->_accessCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getToken()Ljava/lang/String;
    .locals 8

    const-class v0, Lcom/unity3d/services/ads/token/TokenStorage;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v1, :cond_0

    .line 61
    sget-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_initToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 64
    :cond_0
    :try_start_1
    sget-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 65
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->TOKEN:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/ads/token/TokenEvent;->QUEUE_EMPTY:Lcom/unity3d/services/ads/token/TokenEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v2}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 66
    monitor-exit v0

    return-object v1

    .line 67
    :cond_1
    :try_start_2
    sget-boolean v1, Lcom/unity3d/services/ads/token/TokenStorage;->_peekMode:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 68
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v4, Lcom/unity3d/services/core/webview/WebViewEventCategory;->TOKEN:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/services/ads/token/TokenEvent;->TOKEN_ACCESS:Lcom/unity3d/services/ads/token/TokenEvent;

    new-array v3, v3, [Ljava/lang/Object;

    sget v6, Lcom/unity3d/services/ads/token/TokenStorage;->_accessCounter:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/unity3d/services/ads/token/TokenStorage;->_accessCounter:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 71
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v4, Lcom/unity3d/services/core/webview/WebViewEventCategory;->TOKEN:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/services/ads/token/TokenEvent;->TOKEN_ACCESS:Lcom/unity3d/services/ads/token/TokenEvent;

    new-array v3, v3, [Ljava/lang/Object;

    sget v6, Lcom/unity3d/services/ads/token/TokenStorage;->_accessCounter:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/unity3d/services/ads/token/TokenStorage;->_accessCounter:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setInitToken(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/unity3d/services/ads/token/TokenStorage;

    monitor-enter v0

    .line 81
    :try_start_0
    sput-object p0, Lcom/unity3d/services/ads/token/TokenStorage;->_initToken:Ljava/lang/String;

    .line 83
    sget-object p0, Lcom/unity3d/services/ads/token/TokenStorage;->_initToken:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 84
    invoke-static {}, Lcom/unity3d/services/ads/token/AsyncTokenStorage;->getInstance()Lcom/unity3d/services/ads/token/AsyncTokenStorage;

    move-result-object p0

    sget-object v1, Lcom/unity3d/services/core/device/TokenType;->TOKEN_REMOTE:Lcom/unity3d/services/core/device/TokenType;

    invoke-virtual {p0, v1}, Lcom/unity3d/services/ads/token/AsyncTokenStorage;->onTokenAvailable(Lcom/unity3d/services/core/device/TokenType;)V

    .line 85
    invoke-static {}, Lcom/unity3d/services/ads/token/TokenStorage;->triggerTokenAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setPeekMode(Z)V
    .locals 1

    const-class v0, Lcom/unity3d/services/ads/token/TokenStorage;

    monitor-enter v0

    .line 77
    :try_start_0
    sput-boolean p0, Lcom/unity3d/services/ads/token/TokenStorage;->_peekMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0

    throw p0
.end method

.method private static triggerTokenAvailable()V
    .locals 2

    .line 90
    sget-object v0, Lcom/unity3d/services/ads/token/TokenStorage;->_initToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->sdkTokenDidBecomeAvailableWithConfig(Z)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object v0, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/services/ads/token/TokenStorage;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->sdkTokenDidBecomeAvailableWithConfig(Z)V

    :cond_1
    :goto_0
    return-void
.end method
