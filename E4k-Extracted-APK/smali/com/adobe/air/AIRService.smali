.class public Lcom/adobe/air/AIRService;
.super Landroid/app/Service;
.source "AIRService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AIRService$DummyBinder;
    }
.end annotation


# static fields
.field public static final EXTRA_DOWNLOAD_TIME:Ljava/lang/String; = "com.adobe.air.DownloadConfigCompleteTime"

.field public static final INTENT_CONFIG_DOWNLOADED:Ljava/lang/String; = "com.adobe.air.DownloadConfigComplete"

.field public static final INTENT_DOWNLOAD_CONFIG:Ljava/lang/String; = "com.adobe.air.DownloadConfig"

.field private static final LOG_TAG:Ljava/lang/String; = "AIRService"

.field private static sServiceInstance:Lcom/adobe/air/AIRService;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mEntrypoints:Lcom/adobe/air/Entrypoints;

.field private mPlayerInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/adobe/air/AIRService;->mEntrypoints:Lcom/adobe/air/Entrypoints;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/adobe/air/AIRService;->mPlayerInitialized:Z

    .line 149
    new-instance v0, Lcom/adobe/air/AIRService$DummyBinder;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRService$DummyBinder;-><init>(Lcom/adobe/air/AIRService;)V

    iput-object v0, p0, Lcom/adobe/air/AIRService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public static IsRunningInServiceContext()Z
    .locals 1

    .line 138
    invoke-static {}, Lcom/adobe/air/AIRService;->getAIRService()Lcom/adobe/air/AIRService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private downloadConfig()V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/adobe/air/AIRService;->mPlayerInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/adobe/air/AIRService;->mPlayerInitialized:Z

    .line 109
    iget-object v0, p0, Lcom/adobe/air/AIRService;->mEntrypoints:Lcom/adobe/air/Entrypoints;

    invoke-virtual {p0}, Lcom/adobe/air/AIRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/Entrypoints;->EntryDownloadConfig(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRService;->downloadDone(Z)V

    :cond_0
    return-void
.end method

.method public static getAIRService()Lcom/adobe/air/AIRService;
    .locals 1

    .line 95
    sget-object v0, Lcom/adobe/air/AIRService;->sServiceInstance:Lcom/adobe/air/AIRService;

    return-object v0
.end method

.method private getEntrypoints()Lcom/adobe/air/Entrypoints;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/adobe/air/AIRService;->mEntrypoints:Lcom/adobe/air/Entrypoints;

    return-object v0
.end method


# virtual methods
.method public downloadDone(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 124
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.adobe.air.DownloadConfigComplete"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.adobe.air.DownloadConfigCompleteTime"

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRService;->stopSelf()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/adobe/air/AIRService;->getEntrypoints()Lcom/adobe/air/Entrypoints;

    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/adobe/air/AIRService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    new-instance v0, Lcom/adobe/air/Entrypoints;

    invoke-direct {v0}, Lcom/adobe/air/Entrypoints;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRService;->mEntrypoints:Lcom/adobe/air/Entrypoints;

    .line 50
    sput-object p0, Lcom/adobe/air/AIRService;->sServiceInstance:Lcom/adobe/air/AIRService;

    .line 51
    invoke-virtual {p0}, Lcom/adobe/air/AIRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->setRuntimePackageName(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/adobe/air/AIRService;->sServiceInstance:Lcom/adobe/air/AIRService;

    .line 60
    iget-boolean v0, p0, Lcom/adobe/air/AIRService;->mPlayerInitialized:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/adobe/air/AIRService;->mEntrypoints:Lcom/adobe/air/Entrypoints;

    invoke-virtual {v0}, Lcom/adobe/air/Entrypoints;->EntryStopRuntime()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/adobe/air/AIRService;->mPlayerInitialized:Z

    .line 67
    :cond_0
    invoke-static {}, Lcom/adobe/air/utils/Utils;->hasCaptiveRuntime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.adobe.air.DownloadConfig"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/adobe/air/AIRService;->downloadConfig()V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method
