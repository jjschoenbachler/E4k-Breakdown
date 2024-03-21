.class public Lcom/ironsource/sdk/fileSystem/FileSystemService;
.super Ljava/lang/Object;
.source "FileSystemService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

.field private mFileSystemHandler:Lcom/ironsource/sdk/fileSystem/FileSystemHandler;

.field private mMetadataFileService:Lcom/ironsource/sdk/fileSystem/MetadataFileService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/sdk/precache/DownloadManager;Lcom/ironsource/sdk/fileSystem/FileSystemHandler;Lcom/ironsource/sdk/fileSystem/MetadataFileService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 42
    iput-object p3, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mFileSystemHandler:Lcom/ironsource/sdk/fileSystem/FileSystemHandler;

    .line 43
    iput-object p4, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mMetadataFileService:Lcom/ironsource/sdk/fileSystem/MetadataFileService;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/fileSystem/FileSystemService;)Lcom/ironsource/sdk/fileSystem/MetadataFileService;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mMetadataFileService:Lcom/ironsource/sdk/fileSystem/MetadataFileService;

    return-object p0
.end method


# virtual methods
.method public deleteFile(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mMetadataFileService:Lcom/ironsource/sdk/fileSystem/MetadataFileService;

    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->deleteFileMetadata(Ljava/lang/String;)Z

    return-void

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to delete file"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteFolder(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getFilesInFolderRecursive(Lcom/ironsource/sdk/fileSystem/ISNFile;)Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mMetadataFileService:Lcom/ironsource/sdk/fileSystem/MetadataFileService;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->deleteFilesMetadata(Ljava/util/ArrayList;)Z

    return-void

    .line 113
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to delete folder"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFiles(Lcom/ironsource/sdk/fileSystem/ISNFile;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mMetadataFileService:Lcom/ironsource/sdk/fileSystem/MetadataFileService;

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->readContent()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildFilesMapOfDirectory(Lcom/ironsource/sdk/fileSystem/ISNFile;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Folder does not exist"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTotalSizeOfFiles(Lcom/ironsource/sdk/fileSystem/ISNFile;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getTotalSizeOfDir(Lcom/ironsource/sdk/fileSystem/ISNFile;)J

    move-result-wide v0

    return-wide v0

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Folder does not exist"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->getCacheRootDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 56
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/network/ConnectivityService;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mFileSystemHandler:Lcom/ironsource/sdk/fileSystem/FileSystemHandler;

    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ironsource/sdk/fileSystem/FileSystemService$1;

    invoke-direct {v2, p0, p3}, Lcom/ironsource/sdk/fileSystem/FileSystemService$1;-><init>(Lcom/ironsource/sdk/fileSystem/FileSystemService;Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/fileSystem/FileSystemHandler;->addListener(Ljava/lang/String;Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V

    .line 84
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 85
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 86
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x3f7

    .line 87
    iput p1, p2, Landroid/os/Message;->what:I

    .line 88
    iget-object p1, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mFileSystemHandler:Lcom/ironsource/sdk/fileSystem/FileSystemHandler;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/fileSystem/FileSystemHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 92
    :cond_0
    iget-object p3, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mFileSystemHandler:Lcom/ironsource/sdk/fileSystem/FileSystemHandler;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;Landroid/os/Handler;)V

    return-void

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "no_network_connection"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "sotrage_unavailable"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "no_disk_space"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for file"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateAttributesOfFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService;->mMetadataFileService:Lcom/ironsource/sdk/fileSystem/MetadataFileService;

    .line 143
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->updateFileMetadata(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to update attribute"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "File does not exist"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing attributes to update"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
