.class Lcom/ironsource/sdk/controller/ControllerHtmlFile;
.super Ljava/lang/Object;
.source "ControllerHtmlFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;,
        Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;
    }
.end annotation


# static fields
.field private static final CONTROLLER_SOURCE_CODE:Ljava/lang/String; = "controllerSourceCode"

.field static final CONTROLLER_SOURCE_DATA:Ljava/lang/String; = "controllerSourceData"

.field private static final FALLBACK_PREFIX_FOR_FILES:Ljava/lang/String; = "fallback_"

.field private static final NEXT_PREFIX_FOR_FILES:Ljava/lang/String; = "next_"


# instance fields
.field private mCacheRootDir:Ljava/lang/String;

.field private mControllerSourceStrategy:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

.field private mControllerSourceStrategyCode:I

.field private mControllerUrl:Ljava/lang/String;

.field private mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

.field private mLoadControllerStartTime:J

.field private mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/precache/DownloadManager;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->NONE:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    const-string v0, "controllerSourceStrategy"

    const/4 v1, -0x1

    .line 45
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategyCode:I

    .line 46
    iget p1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategyCode:I

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getSourceStrategyByCode(I)Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategy:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    .line 47
    iput-object p2, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerUrl:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/ControllerHtmlFile;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategyCode:I

    return p0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/controller/ControllerHtmlFile;)Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    return-object p0
.end method

.method private createControllerFromFallback()Z
    .locals 3

    const/4 v0, 0x0

    .line 257
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->isFallbackControllerExists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getFallbackController()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getControllerToLoad()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0
.end method

.method private createControllerFromPreviousSession()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getFileForNextSession()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getControllerToLoad()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createFallbackController()V
    .locals 3

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getControllerToLoad()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getFallbackController()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {v1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->delete()Z

    .line 244
    :cond_1
    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private deleteFallbackController()V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getFallbackController()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Lcom/ironsource/sdk/fileSystem/ISNFile;)Z

    return-void
.end method

.method private deleteLastUsedController()V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getControllerToLoad()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Lcom/ironsource/sdk/fileSystem/ISNFile;)Z

    return-void
.end method

.method private downloadController(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->isMobileControllerThreadLive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadMobileControllerFile(Lcom/ironsource/sdk/fileSystem/ISNFile;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getFallbackController()Lcom/ironsource/sdk/fileSystem/ISNFile;
    .locals 3

    .line 195
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    const-string v2, "fallback_mobileController.html"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFileForNextSession()Lcom/ironsource/sdk/fileSystem/ISNFile;
    .locals 3

    .line 191
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    const-string v2, "next_mobileController.html"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSourceStrategyByCode(I)Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 59
    sget-object p1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FROM_SERVER_NO_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    return-object p1

    .line 57
    :pswitch_0
    sget-object p1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    return-object p1

    .line 55
    :pswitch_1
    sget-object p1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isFallbackControllerExists()Z
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getFallbackController()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v0

    return v0
.end method

.method private sendControllerHtmlFailedEvent()V
    .locals 6

    .line 210
    new-instance v0, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v0}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v1, "generalmessage"

    iget v2, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategyCode:I

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v0

    .line 213
    iget-wide v1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadControllerStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v1, "timingvalue"

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadControllerStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    .line 217
    :cond_0
    sget-object v1, Lcom/ironsource/sdk/Events/SDK5Events;->controllerHtmlFailed:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {v0}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    return-void
.end method

.method private sendControllerHtmlSuccessEvent(Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;)V
    .locals 5

    .line 221
    new-instance v0, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v0}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v1, "generalmessage"

    iget v2, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategyCode:I

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v0

    const-string v1, "controllersource"

    .line 223
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p1

    .line 225
    iget-wide v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadControllerStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-string v0, "timingvalue"

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadControllerStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    .line 229
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->controllerHtmlSuccess:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method getControllerSourceData()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 269
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$1;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$1;-><init>(Lcom/ironsource/sdk/controller/ControllerHtmlFile;)V

    return-object v0
.end method

.method getControllerToLoad()Lcom/ironsource/sdk/fileSystem/ISNFile;
    .locals 3

    .line 187
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    const-string v2, "mobileController.html"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method handleDownloadFailed(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->wasControllerLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategy:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    if-ne v0, v1, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->createControllerFromFallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    sget-object p2, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->FALLBACK_CONTROLLER_RECOVERY:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 87
    iget-object p2, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->sendControllerHtmlSuccessEvent(Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;)V

    .line 88
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->sendControllerHtmlFailedEvent()V

    .line 93
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method handleDownloadSuccess(Ljava/lang/Runnable;)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->wasControllerLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategy:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    if-ne v0, v1, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->deleteFallbackController()V

    .line 74
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->CONTROLLER_FROM_SERVER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 75
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->sendControllerHtmlSuccessEvent(Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;)V

    .line 76
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method prepareControllerFile()Z
    .locals 5

    .line 98
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$2;->$SwitchMap$com$ironsource$sdk$controller$ControllerHtmlFile$ControllerSourceStrategy:[I

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategy:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 114
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getControllerToLoad()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v0

    .line 115
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getFileForNextSession()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->downloadController(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    return v1

    .line 126
    :cond_0
    invoke-virtual {v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/ironsource/sdk/fileSystem/ISNFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 129
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->sendControllerHtmlSuccessEvent(Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;)V

    .line 131
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->downloadController(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    return v4

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->createFallbackController()V

    .line 138
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->createControllerFromPreviousSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->PREPARED_CONTROLLER_LOADED:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 142
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->sendControllerHtmlSuccessEvent(Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;)V

    .line 144
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->deleteFallbackController()V

    .line 146
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->downloadController(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    return v4

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->createControllerFromFallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 154
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->sendControllerHtmlSuccessEvent(Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;)V

    .line 156
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->downloadController(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    return v4

    .line 163
    :cond_3
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->downloadController(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 107
    :pswitch_1
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->createFallbackController()V

    .line 108
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->downloadController(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    return v1

    .line 101
    :pswitch_2
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->deleteLastUsedController()V

    .line 102
    new-instance v0, Lcom/ironsource/sdk/fileSystem/ISNFile;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mCacheRootDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ironsource/sdk/fileSystem/ISNFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->downloadController(Lcom/ironsource/sdk/fileSystem/ISNFile;)V

    return v1

    :catch_0
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendLoadControllerHtmlEvent(Lcom/ironsource/sdk/Events/ISNEventParams;)V
    .locals 2

    const-string v0, "generalmessage"

    .line 203
    iget v1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mControllerSourceStrategyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    .line 205
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->loadControllerHtml:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadControllerStartTime:J

    return-void
.end method

.method wasControllerLoaded()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->mLoadedControllerSource:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->NONE:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
