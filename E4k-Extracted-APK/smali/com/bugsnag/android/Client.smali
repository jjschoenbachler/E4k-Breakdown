.class public Lcom/bugsnag/android/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final appData:Lcom/bugsnag/android/AppData;

.field private final breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

.field private final config:Lcom/bugsnag/android/Configuration;

.field private final deviceData:Lcom/bugsnag/android/DeviceData;

.field private final errorStore:Lcom/bugsnag/android/ErrorStore;

.field private final user:Lcom/bugsnag/android/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bugsnag/android/User;

    invoke-direct {v0}, Lcom/bugsnag/android/User;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 69
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.bugsnag.android.API_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :try_start_1
    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.bugsnag.android.BUILD_UUID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, p2

    :catch_0
    move-object p2, v1

    goto :goto_0

    :catch_1
    nop

    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 79
    new-instance v0, Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, p2}, Lcom/bugsnag/android/Configuration;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    if-eqz p1, :cond_1

    .line 82
    iget-object p2, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, p2, Lcom/bugsnag/android/Configuration;->buildUUID:Ljava/lang/String;

    .line 86
    :cond_1
    new-instance p1, Lcom/bugsnag/android/AppData;

    iget-object p2, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {p1, p2, v0}, Lcom/bugsnag/android/AppData;-><init>(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    .line 87
    new-instance p1, Lcom/bugsnag/android/DeviceData;

    iget-object p2, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/bugsnag/android/DeviceData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    .line 88
    invoke-static {}, Lcom/bugsnag/android/AppState;->init()V

    .line 91
    new-instance p1, Lcom/bugsnag/android/Breadcrumbs;

    invoke-direct {p1}, Lcom/bugsnag/android/Breadcrumbs;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    const/4 p1, 0x1

    .line 94
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Client;->setProjectPackages([Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {p1}, Lcom/bugsnag/android/DeviceData;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Client;->setUserId(Ljava/lang/String;)V

    .line 98
    new-instance p1, Lcom/bugsnag/android/ErrorStore;

    iget-object p2, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lcom/bugsnag/android/ErrorStore;-><init>(Lcom/bugsnag/android/Configuration;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    if-eqz p3, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->enableExceptionHandler()V

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {p1}, Lcom/bugsnag/android/ErrorStore;->flush()V

    return-void

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "You must provide a Bugsnag API key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "You must provide a non-null android Context"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->deliver(Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V

    return-void
.end method

.method private deliver(Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V
    .locals 3

    .line 619
    :try_start_0
    invoke-virtual {p1}, Lcom/bugsnag/android/Notification;->deliver()I

    move-result p1

    const-string v0, "Sent %d new error(s) to Bugsnag"

    const/4 v1, 0x1

    .line 620
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bugsnag/android/AppData;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/bugsnag/android/HttpClient$NetworkException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bugsnag/android/HttpClient$BadResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Problem sending error to Bugsnag"

    .line 629
    invoke-static {p2, p1}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    const-string p1, "Bad response when sending data to Bugsnag"

    .line 627
    invoke-static {p1}, Lcom/bugsnag/android/AppData;->info(Ljava/lang/String;)V

    return-void

    :catch_2
    const-string p1, "Could not send error(s) to Bugsnag, saving to disk to send later"

    .line 622
    invoke-static {p1}, Lcom/bugsnag/android/AppData;->info(Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {p1, p2}, Lcom/bugsnag/android/ErrorStore;->write(Lcom/bugsnag/android/Error;)V

    return-void
.end method

.method private notify(Lcom/bugsnag/android/Error;Z)V
    .locals 3

    .line 573
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->shouldIgnoreClass()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v1}, Lcom/bugsnag/android/AppData;->getReleaseStage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setAppData(Lcom/bugsnag/android/AppData;)V

    .line 584
    iget-object v0, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setDeviceData(Lcom/bugsnag/android/DeviceData;)V

    .line 585
    new-instance v0, Lcom/bugsnag/android/AppState;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/AppState;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setAppState(Lcom/bugsnag/android/AppState;)V

    .line 586
    new-instance v0, Lcom/bugsnag/android/DeviceState;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/DeviceState;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setDeviceState(Lcom/bugsnag/android/DeviceState;)V

    .line 589
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setBreadcrumbs(Lcom/bugsnag/android/Breadcrumbs;)V

    .line 592
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setUser(Lcom/bugsnag/android/User;)V

    .line 595
    invoke-direct {p0, p1}, Lcom/bugsnag/android/Client;->runBeforeNotifyTasks(Lcom/bugsnag/android/Error;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "Skipping notification - beforeNotify task returned false"

    .line 596
    invoke-static {p1}, Lcom/bugsnag/android/AppData;->info(Ljava/lang/String;)V

    return-void

    .line 601
    :cond_3
    new-instance v0, Lcom/bugsnag/android/Notification;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/Notification;-><init>(Lcom/bugsnag/android/Configuration;)V

    .line 602
    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Notification;->addError(Lcom/bugsnag/android/Error;)V

    if-eqz p2, :cond_4

    .line 605
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->deliver(Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V

    return-void

    .line 608
    :cond_4
    new-instance p2, Lcom/bugsnag/android/Client$1;

    invoke-direct {p2, p0, v0, p1}, Lcom/bugsnag/android/Client$1;-><init>(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V

    invoke-static {p2}, Lcom/bugsnag/android/Async;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runBeforeNotifyTasks(Lcom/bugsnag/android/Error;)Z
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bugsnag/android/BeforeNotify;

    .line 636
    :try_start_0
    invoke-interface {v1, p1}, Lcom/bugsnag/android/BeforeNotify;->run(Lcom/bugsnag/android/Error;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception v1

    const-string v2, "BeforeNotify threw an Exception"

    .line 640
    invoke-static {v2, v1}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v0}, Lcom/bugsnag/android/Breadcrumbs;->clear()V

    return-void
.end method

.method public clearTab(Ljava/lang/String;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/MetaData;->clearTab(Ljava/lang/String;)V

    return-void
.end method

.method public disableExceptionHandler()V
    .locals 0

    .line 568
    invoke-static {p0}, Lcom/bugsnag/android/ExceptionHandler;->disable(Lcom/bugsnag/android/Client;)V

    return-void
.end method

.method public enableExceptionHandler()V
    .locals 0

    .line 561
    invoke-static {p0}, Lcom/bugsnag/android/ExceptionHandler;->enable(Lcom/bugsnag/android/Client;)V

    return-void
.end method

.method public getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    return-object v0
.end method

.method public leaveBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Breadcrumbs;->add(Ljava/lang/String;)V

    return-void
.end method

.method public notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .line 458
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 459
    invoke-virtual {v0, p5}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 460
    invoke-virtual {v0, p6}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 461
    invoke-virtual {v0, p3}, Lcom/bugsnag/android/Error;->setContext(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 462
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .line 423
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 424
    invoke-virtual {v0, p4}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 425
    invoke-virtual {v0, p5}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    const/4 p1, 0x0

    .line 426
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/Throwable;)V
    .locals 2

    .line 317
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 318
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .line 365
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 366
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    const/4 p1, 0x0

    .line 367
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V
    .locals 2

    .line 339
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 340
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    const/4 p1, 0x0

    .line 341
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .line 391
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 392
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 393
    invoke-virtual {v0, p3}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    const/4 p1, 0x0

    .line 394
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .line 477
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 478
    invoke-virtual {v0, p5}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 479
    invoke-virtual {v0, p6}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 480
    invoke-virtual {v0, p3}, Lcom/bugsnag/android/Error;->setContext(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 481
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .line 440
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 441
    invoke-virtual {v0, p4}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 442
    invoke-virtual {v0, p5}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    const/4 p1, 0x1

    .line 443
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;)V
    .locals 2

    .line 327
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 328
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .line 377
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 378
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    const/4 p1, 0x1

    .line 379
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V
    .locals 2

    .line 352
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 353
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    const/4 p1, 0x1

    .line 354
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .line 406
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 407
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 408
    invoke-virtual {v0, p3}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    const/4 p1, 0x1

    .line 409
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setBuildUUID(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->buildUUID:Ljava/lang/String;

    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->context:Ljava/lang/String;

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public varargs setFilters([Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->filters:[Ljava/lang/String;

    return-void
.end method

.method public varargs setIgnoreClasses([Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->ignoreClasses:[Ljava/lang/String;

    return-void
.end method

.method public setMaxBreadcrumbs(I)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Breadcrumbs;->setSize(I)V

    return-void
.end method

.method public setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    return-void
.end method

.method public varargs setNotifyReleaseStages([Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    return-void
.end method

.method public varargs setProjectPackages([Ljava/lang/String;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    return-void
.end method

.method public setReleaseStage(Ljava/lang/String;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->releaseStage:Ljava/lang/String;

    return-void
.end method

.method public setSendThreads(Z)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-boolean p1, v0, Lcom/bugsnag/android/Configuration;->sendThreads:Z

    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {p1, p2}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {p1, p3}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    return-void
.end method
