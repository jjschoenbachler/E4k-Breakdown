.class public Lcom/ironsource/sdk/precache/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/precache/DownloadManager$Result;,
        Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;,
        Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;
    }
.end annotation


# static fields
.field public static final FILE_ALREADY_EXIST:Ljava/lang/String; = "file_already_exist"

.field private static final MESSAGE_EMPTY_URL:I = 0x3ef

.field static final MESSAGE_FILE_DOWNLOAD_SUCCESS:I = 0x3f8

.field static final MESSAGE_FILE_NOT_FOUND_EXCEPTION:I = 0x3fa

.field private static final MESSAGE_GENERAL_HTTP_ERROR_CODE:I = 0x3f3

.field private static final MESSAGE_HTTP_EMPTY_RESPONSE:I = 0x3ee

.field private static final MESSAGE_IO_EXCEPTION:I = 0x3f1

.field private static final MESSAGE_MALFORMED_URL_EXCEPTION:I = 0x3ec

.field static final MESSAGE_NUM_OF_BANNERS_TO_CACHE:I = 0x3f5

.field static final MESSAGE_OUT_OF_MEMORY_EXCEPTION:I = 0x3fb

.field private static final MESSAGE_SOCKET_TIMEOUT_EXCEPTION:I = 0x3f0

.field private static final MESSAGE_TMP_FILE_RENAME_FAILED:I = 0x3fc

.field private static final MESSAGE_URI_SYNTAX_EXCEPTION:I = 0x3f2

.field public static final NO_DISK_SPACE:Ljava/lang/String; = "no_disk_space"

.field public static final NO_NETWORK_CONNECTION:Ljava/lang/String; = "no_network_connection"

.field private static final OPERATION_TIMEOUT:I = 0x1388

.field public static final STORAGE_UNAVAILABLE:Ljava/lang/String; = "sotrage_unavailable"

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static final TEMP_DIR_FOR_FILES:Ljava/lang/String; = "temp"

.field private static final TEMP_PREFIX_FOR_FILES:Ljava/lang/String; = "tmp_"

.field private static mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;


# instance fields
.field private final mCacheRootDirectory:Ljava/lang/String;

.field private mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadHandler;

.field private mMobileControllerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->getBackgroundThreadLooper()Landroid/os/Looper;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/ironsource/sdk/precache/DownloadHandler;

    invoke-direct {p2, p1}, Lcom/ironsource/sdk/precache/DownloadHandler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadHandler;

    .line 73
    invoke-direct {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolder(Ljava/lang/String;)Z

    .line 74
    invoke-direct {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->makeDir(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getBytes(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    .line 87
    new-array v1, v1, [B

    .line 88
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 89
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 92
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)Lcom/ironsource/sdk/precache/DownloadManager;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/precache/DownloadManager;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/precache/DownloadManager;-><init>(Ljava/lang/String;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)V

    sput-object v1, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 81
    :cond_0
    sget-object p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v0

    throw p0
.end method

.method private getTempFilesDirectory()Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public downloadFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public downloadFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    .line 112
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;

    .line 116
    invoke-direct {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    .line 118
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public downloadMobileControllerFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;)V
    .locals 3

    .line 126
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadHandler;

    invoke-direct {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    .line 127
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    .line 128
    iget-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getCacheRootDirectory()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public isMobileControllerThreadLive()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    :try_start_0
    sput-object v0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 105
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadHandler;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadHandler;

    invoke-virtual {v1}, Lcom/ironsource/sdk/precache/DownloadHandler;->release()V

    .line 107
    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 103
    monitor-exit p0

    throw v0
.end method

.method public setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadHandler;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/precache/DownloadHandler;->setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V

    return-void
.end method
