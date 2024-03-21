.class public Lcom/ironsource/sdk/utils/IronSourceStorageUtils;
.super Ljava/lang/Object;
.source "IronSourceStorageUtils.java"


# static fields
.field private static final SSA_DIRECTORY_NAME:Ljava/lang/String; = "supersonicads"

.field private static mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 256
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 259
    :try_start_0
    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    .line 261
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    const-string v3, "files"

    .line 262
    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 263
    :cond_0
    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 269
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static buildFilesMapOfDirectory(Lcom/ironsource/sdk/fileSystem/ISNFile;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 302
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    .line 308
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 310
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 311
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    .line 312
    new-instance v4, Lcom/ironsource/sdk/fileSystem/ISNFile;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4}, Lcom/ironsource/sdk/fileSystem/ISNFile;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 314
    invoke-virtual {v4}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v4}, Lcom/ironsource/sdk/fileSystem/ISNFile;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 316
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 319
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 317
    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 321
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 325
    :cond_3
    invoke-virtual {v4}, Lcom/ironsource/sdk/fileSystem/ISNFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 326
    invoke-virtual {v4}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildFilesMapOfDirectory(Lcom/ironsource/sdk/fileSystem/ISNFile;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    .line 303
    :cond_6
    :goto_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private static clearStorageByConfig(Landroid/content/Context;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;->shouldDeleteCacheDir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteCacheDirectories(Landroid/content/Context;)V

    .line 56
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;->shouldDeleteFilesDir()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFilesDirectories(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static deleteCacheDirectories(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteNetworkStorageDir(Ljava/io/File;)V

    .line 70
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteNetworkStorageDir(Ljava/io/File;)V

    return-void
.end method

.method public static declared-synchronized deleteFile(Lcom/ironsource/sdk/fileSystem/ISNFile;)Z
    .locals 2

    const-class v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->delete()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 151
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 147
    monitor-exit v0

    throw p0
.end method

.method public static deleteFilesDirectories(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteNetworkStorageDir(Ljava/io/File;)V

    .line 75
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteNetworkStorageDir(Ljava/io/File;)V

    return-void
.end method

.method public static declared-synchronized deleteFolder(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;

    monitor-enter v0

    .line 198
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-static {v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 197
    monitor-exit v0

    throw p0
.end method

.method public static deleteFolderContentRecursive(Ljava/io/File;)Z
    .locals 6

    .line 208
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 211
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v4, p0, v0

    .line 212
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    invoke-static {v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 215
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :cond_3
    return v0
.end method

.method private static deleteNetworkStorageDir(Ljava/io/File;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getNetworkStorageRootDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolder(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 232
    invoke-static {p0, p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :try_start_0
    const-string v0, "path"

    .line 234
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 239
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDiskCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 97
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getExternalRootStorage(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getInternalRootStorage(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExternalRootStorage(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 45
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;->shouldUseDeviceCacheDir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getFilesInFolderRecursive(Lcom/ironsource/sdk/fileSystem/ISNFile;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/fileSystem/ISNFile;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/sdk/fileSystem/ISNFile;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 178
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 179
    new-instance v4, Lcom/ironsource/sdk/fileSystem/ISNFile;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4}, Lcom/ironsource/sdk/fileSystem/ISNFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-static {v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getFilesInFolderRecursive(Lcom/ironsource/sdk/fileSystem/ISNFile;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_1
    invoke-virtual {v4}, Lcom/ironsource/sdk/fileSystem/ISNFile;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 172
    :cond_4
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static getInternalRootStorage(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 38
    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;->shouldUseDeviceCacheDir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getInternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getDiskCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getNetworkStorageRootDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNetworkStorageRootDir(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "supersonicads"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTotalSizeOfDir(Lcom/ironsource/sdk/fileSystem/ISNFile;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_5

    .line 333
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    .line 342
    :cond_1
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    .line 343
    new-instance v5, Lcom/ironsource/sdk/fileSystem/ISNFile;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v5}, Lcom/ironsource/sdk/fileSystem/ISNFile;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    invoke-virtual {v5}, Lcom/ironsource/sdk/fileSystem/ISNFile;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 346
    :cond_2
    invoke-virtual {v5}, Lcom/ironsource/sdk/fileSystem/ISNFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 347
    invoke-static {v5}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getTotalSizeOfDir(Lcom/ironsource/sdk/fileSystem/ISNFile;)J

    move-result-wide v4

    add-long/2addr v0, v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-wide v0

    :cond_5
    :goto_2
    return-wide v0
.end method

.method public static initializeCacheDirectory(Landroid/content/Context;Lcom/ironsource/sdk/fileSystem/StorageConfigurations;)V
    .locals 0

    .line 33
    sput-object p1, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->mStorageConfig:Lcom/ironsource/sdk/fileSystem/StorageConfigurations;

    .line 34
    invoke-static {p0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->clearStorageByConfig(Landroid/content/Context;)V

    return-void
.end method

.method public static isPathExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static looping(Ljava/io/File;)Ljava/lang/Object;
    .locals 6

    .line 362
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 363
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 366
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v1

    .line 371
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 373
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 376
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v4, "files"

    .line 377
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 383
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public static makeDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readFile(Lcom/ironsource/sdk/fileSystem/ISNFile;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 433
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 434
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    .line 435
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static saveFile([BLjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 412
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const p0, 0x19000

    .line 414
    :try_start_0
    new-array p0, p0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 416
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 417
    invoke-virtual {p1, p0, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 422
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return v2

    :catchall_0
    move-exception p0

    .line 421
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 422
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 423
    throw p0

    :goto_1
    nop

    goto :goto_1
.end method
