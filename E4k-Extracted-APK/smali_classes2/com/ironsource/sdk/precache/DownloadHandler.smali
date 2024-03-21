.class public Lcom/ironsource/sdk/precache/DownloadHandler;
.super Landroid/os/Handler;
.source "DownloadHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadHandler"


# instance fields
.field mListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    if-nez v0, :cond_0

    const-string v0, "DownloadHandler"

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPreCacheCompletion listener is null, msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f8

    if-eq v0, v1, :cond_1

    .line 34
    new-instance v0, Lcom/ironsource/sdk/data/ISNError;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/ironsource/sdk/precache/Utils;->convertErrorCodeToMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/data/ISNError;-><init>(ILjava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ironsource/sdk/fileSystem/ISNFile;

    invoke-interface {v1, p1, v0}, Lcom/ironsource/sdk/precache/OnPreCacheCompletion;->onFileDownloadFail(Lcom/ironsource/sdk/fileSystem/ISNFile;Lcom/ironsource/sdk/data/ISNError;)V

    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ironsource/sdk/fileSystem/ISNFile;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/precache/OnPreCacheCompletion;->onFileDownloadSuccess(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DownloadHandler"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage | Got exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    return-void
.end method

.method public setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
