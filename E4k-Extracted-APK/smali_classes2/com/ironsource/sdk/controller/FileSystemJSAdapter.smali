.class Lcom/ironsource/sdk/controller/FileSystemJSAdapter;
.super Ljava/lang/Object;
.source "FileSystemJSAdapter.java"


# instance fields
.field private mCacheRootDirectory:Ljava/lang/String;

.field private mFileSystemService:Lcom/ironsource/sdk/fileSystem/FileSystemService;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ironsource/sdk/fileSystem/FileSystemService;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mCacheRootDirectory:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mFileSystemService:Lcom/ironsource/sdk/fileSystem/FileSystemService;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/FileSystemJSAdapter;Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/controller/FileSystemJSAdapter;Lcom/ironsource/sdk/controller/JSInterfaceMessage;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildErrorMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private buildErrorMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 151
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "errMsg"

    .line 152
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private buildISNFileFromJSParamsForDirectory(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/sdk/fileSystem/ISNFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "folderPath"

    .line 172
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "folderPath"

    .line 175
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    .line 177
    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for folder"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildISNFileFromJSParamsForFile(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/sdk/fileSystem/ISNFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "filePath"

    .line 160
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fileName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "filePath"

    .line 163
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileName"

    .line 164
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    new-instance v1, Lcom/ironsource/sdk/fileSystem/ISNFile;

    .line 166
    invoke-static {p2, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for file"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;J)Lorg/json/JSONObject;
    .locals 1

    .line 141
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "result"

    .line 142
    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private buildMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 131
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "result"

    .line 132
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private createDownloadListener(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lcom/ironsource/sdk/controller/JSMessageDispatcher;)Lcom/ironsource/sdk/precache/OnPreCacheCompletion;
    .locals 1

    .line 102
    new-instance v0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;-><init>(Lcom/ironsource/sdk/controller/FileSystemJSAdapter;Lcom/ironsource/sdk/controller/JSMessageDispatcher;Lcom/ironsource/sdk/controller/JSInterfaceMessage;)V

    return-object v0
.end method


# virtual methods
.method call(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;)V
    .locals 4

    .line 28
    new-instance v0, Lcom/ironsource/sdk/controller/JSInterfaceMessage;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/controller/JSInterfaceMessage;-><init>(Lorg/json/JSONObject;)V

    .line 29
    new-instance p1, Lcom/ironsource/sdk/controller/JSMessageDispatcher;

    invoke-direct {p1, p2}, Lcom/ironsource/sdk/controller/JSMessageDispatcher;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;)V

    .line 31
    :try_start_0
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->getName()Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/JSInterfaceMessage;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, -0x1

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "getFiles"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "deleteFile"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "updateAttributesOfFile"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v3, "getTotalSizeOfFiles"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v3, "deleteFolder"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "saveFile"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 82
    :pswitch_0
    iget-object p2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mCacheRootDirectory:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildISNFileFromJSParamsForFile(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object p2

    const-string v2, "attributesToUpdate"

    .line 83
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mFileSystemService:Lcom/ironsource/sdk/fileSystem/FileSystemService;

    invoke-virtual {v2, p2, v1}, Lcom/ironsource/sdk/fileSystem/FileSystemService;->updateAttributesOfFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Lorg/json/JSONObject;)V

    .line 87
    invoke-virtual {p2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 85
    invoke-virtual {p1, v0, p2}, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->sendSuccessMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 73
    :pswitch_1
    iget-object p2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mCacheRootDirectory:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildISNFileFromJSParamsForDirectory(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object p2

    .line 74
    iget-object v1, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mFileSystemService:Lcom/ironsource/sdk/fileSystem/FileSystemService;

    invoke-virtual {v1, p2}, Lcom/ironsource/sdk/fileSystem/FileSystemService;->getTotalSizeOfFiles(Lcom/ironsource/sdk/fileSystem/ISNFile;)J

    move-result-wide v1

    .line 77
    invoke-direct {p0, v0, v1, v2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;J)Lorg/json/JSONObject;

    move-result-object p2

    .line 75
    invoke-virtual {p1, v0, p2}, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->sendSuccessMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 64
    :pswitch_2
    iget-object p2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mCacheRootDirectory:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildISNFileFromJSParamsForDirectory(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object p2

    .line 65
    iget-object v1, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mFileSystemService:Lcom/ironsource/sdk/fileSystem/FileSystemService;

    invoke-virtual {v1, p2}, Lcom/ironsource/sdk/fileSystem/FileSystemService;->getFiles(Lcom/ironsource/sdk/fileSystem/ISNFile;)Lorg/json/JSONObject;

    move-result-object p2

    .line 68
    invoke-direct {p0, v0, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 66
    invoke-virtual {p1, v0, p2}, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->sendSuccessMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 55
    :pswitch_3
    iget-object p2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mCacheRootDirectory:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildISNFileFromJSParamsForDirectory(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object p2

    .line 56
    iget-object v1, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mFileSystemService:Lcom/ironsource/sdk/fileSystem/FileSystemService;

    invoke-virtual {v1, p2}, Lcom/ironsource/sdk/fileSystem/FileSystemService;->deleteFolder(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    .line 59
    invoke-virtual {p2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 57
    invoke-virtual {p1, v0, p2}, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->sendSuccessMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 46
    :pswitch_4
    iget-object p2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mCacheRootDirectory:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildISNFileFromJSParamsForFile(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object p2

    .line 47
    iget-object v1, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mFileSystemService:Lcom/ironsource/sdk/fileSystem/FileSystemService;

    invoke-virtual {v1, p2}, Lcom/ironsource/sdk/fileSystem/FileSystemService;->deleteFile(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    .line 50
    invoke-virtual {p2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 48
    invoke-virtual {p1, v0, p2}, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->sendSuccessMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 35
    :pswitch_5
    iget-object p2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mCacheRootDirectory:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildISNFileFromJSParamsForFile(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object p2

    const-string v2, "fileUrl"

    .line 36
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->createDownloadListener(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lcom/ironsource/sdk/controller/JSMessageDispatcher;)Lcom/ironsource/sdk/precache/OnPreCacheCompletion;

    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->mFileSystemService:Lcom/ironsource/sdk/fileSystem/FileSystemService;

    invoke-virtual {v3, p2, v1, v2}, Lcom/ironsource/sdk/fileSystem/FileSystemService;->saveFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 95
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->buildErrorMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 93
    invoke-virtual {p1, v0, p2}, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->sendFailureMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b8fdb67 -> :sswitch_5
        -0x43c59e07 -> :sswitch_4
        -0x12f60ecf -> :sswitch_3
        0x200a7713 -> :sswitch_2
        0x692721c7 -> :sswitch_1
        0x746c60c1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
