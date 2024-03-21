.class Lcom/ironsource/sdk/fileSystem/FileSystemService$1;
.super Ljava/lang/Object;
.source "FileSystemService.java"

# interfaces
.implements Lcom/ironsource/sdk/precache/OnPreCacheCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/fileSystem/FileSystemService;->saveFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/fileSystem/FileSystemService;

.field final synthetic val$saveFileListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/fileSystem/FileSystemService;Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService$1;->this$0:Lcom/ironsource/sdk/fileSystem/FileSystemService;

    iput-object p2, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService$1;->val$saveFileListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDownloadFail(Lcom/ironsource/sdk/fileSystem/ISNFile;Lcom/ironsource/sdk/data/ISNError;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService$1;->val$saveFileListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/sdk/precache/OnPreCacheCompletion;->onFileDownloadFail(Lcom/ironsource/sdk/fileSystem/ISNFile;Lcom/ironsource/sdk/data/ISNError;)V

    return-void
.end method

.method public onFileDownloadSuccess(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService$1;->val$saveFileListener:Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/precache/OnPreCacheCompletion;->onFileDownloadSuccess(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    .line 69
    :try_start_0
    new-instance v0, Lcom/ironsource/sdk/fileSystem/FileSystemService$1$1;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/fileSystem/FileSystemService$1$1;-><init>(Lcom/ironsource/sdk/fileSystem/FileSystemService$1;)V

    .line 72
    iget-object v1, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService$1;->this$0:Lcom/ironsource/sdk/fileSystem/FileSystemService;

    invoke-static {v1}, Lcom/ironsource/sdk/fileSystem/FileSystemService;->access$000(Lcom/ironsource/sdk/fileSystem/FileSystemService;)Lcom/ironsource/sdk/fileSystem/MetadataFileService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;->addFileMetadata(Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
