.class public Lcom/ironsource/sdk/controller/ControllerManager;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Lcom/ironsource/sdk/controller/ControllerEventListener;
.implements Lcom/ironsource/sdk/controller/IronSourceController;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

.field private mController:Lcom/ironsource/sdk/controller/IronSourceController;

.field private final mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

.field private mControllerReadyTimer:Landroid/os/CountDownTimer;

.field private mControllerState:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

.field private final mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/service/TokenService;Lcom/ironsource/sdk/controller/DemandSourceManager;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->TAG:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->None:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerState:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    .line 57
    new-instance v0, Lcom/ironsource/sdk/controller/CommandExecutor;

    const-string v1, "NativeCommandExecutor"

    invoke-direct {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    .line 58
    new-instance v0, Lcom/ironsource/sdk/controller/CommandExecutor;

    const-string v1, "ControllerCommandsExecutor"

    invoke-direct {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    .line 59
    iput-object p5, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/ControllerManager;->createController(Landroid/content/Context;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/service/TokenService;Lcom/ironsource/sdk/controller/DemandSourceManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/ControllerManager;)Lcom/ironsource/sdk/controller/IronSourceController;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ironsource/sdk/controller/ControllerManager;Lcom/ironsource/sdk/controller/IronSourceController;)Lcom/ironsource/sdk/controller/IronSourceController;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/controller/ControllerManager;Landroid/content/Context;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/service/TokenService;Lcom/ironsource/sdk/controller/DemandSourceManager;)Lcom/ironsource/sdk/controller/WebController;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/ControllerManager;->createWebController(Landroid/content/Context;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/service/TokenService;Lcom/ironsource/sdk/controller/DemandSourceManager;)Lcom/ironsource/sdk/controller/WebController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/ControllerManager;->createNativeController(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/controller/ControllerManager;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private createController(Landroid/content/Context;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/service/TokenService;Lcom/ironsource/sdk/controller/DemandSourceManager;)V
    .locals 7

    .line 83
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getNetworkStorageDir(Landroid/content/Context;)Ljava/lang/String;

    .line 85
    new-instance v6, Lcom/ironsource/sdk/controller/ControllerManager$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/ControllerManager$1;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Landroid/content/Context;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/service/TokenService;Lcom/ironsource/sdk/controller/DemandSourceManager;)V

    invoke-virtual {p0, v6}, Lcom/ironsource/sdk/controller/ControllerManager;->postOnUIThread(Ljava/lang/Runnable;)V

    .line 98
    new-instance p1, Lcom/ironsource/sdk/controller/ControllerManager$2;

    const-wide/32 v2, 0x30d40

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/ControllerManager$2;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;JJ)V

    .line 112
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/ControllerManager$2;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private createNativeController(Ljava/lang/String;)V
    .locals 3

    .line 151
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->createControllerNative:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    new-instance v1, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v2, "callfailreason"

    .line 153
    invoke-virtual {v1, v2, p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    .line 154
    new-instance v0, Lcom/ironsource/sdk/controller/NativeController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    invoke-direct {v0, p1, v1}, Lcom/ironsource/sdk/controller/NativeController;-><init>(Ljava/lang/String;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    .line 156
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/CommandExecutor;->setReady()V

    .line 157
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/CommandExecutor;->purgeDelayedCommands()V

    .line 159
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    new-instance v0, Lcom/ironsource/sdk/controller/ControllerManager$3;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerManager$3;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private createWebController(Landroid/content/Context;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/service/TokenService;Lcom/ironsource/sdk/controller/DemandSourceManager;)Lcom/ironsource/sdk/controller/WebController;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->createControllerWeb:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-static {v0}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;)V

    .line 122
    new-instance v0, Lcom/ironsource/sdk/controller/WebController;

    iget-object v6, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/WebController;-><init>(Landroid/content/Context;Lcom/ironsource/sdk/controller/DemandSourceManager;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/controller/ControllerEventListener;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)V

    .line 130
    new-instance p4, Lcom/ironsource/sdk/fileSystem/FileSystemService;

    .line 132
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v1

    new-instance v2, Lcom/ironsource/sdk/fileSystem/FileSystemHandler;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    .line 133
    invoke-virtual {v3}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->getBackgroundThreadLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/sdk/fileSystem/FileSystemHandler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/ironsource/sdk/fileSystem/MetadataFileService;

    .line 134
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/sdk/precache/DownloadManager;->getCacheRootDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ironsource/sdk/fileSystem/MetadataFileService;-><init>(Ljava/lang/String;)V

    invoke-direct {p4, p1, v1, v2, v3}, Lcom/ironsource/sdk/fileSystem/FileSystemService;-><init>(Landroid/content/Context;Lcom/ironsource/sdk/precache/DownloadManager;Lcom/ironsource/sdk/fileSystem/FileSystemHandler;Lcom/ironsource/sdk/fileSystem/MetadataFileService;)V

    .line 137
    new-instance v1, Lcom/ironsource/sdk/controller/TokenJSAdapter;

    invoke-direct {v1, p1, p3}, Lcom/ironsource/sdk/controller/TokenJSAdapter;-><init>(Landroid/content/Context;Lcom/ironsource/sdk/service/TokenService;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->addTokenJSInterface(Lcom/ironsource/sdk/controller/TokenJSAdapter;)V

    .line 138
    new-instance p3, Lcom/ironsource/sdk/controller/OMIDJSAdapter;

    invoke-direct {p3, p1}, Lcom/ironsource/sdk/controller/OMIDJSAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/ironsource/sdk/controller/WebController;->addOmidJSInterface(Lcom/ironsource/sdk/controller/OMIDJSAdapter;)V

    .line 139
    new-instance p3, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    invoke-direct {p3, p1}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/ironsource/sdk/controller/WebController;->addPermissionsJSInterface(Lcom/ironsource/sdk/controller/PermissionsJSAdapter;)V

    .line 140
    new-instance p3, Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;

    invoke-direct {p3, p1}, Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/ironsource/sdk/controller/WebController;->addDeviceDataJSInterface(Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;)V

    .line 141
    new-instance p1, Lcom/ironsource/sdk/controller/AdViewsJSAdapter;

    invoke-direct {p1, p2}, Lcom/ironsource/sdk/controller/AdViewsJSAdapter;-><init>(Lcom/ironsource/sdk/controller/ContextProvider;)V

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->addAdViewsJSInterface(Lcom/ironsource/sdk/controller/AdViewsJSAdapter;)V

    .line 142
    new-instance p1, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;

    .line 143
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/sdk/precache/DownloadManager;->getCacheRootDirectory()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p4}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;-><init>(Ljava/lang/String;Lcom/ironsource/sdk/fileSystem/FileSystemService;)V

    .line 142
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->addFileSystemJSInterface(Lcom/ironsource/sdk/controller/FileSystemJSAdapter;)V

    return-object v0
.end method

.method private handleReadyState()V
    .locals 1

    .line 204
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerState:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    .line 206
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/CommandExecutor;->setReady()V

    .line 213
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/CommandExecutor;->purgeDelayedCommands()V

    .line 216
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/IronSourceController;->restoreSavedState()V

    :cond_1
    return-void
.end method

.method private isControllerStateReady()Z
    .locals 2

    .line 170
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerState:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private reportInitSDKFailedToCaller(Ljava/lang/String;)V
    .locals 3

    .line 258
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->getInitListener()Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v1, Lcom/ironsource/sdk/data/ISNError;

    const/16 v2, 0x3e9

    invoke-direct {v1, v2, p1}, Lcom/ironsource/sdk/data/ISNError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;->onFail(Lcom/ironsource/sdk/data/ISNError;)V

    const/4 p1, 0x0

    .line 267
    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetwork;->setInitListener(Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;)V

    :cond_0
    return-void
.end method

.method private reportInitSDKSuccessToCaller()V
    .locals 1

    .line 222
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->getInitListener()Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;->onSuccess()V

    const/4 v0, 0x0

    .line 225
    invoke-static {v0}, Lcom/ironsource/sdk/IronSourceNetwork;->setInitListener(Lcom/ironsource/sdk/listeners/OnNetworkSDKInitListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 545
    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    .line 547
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerManager$19;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerManager$19;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerManager;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enterBackground()V
    .locals 1

    .line 515
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerManager;->isControllerStateReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/IronSourceController;->enterBackground()V

    :cond_0
    return-void
.end method

.method public enterForeground()V
    .locals 1

    .line 506
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerManager;->isControllerStateReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/IronSourceController;->enterForeground()V

    :cond_0
    return-void
.end method

.method public executeCommand(Ljava/lang/Runnable;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getController()Lcom/ironsource/sdk/controller/IronSourceController;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/ControllerManager$6;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getType()Lcom/ironsource/sdk/data/ISNEnums$ControllerType;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/IronSourceController;->getType()Lcom/ironsource/sdk/data/ISNEnums$ControllerType;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerType;->None:Lcom/ironsource/sdk/data/ISNEnums$ControllerType;

    :goto_0
    return-object v0
.end method

.method public handleControllerFailed(Ljava/lang/String;)V
    .locals 3

    .line 231
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->controllerFailed:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    new-instance v1, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v2, "callfailreason"

    .line 232
    invoke-virtual {v1, v2, p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/ControllerManager;->reportInitSDKFailedToCaller(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/ControllerManager;->createNativeController(Ljava/lang/String;)V

    return-void
.end method

.method public handleControllerLoaded()V
    .locals 1

    .line 179
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->Loaded:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerState:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    .line 181
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/CommandExecutor;->setReady()V

    .line 182
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/CommandExecutor;->purgeDelayedCommands()V

    return-void
.end method

.method public handleControllerReady()V
    .locals 2

    .line 187
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerType;->Web:Lcom/ironsource/sdk/data/ISNEnums$ControllerType;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerManager;->getType()Lcom/ironsource/sdk/data/ISNEnums$ControllerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/ISNEnums$ControllerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->controllerStageReady:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-static {v0}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;)V

    .line 193
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerManager;->reportInitSDKSuccessToCaller()V

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerManager;->handleReadyState()V

    return-void
.end method

.method public handleOnRenderProcessGone(Ljava/lang/String;)V
    .locals 3

    .line 245
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->webViewCrashRenderProcessGone:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    new-instance v1, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v2, "generalmessage"

    .line 247
    invoke-virtual {v1, v2, p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    .line 250
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerReadyTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/ControllerManager;->createNativeController(Ljava/lang/String;)V

    return-void
.end method

.method public initBanner(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 8

    .line 444
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v7, Lcom/ironsource/sdk/controller/ControllerManager$14;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/ControllerManager$14;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 8

    .line 354
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v7, Lcom/ironsource/sdk/controller/ControllerManager$9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/ControllerManager$9;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v7, Lcom/ironsource/sdk/controller/ControllerManager$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/ControllerManager$4;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .locals 8

    .line 325
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v7, Lcom/ironsource/sdk/controller/ControllerManager$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/ControllerManager$7;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerManager;->isControllerStateReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceController;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadBanner(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerManager$15;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadBannerForBidding(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/internals/DSBannerListener;",
            ")V"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/ControllerManager$17;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadController()V
    .locals 0

    return-void
.end method

.method public loadInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;",
            ")V"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/ControllerManager$11;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadInterstitial(Ljava/lang/String;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerManager$10;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method postOnUIThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "mThreadManager = null"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .locals 1

    .line 524
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerManager;->isControllerStateReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceController;->registerConnectionReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public requestToDestroyBanner()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$16;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/ControllerManager$16;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public restoreSavedState()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public showInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;",
            ")V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/ControllerManager$13;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerManager$12;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerManager$5;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerManager$8;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .locals 1

    .line 533
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerManager;->isControllerStateReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceController;->unregisterConnectionReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public updateConsentInfo(Lorg/json/JSONObject;)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager;->mControllerCommandsExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/controller/ControllerManager$18;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/ControllerManager$18;-><init>(Lcom/ironsource/sdk/controller/ControllerManager;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method
