.class public Lcom/ironsource/sdk/fileSystem/FileSystemHandler;
.super Landroid/os/Handler;
.source "FileSystemHandler.java"


# instance fields
.field private final mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/precache/OnPreCacheCompletion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/fileSystem/FileSystemHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private isDownloadSuccess(I)Z
    .locals 1

    const/16 v0, 0x3f8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method addListener(Ljava/lang/String;Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 26
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 33
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    .line 34
    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/ironsource/sdk/fileSystem/FileSystemHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    if-nez v2, :cond_0

    return-void

    .line 40
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3}, Lcom/ironsource/sdk/fileSystem/FileSystemHandler;->isDownloadSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-interface {v2, v0}, Lcom/ironsource/sdk/precache/OnPreCacheCompletion;->onFileDownloadSuccess(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    goto :goto_0

    .line 43
    :cond_1
    new-instance v3, Lcom/ironsource/sdk/data/ISNError;

    iget v4, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/ironsource/sdk/precache/Utils;->convertErrorCodeToMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/ironsource/sdk/data/ISNError;-><init>(ILjava/lang/String;)V

    .line 44
    invoke-interface {v2, v0, v3}, Lcom/ironsource/sdk/precache/OnPreCacheCompletion;->onFileDownloadFail(Lcom/ironsource/sdk/fileSystem/ISNFile;Lcom/ironsource/sdk/data/ISNError;)V

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/ironsource/sdk/fileSystem/FileSystemHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
