.class public Lcom/ironsource/sdk/fileSystem/MetadataFileService;
.super Ljava/lang/Object;
.source "MetadataFileService.java"


# instance fields
.field private mCacheRootDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->mCacheRootDirectory:Ljava/lang/String;

    return-void
.end method

.method private createInitialMetadataFile(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    return-void
.end method

.method private getMetadataFile()Lcom/ironsource/sdk/fileSystem/ISNFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v1, p0, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->mCacheRootDirectory:Ljava/lang/String;

    const-string v2, "metadata.json"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->createInitialMetadataFile(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    :cond_0
    return-object v0
.end method

.method private saveUpdatedMetadata(Lorg/json/JSONObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 38
    invoke-direct {p0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->getMetadataFile()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method declared-synchronized addFileMetadata(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->readContent()Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->saveUpdatedMetadata(Lorg/json/JSONObject;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deleteFileMetadata(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->readContent()Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, 0x1

    .line 74
    monitor-exit p0

    return p1

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->saveUpdatedMetadata(Lorg/json/JSONObject;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit p0

    throw p1
.end method

.method deleteFilesMetadata(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/sdk/fileSystem/ISNFile;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/sdk/fileSystem/ISNFile;

    .line 83
    invoke-virtual {v1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->deleteFileMetadata(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v0
.end method

.method declared-synchronized readContent()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->getMetadataFile()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->readFile(Lcom/ironsource/sdk/fileSystem/ISNFile;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateFileMetadata(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->readContent()Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 60
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 63
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_1
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->saveUpdatedMetadata(Lorg/json/JSONObject;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0

    throw p1

    :goto_1
    nop

    goto :goto_1
.end method
