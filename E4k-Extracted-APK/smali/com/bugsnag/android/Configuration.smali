.class final Lcom/bugsnag/android/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field apiKey:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field beforeNotifyTasks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/BeforeNotify;",
            ">;"
        }
    .end annotation
.end field

.field buildUUID:Ljava/lang/String;

.field context:Ljava/lang/String;

.field endpoint:Ljava/lang/String;

.field filters:[Ljava/lang/String;

.field ignoreClasses:[Ljava/lang/String;

.field metaData:Lcom/bugsnag/android/MetaData;

.field notifyReleaseStages:[Ljava/lang/String;

.field projectPackages:[Ljava/lang/String;

.field releaseStage:Ljava/lang/String;

.field sendThreads:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://notify.bugsnag.com"

    .line 19
    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    const-string v0, "password"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->filters:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/bugsnag/android/Configuration;->sendThreads:Z

    .line 27
    new-instance v0, Lcom/bugsnag/android/MetaData;

    invoke-direct {v0}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    .line 31
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->apiKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final inProject(Ljava/lang/String;)Z
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
