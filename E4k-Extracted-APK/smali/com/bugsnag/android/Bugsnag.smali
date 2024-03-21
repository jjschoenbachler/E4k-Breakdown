.class public final Lcom/bugsnag/android/Bugsnag;
.super Ljava/lang/Object;
.source "Bugsnag.java"


# static fields
.field private static client:Lcom/bugsnag/android/Client;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 335
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V
    .locals 1

    .line 247
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V

    return-void
.end method

.method public static clearTab(Ljava/lang/String;)V
    .locals 1

    .line 344
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->clearTab(Ljava/lang/String;)V

    return-void
.end method

.method public static enableExceptionHandler()V
    .locals 1

    .line 398
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->enableExceptionHandler()V

    return-void
.end method

.method public static getClient()Lcom/bugsnag/android/Client;
    .locals 2

    .line 412
    sget-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    return-object v0

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Bugsnag.init before any other Bugsnag methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .line 353
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/bugsnag/android/Client;
    .locals 1

    .line 24
    new-instance v0, Lcom/bugsnag/android/Client;

    invoke-direct {v0, p0}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;)V

    .line 25
    sput-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Lcom/bugsnag/android/Client;
    .locals 1

    .line 35
    new-instance v0, Lcom/bugsnag/android/Client;

    invoke-direct {v0, p0, p1}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    sput-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)Lcom/bugsnag/android/Client;
    .locals 1

    .line 47
    new-instance v0, Lcom/bugsnag/android/Client;

    invoke-direct {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 48
    sput-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    return-object v0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .line 372
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->leaveBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method public static notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 7

    .line 318
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V

    return-void
.end method

.method public static notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 6

    .line 303
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V

    return-void
.end method

.method public static notify(Ljava/lang/Throwable;)V
    .locals 1

    .line 256
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .line 277
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V

    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V
    .locals 1

    .line 267
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V

    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .line 289
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V

    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setBuildUUID(Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setBuildUUID(Ljava/lang/String;)V

    return-void
.end method

.method public static setContext(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setContext(Ljava/lang/String;)V

    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs setFilters([Ljava/lang/String;)V
    .locals 1

    .line 110
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setFilters([Ljava/lang/String;)V

    return-void
.end method

.method public static varargs setIgnoreClasses([Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setIgnoreClasses([Ljava/lang/String;)V

    return-void
.end method

.method public static setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .line 362
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    return-void
.end method

.method public static varargs setNotifyReleaseStages([Ljava/lang/String;)V
    .locals 1

    .line 138
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setNotifyReleaseStages([Ljava/lang/String;)V

    return-void
.end method

.method public static varargs setProjectPackages([Ljava/lang/String;)V
    .locals 1

    .line 154
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setProjectPackages([Ljava/lang/String;)V

    return-void
.end method

.method public static setReleaseStage(Ljava/lang/String;)V
    .locals 1

    .line 166
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setReleaseStage(Ljava/lang/String;)V

    return-void
.end method

.method public static setSendThreads(Z)V
    .locals 1

    .line 176
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setSendThreads(Z)V

    return-void
.end method

.method public static setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 192
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserEmail(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    .line 203
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 1

    .line 223
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clearBreadcrumbs()V
    .locals 1

    .line 390
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->clearBreadcrumbs()V

    return-void
.end method

.method public final disableExceptionHandler()V
    .locals 1

    .line 405
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->disableExceptionHandler()V

    return-void
.end method

.method public final setMaxBreadcrumbs(I)V
    .locals 1

    .line 383
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Client;->setMaxBreadcrumbs(I)V

    return-void
.end method
