.class public final Lcom/appsflyer/internal/ad;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AFLogger$LogLevel:Ljava/util/BitSet;

.field private static volatile getLevel:Lcom/appsflyer/internal/ad;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final init:Landroid/os/Handler;


# instance fields
.field final AFInAppEventParameterName:Ljava/lang/Runnable;

.field final AFInAppEventType:Ljava/lang/Runnable;

.field AFKeystoreWrapper:Z

.field final AFVersionDeclaration:Ljava/util/concurrent/Executor;

.field final AppsFlyer2dXConversionCallback:Ljava/lang/Runnable;

.field private onAppOpenAttributionNative:Z

.field private onAttributionFailureNative:I

.field private final onConversionDataSuccess:Ljava/lang/Runnable;

.field private onDeepLinking:J

.field private final onDeepLinkingNative:Landroid/hardware/SensorManager;

.field private final onInstallConversionDataLoadedNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/w;",
            "Lcom/appsflyer/internal/w;",
            ">;"
        }
    .end annotation
.end field

.field private final onInstallConversionFailureNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/w;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final valueOf:Landroid/os/Handler;

.field final values:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/appsflyer/internal/ad;->AFLogger$LogLevel:Ljava/util/BitSet;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/appsflyer/internal/ad;->init:Landroid/os/Handler;

    .line 35
    sget-object v0, Lcom/appsflyer/internal/ad;->AFLogger$LogLevel:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 36
    sget-object v0, Lcom/appsflyer/internal/ad;->AFLogger$LogLevel:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 37
    sget-object v0, Lcom/appsflyer/internal/ad;->AFLogger$LogLevel:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Landroid/hardware/SensorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/ad;->values:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/appsflyer/internal/ad;->AFLogger$LogLevel:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/ad;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/appsflyer/internal/ad;->AFLogger$LogLevel:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/ad;->onInstallConversionFailureNative:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/appsflyer/internal/ad$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/ad$1;-><init>(Lcom/appsflyer/internal/ad;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ad;->AFInAppEventType:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/appsflyer/internal/ad$4;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/ad$4;-><init>(Lcom/appsflyer/internal/ad;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ad;->AFInAppEventParameterName:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lcom/appsflyer/internal/ad$5;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/ad$5;-><init>(Lcom/appsflyer/internal/ad;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ad;->AppsFlyer2dXConversionCallback:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/appsflyer/internal/ad;->onAttributionFailureNative:I

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/appsflyer/internal/ad;->onDeepLinking:J

    .line 83
    new-instance v0, Lcom/appsflyer/internal/ad$3;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/ad$3;-><init>(Lcom/appsflyer/internal/ad;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ad;->onConversionDataSuccess:Ljava/lang/Runnable;

    .line 95
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/ad;->AFVersionDeclaration:Ljava/util/concurrent/Executor;

    .line 98
    iput-object p1, p0, Lcom/appsflyer/internal/ad;->onDeepLinkingNative:Landroid/hardware/SensorManager;

    .line 99
    iput-object p2, p0, Lcom/appsflyer/internal/ad;->valueOf:Landroid/os/Handler;

    return-void
.end method

.method static AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/ad;
    .locals 1

    .line 106
    sget-object v0, Lcom/appsflyer/internal/ad;->getLevel:Lcom/appsflyer/internal/ad;

    if-eqz v0, :cond_0

    .line 107
    sget-object p0, Lcom/appsflyer/internal/ad;->getLevel:Lcom/appsflyer/internal/ad;

    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "sensor"

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    .line 112
    sget-object v0, Lcom/appsflyer/internal/ad;->init:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/appsflyer/internal/ad;->AFInAppEventType(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/internal/ad;

    move-result-object p0

    return-object p0
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/ad;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ad;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    return-object p0
.end method

.method private static AFInAppEventType(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/internal/ad;
    .locals 2

    .line 121
    sget-object v0, Lcom/appsflyer/internal/ad;->getLevel:Lcom/appsflyer/internal/ad;

    if-nez v0, :cond_1

    .line 122
    const-class v0, Lcom/appsflyer/internal/ad;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/appsflyer/internal/ad;->getLevel:Lcom/appsflyer/internal/ad;

    if-nez v1, :cond_0

    .line 1132
    new-instance v1, Lcom/appsflyer/internal/ad;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/ad;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V

    .line 124
    sput-object v1, Lcom/appsflyer/internal/ad;->getLevel:Lcom/appsflyer/internal/ad;

    .line 126
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 128
    :cond_1
    :goto_0
    sget-object p0, Lcom/appsflyer/internal/ad;->getLevel:Lcom/appsflyer/internal/ad;

    return-object p0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/ad;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ad;->AFVersionDeclaration:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic AFInAppEventType(I)Z
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/appsflyer/internal/ad;->AFKeystoreWrapper(I)Z

    move-result p0

    return p0
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/ad;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/appsflyer/internal/ad;->onAttributionFailureNative:I

    return p1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/ad;)Ljava/lang/Runnable;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ad;->onConversionDataSuccess:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static AFKeystoreWrapper(I)Z
    .locals 1

    if-ltz p0, :cond_0

    .line 142
    sget-object v0, Lcom/appsflyer/internal/ad;->AFLogger$LogLevel:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic init(Lcom/appsflyer/internal/ad;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ad;->onInstallConversionFailureNative:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/ad;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/appsflyer/internal/ad;->onAttributionFailureNative:I

    return p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/ad;)Landroid/hardware/SensorManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ad;->onDeepLinkingNative:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/ad;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/appsflyer/internal/ad;->onAppOpenAttributionNative:Z

    return p1
.end method


# virtual methods
.method final AFInAppEventParameterName()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/appsflyer/internal/ad;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/w;

    .line 247
    iget-object v2, p0, Lcom/appsflyer/internal/ad;->onInstallConversionFailureNative:Ljava/util/Map;

    const/4 v3, 0x1

    .line 2119
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/w;->AFKeystoreWrapper(Ljava/util/Map;Z)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/ad;->onInstallConversionFailureNative:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appsflyer/internal/ad;->onInstallConversionFailureNative:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 254
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/appsflyer/internal/ad;->onInstallConversionFailureNative:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 251
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method final AFKeystoreWrapper()V
    .locals 7

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    iget-wide v2, p0, Lcom/appsflyer/internal/ad;->onDeepLinking:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 163
    iget v2, p0, Lcom/appsflyer/internal/ad;->onAttributionFailureNative:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/appsflyer/internal/ad;->onAttributionFailureNative:I

    .line 165
    iget-wide v2, p0, Lcom/appsflyer/internal/ad;->onDeepLinking:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 166
    iget-object v2, p0, Lcom/appsflyer/internal/ad;->valueOf:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appsflyer/internal/ad;->AFInAppEventParameterName:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v2, p0, Lcom/appsflyer/internal/ad;->valueOf:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appsflyer/internal/ad;->AFInAppEventType:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/ad;->valueOf:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appsflyer/internal/ad;->AppsFlyer2dXConversionCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    iget-object v2, p0, Lcom/appsflyer/internal/ad;->valueOf:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appsflyer/internal/ad;->AFInAppEventType:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/appsflyer/internal/ad;->onDeepLinking:J

    return-void
.end method

.method final values()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/appsflyer/internal/ad;->values:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/ad;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/appsflyer/internal/ad;->onAppOpenAttributionNative:Z

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/appsflyer/internal/ad;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/w;

    .line 268
    iget-object v3, p0, Lcom/appsflyer/internal/ad;->onInstallConversionFailureNative:Ljava/util/Map;

    const/4 v4, 0x0

    .line 2123
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/w;->AFKeystoreWrapper(Ljava/util/Map;Z)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/ad;->onInstallConversionFailureNative:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 274
    :cond_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/appsflyer/internal/ad;->onInstallConversionFailureNative:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 275
    monitor-exit v0

    throw v1

    :goto_1
    nop

    goto :goto_1
.end method
