.class public Lcom/unity3d/services/core/properties/SdkProperties;
.super Ljava/lang/Object;
.source "SdkProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    }
.end annotation


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "UnityAdsCache"

.field private static final CHINA_ISO_ALPHA_2_CODE:Ljava/lang/String; = "CN"

.field private static final CHINA_ISO_ALPHA_3_CODE:Ljava/lang/String; = "CHN"

.field private static final CONFIG_VERSION_METADATA_KEY:Ljava/lang/String; = "com.unity3d.ads.configversion"

.field private static final DEFAULT_CONFIG_VERSION:Ljava/lang/String; = "configv2"

.field private static final LOCAL_CACHE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsCache-"

.field private static final LOCAL_STORAGE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsStorage-"

.field private static _cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

.field private static _configUrl:Ljava/lang/String;

.field private static _currentInitializationState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;",
            ">;"
        }
    .end annotation
.end field

.field private static _debugMode:Z

.field private static _initializationListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/unity3d/ads/IUnityAdsInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _initializationTime:J

.field private static _initializationTimeEpochMs:J

.field private static _initialized:Z

.field private static _latestConfiguration:Lcom/unity3d/services/core/configuration/Configuration;

.field private static _reinitialized:Z

.field private static _testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initialized:Z

    .line 40
    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_reinitialized:Z

    .line 41
    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    .line 42
    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_debugMode:Z

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->NOT_INITIALIZED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_currentInitializationState:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInitializationListener(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 252
    :cond_0
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 253
    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCacheDirectory()Ljava/io/File;
    .locals 1

    .line 190
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 194
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/unity3d/services/core/cache/CacheDirectory;

    const-string v1, "UnityAdsCache"

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/cache/CacheDirectory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->setCacheDirectory(Lcom/unity3d/services/core/cache/CacheDirectory;)V

    .line 198
    :cond_0
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    invoke-virtual {v0, p0}, Lcom/unity3d/services/core/cache/CacheDirectory;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getCacheDirectoryName()Ljava/lang/String;
    .locals 1

    const-string v0, "UnityAdsCache"

    return-object v0
.end method

.method public static getCacheDirectoryObject()Lcom/unity3d/services/core/cache/CacheDirectory;
    .locals 1

    .line 206
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    return-object v0
.end method

.method public static getCacheFilePrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "UnityAdsCache-"

    return-object v0
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "release"

    .line 130
    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    .line 132
    :cond_0
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getConfigVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "configv2"

    if-eqz p0, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 150
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "com.unity3d.ads.configversion"

    const-string v2, "configv2"

    .line 152
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to retrieve application info for current package"

    .line 156
    invoke-static {p0}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    .locals 1

    .line 75
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_currentInitializationState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    return-object v0
.end method

.method public static getDebugMode()Z
    .locals 1

    .line 244
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_debugMode:Z

    return v0
.end method

.method public static getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 136
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->getNetworkCountryISO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->isChinaLocale(Ljava/lang/String;)Z

    move-result v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/services/core/properties/SdkProperties;->getConfigVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".unityads.unity3d.com/webview/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/properties/SdkProperties;->getConfigVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".unityads.unitychina.cn/webview/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getWebViewBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/config.json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInitializationListeners()[Lcom/unity3d/ads/IUnityAdsInitializationListener;
    .locals 3

    .line 258
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/unity3d/ads/IUnityAdsInitializationListener;

    .line 260
    sget-object v2, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 261
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInitializationTime()J
    .locals 2

    .line 214
    sget-wide v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTime:J

    return-wide v0
.end method

.method public static getInitializationTimeEpoch()J
    .locals 2

    .line 222
    sget-wide v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTimeEpochMs:J

    return-wide v0
.end method

.method public static getLatestConfiguration()Lcom/unity3d/services/core/configuration/Configuration;
    .locals 1

    .line 182
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_latestConfiguration:Lcom/unity3d/services/core/configuration/Configuration;

    return-object v0
.end method

.method public static getLocalConfigurationFilepath()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/UnityAdsWebViewConfiguration.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalStorageFilePrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "UnityAdsStorage-"

    return-object v0
.end method

.method public static getLocalWebViewFile()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/UnityAdsWebApp.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalWebViewFileUpdated()Ljava/lang/String;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".new"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode()I
    .locals 1

    const/16 v0, 0x1004

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "4.1.0"

    return-object v0
.end method

.method private static getWebViewBranch()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChinaLocale(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CN"

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHN"

    .line 273
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initialized:Z

    return v0
.end method

.method public static isReinitialized()Z
    .locals 1

    .line 230
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_reinitialized:Z

    return v0
.end method

.method public static isTestMode()Z
    .locals 1

    .line 87
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    return v0
.end method

.method public static notifyInitializationComplete()V
    .locals 4

    .line 62
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_SUCCESSFULLY:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V

    .line 64
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getInitializationListeners()[Lcom/unity3d/ads/IUnityAdsInitializationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 65
    invoke-interface {v3}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->resetInitializationListeners()V

    return-void
.end method

.method public static notifyInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 4

    .line 53
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_FAILED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V

    .line 55
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getInitializationListeners()[Lcom/unity3d/ads/IUnityAdsInitializationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    invoke-interface {v3, p0, p1}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->resetInitializationListeners()V

    return-void
.end method

.method public static resetInitializationListeners()V
    .locals 2

    .line 266
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->clear()V

    .line 268
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setCacheDirectory(Lcom/unity3d/services/core/cache/CacheDirectory;)V
    .locals 0

    .line 202
    sput-object p0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    return-void
.end method

.method public static setConfigUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, "http://"

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    invoke-direct {p0}, Ljava/net/MalformedURLException;-><init>()V

    throw p0

    .line 122
    :cond_1
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 125
    sput-object p0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    return-void

    .line 116
    :cond_2
    new-instance p0, Ljava/net/MalformedURLException;

    invoke-direct {p0}, Ljava/net/MalformedURLException;-><init>()V

    throw p0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 234
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_debugMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    .line 237
    invoke-static {p0}, Lcom/unity3d/services/core/log/DeviceLog;->setLogLevel(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 239
    invoke-static {p0}, Lcom/unity3d/services/core/log/DeviceLog;->setLogLevel(I)V

    :goto_0
    return-void
.end method

.method public static setInitializationTime(J)V
    .locals 0

    .line 210
    sput-wide p0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTime:J

    return-void
.end method

.method public static setInitializationTimeSinceEpoch(J)V
    .locals 0

    .line 218
    sput-wide p0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTimeEpochMs:J

    return-void
.end method

.method public static setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V
    .locals 1

    .line 71
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_currentInitializationState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setInitialized(Z)V
    .locals 0

    .line 83
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_initialized:Z

    return-void
.end method

.method public static setLatestConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 0

    .line 178
    sput-object p0, Lcom/unity3d/services/core/properties/SdkProperties;->_latestConfiguration:Lcom/unity3d/services/core/configuration/Configuration;

    return-void
.end method

.method public static setReinitialized(Z)V
    .locals 0

    .line 226
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_reinitialized:Z

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    .line 91
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    return-void
.end method
